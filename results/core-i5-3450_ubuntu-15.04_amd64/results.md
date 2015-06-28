# Compiled with:
dub build --force -brelease_O5 --compiler=dmd --verbose

## Time
 + Start time: 2015-Jun-28 15:43:38.421941
 + End time: 2015-Jun-28 15:45:21.603475
 + Total time: 1 minute, 43 secs, 181 ms, and 534 μs

## Results chart:
![alt text](https://github.com/ZombineDev/lock_benchmark/blob/master/results/core-i5-3450_ubuntu-15.04_amd64/results.png "Chart")


## Results raw:
+ TC:  5, Stack cas_default custom_spin_lock_manual: [], total time: 2849.14
+ TC:  4, Stack cas_default custom_spin_lock_manual: [], total time: 1907.16
+ TC:  3, Stack cas_default custom_spin_lock_manual: [], total time: 1112.69
+ TC:  2, Stack cas_default custom_spin_lock_manual: [], total time: 461.574
+ TC:  1, Stack cas_default custom_spin_lock_manual: [], total time: 52.6343
 
+ TC:  5,  Heap cas_default custom_spin_lock_manual: [], total time: 2281.37
+ TC:  4,  Heap cas_default custom_spin_lock_manual: [], total time: 1599.66
+ TC:  3,  Heap cas_default custom_spin_lock_manual: [], total time: 1003.83
+ TC:  2,  Heap cas_default custom_spin_lock_manual: [], total time: 521.174
+ TC:  1,  Heap cas_default custom_spin_lock_manual: [], total time: 52.6893
 
+ TC:  5, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 2404.18
+ TC:  4, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 1609.27
+ TC:  3, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 811.068
+ TC:  2, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 271.12
+ TC:  1, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 34.924
 
+ TC:  5,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 2216.45
+ TC:  4,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 1416.09
+ TC:  3,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 949.602
+ TC:  2,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 500.148
+ TC:  1,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 36.1724
 
+ TC:  5, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 2767.82
+ TC:  4, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 2076.05
+ TC:  3, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 1069.53
+ TC:  2, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 537.135
+ TC:  1, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 46.3668
 
+ TC:  5,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 2118.81
+ TC:  4,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 1586.36
+ TC:  3,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 957.727
+ TC:  2,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 412.978
+ TC:  1,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 40.7434

+ TC:  5, Stack       posix custom_spin_lock_manual: [], total time: 806.396
+ TC:  4, Stack       posix custom_spin_lock_manual: [], total time: 623.48
+ TC:  3, Stack       posix custom_spin_lock_manual: [], total time: 436.53
+ TC:  2, Stack       posix custom_spin_lock_manual: [], total time: 185.064
+ TC:  1, Stack       posix custom_spin_lock_manual: [], total time: 24.0016

+ TC:  5,  Heap       posix custom_spin_lock_manual: [], total time: 824.423
+ TC:  4,  Heap       posix custom_spin_lock_manual: [], total time: 624.781
+ TC:  3,  Heap       posix custom_spin_lock_manual: [], total time: 438.072
+ TC:  2,  Heap       posix custom_spin_lock_manual: [], total time: 252.704
+ TC:  1,  Heap       posix custom_spin_lock_manual: [], total time: 23.3227

+ TC:  5, Stack      broken custom_spin_lock_manual: [], total time: 146.353
+ TC:  4, Stack      broken custom_spin_lock_manual: [], total time: 105.887
+ TC:  3, Stack      broken custom_spin_lock_manual: [], total time: 75.5817
+ TC:  2, Stack      broken custom_spin_lock_manual: [], total time: 47.8892
+ TC:  1, Stack      broken custom_spin_lock_manual: [], total time: 7.16328

+ TC:  5,  Heap      broken custom_spin_lock_manual: [], total time: 308.2
+ TC:  4,  Heap      broken custom_spin_lock_manual: [], total time: 262.615
+ TC:  3,  Heap      broken custom_spin_lock_manual: [], total time: 198.913
+ TC:  2,  Heap      broken custom_spin_lock_manual: [], total time: 127.081
+ TC:  1,  Heap      broken custom_spin_lock_manual: [], total time: 6.56745

+ TC:  5, Stack cas_default custom_spin_lock_raii: [], total time: 2820.56
+ TC:  4, Stack cas_default custom_spin_lock_raii: [], total time: 1911.01
+ TC:  3, Stack cas_default custom_spin_lock_raii: [], total time: 1231.96
+ TC:  2, Stack cas_default custom_spin_lock_raii: [], total time: 506.116
+ TC:  1, Stack cas_default custom_spin_lock_raii: [], total time: 70.8552

+ TC:  5,  Heap cas_default custom_spin_lock_raii: [], total time: 2312.4
+ TC:  4,  Heap cas_default custom_spin_lock_raii: [], total time: 1657.87
+ TC:  3,  Heap cas_default custom_spin_lock_raii: [], total time: 1059.47
+ TC:  2,  Heap cas_default custom_spin_lock_raii: [], total time: 533.161
+ TC:  1,  Heap cas_default custom_spin_lock_raii: [], total time: 86.4074

+ TC:  5, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 2676.28
+ TC:  4, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 1778.6
+ TC:  3, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 995.672
+ TC:  2, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 486.324
+ TC:  1, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 49.2595

+ TC:  5,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 2271.59
+ TC:  4,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 1618.61
+ TC:  3,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 1033.63
+ TC:  2,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 527.023
+ TC:  1,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 73.4555

+ TC:  5, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 3059.97
+ TC:  4, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 2212.03
+ TC:  3, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 1156.87
+ TC:  2, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 628.603
+ TC:  1, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 64.0179

+ TC:  5,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 2195.74
+ TC:  4,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 1647.48
+ TC:  3,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 967.075
+ TC:  2,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 438.26
+ TC:  1,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 51.4213

+ TC:  5, Stack       posix custom_spin_lock_raii: [], total time: 1085.01
+ TC:  4, Stack       posix custom_spin_lock_raii: [], total time: 910.136
+ TC:  3, Stack       posix custom_spin_lock_raii: [], total time: 744.515
+ TC:  2, Stack       posix custom_spin_lock_raii: [], total time: 143.649
+ TC:  1, Stack       posix custom_spin_lock_raii: [], total time: 53.0911

+ TC:  5,  Heap       posix custom_spin_lock_raii: [], total time: 1097.15
+ TC:  4,  Heap       posix custom_spin_lock_raii: [], total time: 894.058
+ TC:  3,  Heap       posix custom_spin_lock_raii: [], total time: 402.026
+ TC:  2,  Heap       posix custom_spin_lock_raii: [], total time: 200.573
+ TC:  1,  Heap       posix custom_spin_lock_raii: [], total time: 36.979

+ TC:  5, Stack      broken custom_spin_lock_raii: [], total time: 278.039
+ TC:  4, Stack      broken custom_spin_lock_raii: [], total time: 225.883
+ TC:  3, Stack      broken custom_spin_lock_raii: [], total time: 166.649
+ TC:  2, Stack      broken custom_spin_lock_raii: [], total time: 107.622
+ TC:  1, Stack      broken custom_spin_lock_raii: [], total time: 33.1247

+ TC:  5,  Heap      broken custom_spin_lock_raii: [], total time: 429.439
+ TC:  4,  Heap      broken custom_spin_lock_raii: [], total time: 364.743
+ TC:  3,  Heap      broken custom_spin_lock_raii: [], total time: 258.605
+ TC:  2,  Heap      broken custom_spin_lock_raii: [], total time: 143.067
+ TC:  1,  Heap      broken custom_spin_lock_raii: [], total time: 29.1403

+ TC:  5, d_synchronized_stmt_only: [], total time: 1433.62
+ TC:  4, d_synchronized_stmt_only: [], total time: 1090.05
+ TC:  3, d_synchronized_stmt_only: [], total time: 1415
+ TC:  2, d_synchronized_stmt_only: [], total time: 795.229
+ TC:  1, d_synchronized_stmt_only: [], total time: 71.4652

+ TC:  5, d_synchronized_stmt_global_mutex: [], total time: 1626.26
+ TC:  4, d_synchronized_stmt_global_mutex: [], total time: 1191.23
+ TC:  3, d_synchronized_stmt_global_mutex: [], total time: 1164.16
+ TC:  2, d_synchronized_stmt_global_mutex: [], total time: 740.658
+ TC:  1, d_synchronized_stmt_global_mutex: [], total time: 105.333

+ TC:  5, global_pthread_mutex_test: [], total time: 1320.74
+ TC:  4, global_pthread_mutex_test: [], total time: 976.098
+ TC:  3, global_pthread_mutex_test: [], total time: 1316.77
+ TC:  2, global_pthread_mutex_test: [], total time: 724.487
+ TC:  1, global_pthread_mutex_test: [], total time: 64.6989

+ TC:  5, global_pthread_spinlock_test: [], total time: 1238.44
+ TC:  4, global_pthread_spinlock_test: [], total time: 904.102
+ TC:  3, global_pthread_spinlock_test: [], total time: 547.379
+ TC:  2, global_pthread_spinlock_test: [], total time: 286.002
+ TC:  1, global_pthread_spinlock_test: [], total time: 23.2261

+ TC:  5,            atomic_inc: [], total time: 1214.81
+ TC:  4,            atomic_inc: [], total time: 970.932
+ TC:  3,            atomic_inc: [], total time: 606.675
+ TC:  2,            atomic_inc: [], total time: 301.85
+ TC:  1,            atomic_inc: [], total time: 38.711

+ TC:  5,            unsafe_inc: [], total time: 16.2305
+ TC:  4,            unsafe_inc: [], total time: 13.3563
+ TC:  3,            unsafe_inc: [], total time: 8.29892
+ TC:  2,            unsafe_inc: [], total time: 7.16792
+ TC:  1,            unsafe_inc: [], total time: 6.20912
