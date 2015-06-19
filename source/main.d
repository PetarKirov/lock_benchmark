﻿module main;

import std.stdio, std.concurrency, core.thread : thread_joinAll;
import core.atomic, core.sync.mutex, core.sys.posix.pthread;
import test_imports;

import std.conv : to;
import std.datetime : benchmark;
import std.string : format;
import std.json;
import std.traits : EnumMembers;
import std.typecons : staticIota;

enum LockPlacement
{
    Stack,
    Heap,
}

struct Resource(LockPlacement lockPlacement, LockMechanism mechanism)
{
    static if (lockPlacement == LockPlacement.Stack)
    {
        shared SpinLock!mechanism lock;
    }
    else static if (lockPlacement == LockPlacement.Heap)
    {
        shared SpinLock!mechanism* lock = new shared SpinLock!mechanism();
    }

    int special_resource;

    auto obtainLock() shared
    {
        static if (lockPlacement == LockPlacement.Stack)
            return lockGuard(&lock);
        else static if (lockPlacement == LockPlacement.Heap)
            return lockGuard(lock);
    }

    ~this() shared
    {
        //writefln("Resource destr from: 0x%x", getCurrentThreadId);
    }
}

enum SyncApproach
{
    custom_spin_lock_manual,
    custom_spin_lock_raii,

    d_synchronized_stmt_only,
    d_synchronized_stmt_global_mutex,
    global_pthread_mutex_test,
    global_pthread_spinlock_test,

    atomic_inc,
    unsafe_inc
}
__gshared Mutex my_own_mutex;
__gshared pthread_spinlock_t p_spin_lock;
__gshared pthread_mutex_t p_mutex;

shared static this()
{
    my_own_mutex = new Mutex();
    pthread_spin_init(&p_spin_lock, 0);
    pthread_mutex_init(&p_mutex, null);
}

void testWith(SyncApproach approach, LockPlacement placement, LockMechanism mechanism)
    (ushort threadCount = 12, size_t increments_count = 150_000)
{
    alias ResObj = Resource!(placement, mechanism);

    shared ResObj r; r.lock.initialize();
    shared bool start_flag = false;

    foreach(_; 0 .. threadCount)
    {
        auto id = spawn(
            &testBody!(approach, ResObj),
            &r, &start_flag, increments_count);
    }

    start_flag = true;
    
    thread_joinAll();
    
    //"%6s  ".writef(r.special_resource);
    r.special_resource = 0;
}

void testBody(SyncApproach approach, T)
    (shared T* r, shared bool* start_flag, size_t increments_count)
{
    while (!start_flag) { }
    
    foreach (_; 0 .. increments_count)
    {
        static if (approach == SyncApproach.d_synchronized_stmt_only)
        {
            synchronized { (cast()r.special_resource)++; }
        }
        else static if (approach == SyncApproach.d_synchronized_stmt_global_mutex)
        {
            synchronized (my_own_mutex) { (cast()r.special_resource)++; }
        }
        else static if (approach == SyncApproach.global_pthread_mutex_test)
        {
            pthread_mutex_lock(&p_mutex);
            (cast()r.special_resource)++;
            pthread_mutex_unlock(&p_mutex);
        }
        else static if (approach == SyncApproach.global_pthread_spinlock_test)
        {
            pthread_spin_lock(&p_spin_lock);
            (cast()r.special_resource)++;
            pthread_spin_unlock(&p_spin_lock);
        }
        
        else static if (approach == SyncApproach.custom_spin_lock_manual)
        {
            r.lock.lock();
            (cast()r.special_resource)++;
            r.lock.unlock();
        }
        else static if (approach == SyncApproach.custom_spin_lock_raii)
        {
            auto l = r.obtainLock();
            (cast()r.special_resource)++;
        }
        else static if (approach == SyncApproach.unsafe_inc)
        {
            (cast()r.special_resource)++;
        }
        else static if (approach == SyncApproach.atomic_inc)
        {
            atomicOp!"+="(r.special_resource, 1);
        }
    }
}

void main()
{
    // writefln("Hello, from main thread: 0x%x", getCurrentThreadId);

    ushort test_thread_count = 12;
    size_t test_increments_count = 150_000;
    uint test_repetitions_count = 20;

    JSONValue series = new JSONValue[0];

    foreach (approach; EnumMembers!SyncApproach)
    {
        enum is_custom_approach = 
            approach == SyncApproach.custom_spin_lock_manual ||
            approach == SyncApproach.custom_spin_lock_raii;

        foreach (mechanism; EnumMembers!LockMechanism)
        {
            foreach (placement; EnumMembers!LockPlacement)
            {
                JSONValue[string] aa;
                
                aa["name"] = is_custom_approach? 
                    "%s %s %s".format(placement, mechanism, approach):
                    "%s".format(approach);

                aa["data"] = new JSONValue[0];
                JSONValue serie = aa;
                
                foreach_reverse (ushort curr_thread_count; 1 .. test_thread_count + 1)
                {
                    if (is_custom_approach)
                        "TC: %2s, %5s %11s %21s: [".writef(curr_thread_count, placement, mechanism, approach);
                    else
                        "TC: %2s, %21s: [".writef(curr_thread_count, approach);
                    
                    auto result = benchmark!( {
                            testWith!(approach, placement, mechanism)
                                (curr_thread_count, test_increments_count);
                        })(test_repetitions_count);
                    
                    serie["data"].array ~= JSONValue(result[0].to!("msecs", double)());
                    
                    "], total time: %s".writefln(result[0].to!("msecs", double));
                }
                
                series.array ~= serie;
                
                writeln();

                static if (!is_custom_approach) break;
            }

            static if (!is_custom_approach) break;
        }
    }

    writeln(series.toPrettyString());

    //readln();
}