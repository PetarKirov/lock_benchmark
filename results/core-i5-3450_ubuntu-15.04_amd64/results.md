# Compiled with:
dub build --force -brelease --compiler=dmd --verbose

## Stats
 + Thread count: 12
 + Increments count: 150000
 + Repetitions count: 20
 + Total time: 15 minutes, 27 secs, 23 ms, and 106 μs

## Results chart:
[![Chart](https://github.com/ZombineDev/lock_benchmark/blob/master/results/core-i5-3450_ubuntu-15.04_amd64/results.png)](http://jsfiddle.net/k7hkxy5o)

## Results raw:
+ TC: 12, Stack cas_default custom_spin_lock_manual: [], total time: 15887.9
+ TC: 11, Stack cas_default custom_spin_lock_manual: [], total time: 12796.7
+ TC: 10, Stack cas_default custom_spin_lock_manual: [], total time: 10715.6
+ TC:  9, Stack cas_default custom_spin_lock_manual: [], total time: 8842.77
+ TC:  8, Stack cas_default custom_spin_lock_manual: [], total time: 7213.27
+ TC:  7, Stack cas_default custom_spin_lock_manual: [], total time: 5372.03
+ TC:  6, Stack cas_default custom_spin_lock_manual: [], total time: 4030.45
+ TC:  5, Stack cas_default custom_spin_lock_manual: [], total time: 2987.41
+ TC:  4, Stack cas_default custom_spin_lock_manual: [], total time: 2103.7
+ TC:  3, Stack cas_default custom_spin_lock_manual: [], total time: 1217.13
+ TC:  2, Stack cas_default custom_spin_lock_manual: [], total time: 556.612
+ TC:  1, Stack cas_default custom_spin_lock_manual: [], total time: 52.3751

+ TC: 12,  Heap cas_default custom_spin_lock_manual: [], total time: 11074
+ TC: 11,  Heap cas_default custom_spin_lock_manual: [], total time: 8886.85
+ TC: 10,  Heap cas_default custom_spin_lock_manual: [], total time: 7144.74
+ TC:  9,  Heap cas_default custom_spin_lock_manual: [], total time: 6202.45
+ TC:  8,  Heap cas_default custom_spin_lock_manual: [], total time: 4947.73
+ TC:  7,  Heap cas_default custom_spin_lock_manual: [], total time: 3908.52
+ TC:  6,  Heap cas_default custom_spin_lock_manual: [], total time: 3167.64
+ TC:  5,  Heap cas_default custom_spin_lock_manual: [], total time: 2255.65
+ TC:  4,  Heap cas_default custom_spin_lock_manual: [], total time: 1592
+ TC:  3,  Heap cas_default custom_spin_lock_manual: [], total time: 997.487
+ TC:  2,  Heap cas_default custom_spin_lock_manual: [], total time: 612.087
+ TC:  1,  Heap cas_default custom_spin_lock_manual: [], total time: 77.0364

+ TC: 12, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 13248.3
+ TC: 11, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 10887
+ TC: 10, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 8877.09
+ TC:  9, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 7035.23
+ TC:  8, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 6036.47
+ TC:  7, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 4583.77
+ TC:  6, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 3609.52
+ TC:  5, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 2401.11
+ TC:  4, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 1667.86
+ TC:  3, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 970.466
+ TC:  2, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 359.606
+ TC:  1, Stack cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 34.8473

+ TC: 12,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 5058.12
+ TC: 11,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 5026.72
+ TC: 10,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 3963.3
+ TC:  9,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 3514.42
+ TC:  8,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 2720.54
+ TC:  7,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 2316.86
+ TC:  6,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 1806.29
+ TC:  5,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 1433.36
+ TC:  4,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 1130.94
+ TC:  3,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 919.799
+ TC:  2,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 261.049
+ TC:  1,  Heap cas_mo_rel_unlock custom_spin_lock_manual: [], total time: 34.3455

+ TC: 12, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 16537.6
+ TC: 11, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 14169.8
+ TC: 10, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 11641
+ TC:  9, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 9515.15
+ TC:  8, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 7779.89
+ TC:  7, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 5770.02
+ TC:  6, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 4349.53
+ TC:  5, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 3035.76
+ TC:  4, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 2067.33
+ TC:  3, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 1047.54
+ TC:  2, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 569.557
+ TC:  1, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 41.797

+ TC: 12,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 10890.6
+ TC: 11,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 9356.75
+ TC: 10,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 7504.12
+ TC:  9,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 5813.68
+ TC:  8,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 4606.63
+ TC:  7,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 3836.94
+ TC:  6,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 2686.21
+ TC:  5,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 2084.95
+ TC:  4,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 1395.75
+ TC:  3,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 946.066
+ TC:  2,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 458.555
+ TC:  1,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_manual: [], total time: 39.8402

+ TC: 12, Stack       posix custom_spin_lock_manual: [], total time: 4547.63
+ TC: 11, Stack       posix custom_spin_lock_manual: [], total time: 4000.04
+ TC: 10, Stack       posix custom_spin_lock_manual: [], total time: 3316.24
+ TC:  9, Stack       posix custom_spin_lock_manual: [], total time: 2651.67
+ TC:  8, Stack       posix custom_spin_lock_manual: [], total time: 2251.31
+ TC:  7, Stack       posix custom_spin_lock_manual: [], total time: 1574.86
+ TC:  6, Stack       posix custom_spin_lock_manual: [], total time: 1197.43
+ TC:  5, Stack       posix custom_spin_lock_manual: [], total time: 932.044
+ TC:  4, Stack       posix custom_spin_lock_manual: [], total time: 667.943
+ TC:  3, Stack       posix custom_spin_lock_manual: [], total time: 442.65
+ TC:  2, Stack       posix custom_spin_lock_manual: [], total time: 158.964
+ TC:  1, Stack       posix custom_spin_lock_manual: [], total time: 22.9885

+ TC: 12,  Heap       posix custom_spin_lock_manual: [], total time: 4485.91
+ TC: 11,  Heap       posix custom_spin_lock_manual: [], total time: 3833.38
+ TC: 10,  Heap       posix custom_spin_lock_manual: [], total time: 2977.9
+ TC:  9,  Heap       posix custom_spin_lock_manual: [], total time: 2613.01
+ TC:  8,  Heap       posix custom_spin_lock_manual: [], total time: 1978.12
+ TC:  7,  Heap       posix custom_spin_lock_manual: [], total time: 1530.24
+ TC:  6,  Heap       posix custom_spin_lock_manual: [], total time: 1212.35
+ TC:  5,  Heap       posix custom_spin_lock_manual: [], total time: 896.543
+ TC:  4,  Heap       posix custom_spin_lock_manual: [], total time: 672.677
+ TC:  3,  Heap       posix custom_spin_lock_manual: [], total time: 482.23
+ TC:  2,  Heap       posix custom_spin_lock_manual: [], total time: 168.729
+ TC:  1,  Heap       posix custom_spin_lock_manual: [], total time: 23.0704

+ TC: 12, Stack      broken custom_spin_lock_manual: [], total time: 382.103
+ TC: 11, Stack      broken custom_spin_lock_manual: [], total time: 343.671
+ TC: 10, Stack      broken custom_spin_lock_manual: [], total time: 308.323
+ TC:  9, Stack      broken custom_spin_lock_manual: [], total time: 276.787
+ TC:  8, Stack      broken custom_spin_lock_manual: [], total time: 242.425
+ TC:  7, Stack      broken custom_spin_lock_manual: [], total time: 212.848
+ TC:  6, Stack      broken custom_spin_lock_manual: [], total time: 170.229
+ TC:  5, Stack      broken custom_spin_lock_manual: [], total time: 141.388
+ TC:  4, Stack      broken custom_spin_lock_manual: [], total time: 123.123
+ TC:  3, Stack      broken custom_spin_lock_manual: [], total time: 90.2396
+ TC:  2, Stack      broken custom_spin_lock_manual: [], total time: 52.7779
+ TC:  1, Stack      broken custom_spin_lock_manual: [], total time: 6.08568

+ TC: 12,  Heap      broken custom_spin_lock_manual: [], total time: 823.322
+ TC: 11,  Heap      broken custom_spin_lock_manual: [], total time: 753.083
+ TC: 10,  Heap      broken custom_spin_lock_manual: [], total time: 673.701
+ TC:  9,  Heap      broken custom_spin_lock_manual: [], total time: 627.532
+ TC:  8,  Heap      broken custom_spin_lock_manual: [], total time: 534.401
+ TC:  7,  Heap      broken custom_spin_lock_manual: [], total time: 469.535
+ TC:  6,  Heap      broken custom_spin_lock_manual: [], total time: 390.813
+ TC:  5,  Heap      broken custom_spin_lock_manual: [], total time: 312.626
+ TC:  4,  Heap      broken custom_spin_lock_manual: [], total time: 269.813
+ TC:  3,  Heap      broken custom_spin_lock_manual: [], total time: 200.702
+ TC:  2,  Heap      broken custom_spin_lock_manual: [], total time: 120.075
+ TC:  1,  Heap      broken custom_spin_lock_manual: [], total time: 6.96444

+ TC: 12, Stack cas_default custom_spin_lock_raii: [], total time: 15321
+ TC: 11, Stack cas_default custom_spin_lock_raii: [], total time: 12996.3
+ TC: 10, Stack cas_default custom_spin_lock_raii: [], total time: 10139.9
+ TC:  9, Stack cas_default custom_spin_lock_raii: [], total time: 8666.16
+ TC:  8, Stack cas_default custom_spin_lock_raii: [], total time: 6793.69
+ TC:  7, Stack cas_default custom_spin_lock_raii: [], total time: 5323.61
+ TC:  6, Stack cas_default custom_spin_lock_raii: [], total time: 4068.54
+ TC:  5, Stack cas_default custom_spin_lock_raii: [], total time: 2876.3
+ TC:  4, Stack cas_default custom_spin_lock_raii: [], total time: 2046.92
+ TC:  3, Stack cas_default custom_spin_lock_raii: [], total time: 1272.43
+ TC:  2, Stack cas_default custom_spin_lock_raii: [], total time: 522.464
+ TC:  1, Stack cas_default custom_spin_lock_raii: [], total time: 69.8468

+ TC: 12,  Heap cas_default custom_spin_lock_raii: [], total time: 10777.9
+ TC: 11,  Heap cas_default custom_spin_lock_raii: [], total time: 9243.74
+ TC: 10,  Heap cas_default custom_spin_lock_raii: [], total time: 7690.76
+ TC:  9,  Heap cas_default custom_spin_lock_raii: [], total time: 6295.33
+ TC:  8,  Heap cas_default custom_spin_lock_raii: [], total time: 5506.23
+ TC:  7,  Heap cas_default custom_spin_lock_raii: [], total time: 4227.1
+ TC:  6,  Heap cas_default custom_spin_lock_raii: [], total time: 3106.35
+ TC:  5,  Heap cas_default custom_spin_lock_raii: [], total time: 2338.78
+ TC:  4,  Heap cas_default custom_spin_lock_raii: [], total time: 1597.03
+ TC:  3,  Heap cas_default custom_spin_lock_raii: [], total time: 1038.82
+ TC:  2,  Heap cas_default custom_spin_lock_raii: [], total time: 514.314
+ TC:  1,  Heap cas_default custom_spin_lock_raii: [], total time: 98.8275

+ TC: 12, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 13453.2
+ TC: 11, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 11573.2
+ TC: 10, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 9088.92
+ TC:  9, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 7242.2
+ TC:  8, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 5816.3
+ TC:  7, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 4642.34
+ TC:  6, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 3430.99
+ TC:  5, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 2481.19
+ TC:  4, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 1747.48
+ TC:  3, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 1037.86
+ TC:  2, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 463.563
+ TC:  1, Stack cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 48.5728

+ TC: 12,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 11956.7
+ TC: 11,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 10177.7
+ TC: 10,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 8264.8
+ TC:  9,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 6767.55
+ TC:  8,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 5188.47
+ TC:  7,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 4336.53
+ TC:  6,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 3067.65
+ TC:  5,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 2295.09
+ TC:  4,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 1600.5
+ TC:  3,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 948.864
+ TC:  2,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 464.668
+ TC:  1,  Heap cas_mo_rel_unlock custom_spin_lock_raii: [], total time: 52.1504

+ TC: 12, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 17005.4
+ TC: 11, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 13880.1
+ TC: 10, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 10810.1
+ TC:  9, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 9124.31
+ TC:  8, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 7412.18
+ TC:  7, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 5538.55
+ TC:  6, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 4205.06
+ TC:  5, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 2907.41
+ TC:  4, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 2133.11
+ TC:  3, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 1091.31
+ TC:  2, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 612.066
+ TC:  1, Stack cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 51.4063

+ TC: 12,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 11911.2
+ TC: 11,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 9914.84
+ TC: 10,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 7350.87
+ TC:  9,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 6379.25
+ TC:  8,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 5099.07
+ TC:  7,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 4016.5
+ TC:  6,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 3119.71
+ TC:  5,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 2159.96
+ TC:  4,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 1586.62
+ TC:  3,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 967.785
+ TC:  2,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 452.908
+ TC:  1,  Heap cas_pause_lock_and_mo_rel_unlock custom_spin_lock_raii: [], total time: 63.0148

+ TC: 12, Stack       posix custom_spin_lock_raii: [], total time: 3414.9
+ TC: 11, Stack       posix custom_spin_lock_raii: [], total time: 3189.25
+ TC: 10, Stack       posix custom_spin_lock_raii: [], total time: 2554.33
+ TC:  9, Stack       posix custom_spin_lock_raii: [], total time: 2218.69
+ TC:  8, Stack       posix custom_spin_lock_raii: [], total time: 1907.9
+ TC:  7, Stack       posix custom_spin_lock_raii: [], total time: 1512.84
+ TC:  6, Stack       posix custom_spin_lock_raii: [], total time: 1264.56
+ TC:  5, Stack       posix custom_spin_lock_raii: [], total time: 1083.5
+ TC:  4, Stack       posix custom_spin_lock_raii: [], total time: 870.885
+ TC:  3, Stack       posix custom_spin_lock_raii: [], total time: 391.871
+ TC:  2, Stack       posix custom_spin_lock_raii: [], total time: 231.174
+ TC:  1, Stack       posix custom_spin_lock_raii: [], total time: 36.9117

+ TC: 12,  Heap       posix custom_spin_lock_raii: [], total time: 3137.46
+ TC: 11,  Heap       posix custom_spin_lock_raii: [], total time: 2548.71
+ TC: 10,  Heap       posix custom_spin_lock_raii: [], total time: 2480.29
+ TC:  9,  Heap       posix custom_spin_lock_raii: [], total time: 2240.18
+ TC:  8,  Heap       posix custom_spin_lock_raii: [], total time: 1974.59
+ TC:  7,  Heap       posix custom_spin_lock_raii: [], total time: 1426.77
+ TC:  6,  Heap       posix custom_spin_lock_raii: [], total time: 1256.96
+ TC:  5,  Heap       posix custom_spin_lock_raii: [], total time: 1047.49
+ TC:  4,  Heap       posix custom_spin_lock_raii: [], total time: 847.478
+ TC:  3,  Heap       posix custom_spin_lock_raii: [], total time: 699.548
+ TC:  2,  Heap       posix custom_spin_lock_raii: [], total time: 138.099
+ TC:  1,  Heap       posix custom_spin_lock_raii: [], total time: 37.4865

+ TC: 12, Stack      broken custom_spin_lock_raii: [], total time: 705.305
+ TC: 11, Stack      broken custom_spin_lock_raii: [], total time: 645.96
+ TC: 10, Stack      broken custom_spin_lock_raii: [], total time: 587.065
+ TC:  9, Stack      broken custom_spin_lock_raii: [], total time: 529.633
+ TC:  8, Stack      broken custom_spin_lock_raii: [], total time: 469.058
+ TC:  7, Stack      broken custom_spin_lock_raii: [], total time: 405.752
+ TC:  6, Stack      broken custom_spin_lock_raii: [], total time: 352.008
+ TC:  5, Stack      broken custom_spin_lock_raii: [], total time: 287.598
+ TC:  4, Stack      broken custom_spin_lock_raii: [], total time: 239.461
+ TC:  3, Stack      broken custom_spin_lock_raii: [], total time: 172.468
+ TC:  2, Stack      broken custom_spin_lock_raii: [], total time: 117.382
+ TC:  1, Stack      broken custom_spin_lock_raii: [], total time: 29.6669

+ TC: 12,  Heap      broken custom_spin_lock_raii: [], total time: 1043.56
+ TC: 11,  Heap      broken custom_spin_lock_raii: [], total time: 959.381
+ TC: 10,  Heap      broken custom_spin_lock_raii: [], total time: 867.991
+ TC:  9,  Heap      broken custom_spin_lock_raii: [], total time: 768.938
+ TC:  8,  Heap      broken custom_spin_lock_raii: [], total time: 694.86
+ TC:  7,  Heap      broken custom_spin_lock_raii: [], total time: 598.695
+ TC:  6,  Heap      broken custom_spin_lock_raii: [], total time: 497.403
+ TC:  5,  Heap      broken custom_spin_lock_raii: [], total time: 397.64
+ TC:  4,  Heap      broken custom_spin_lock_raii: [], total time: 331.791
+ TC:  3,  Heap      broken custom_spin_lock_raii: [], total time: 229.726
+ TC:  2,  Heap      broken custom_spin_lock_raii: [], total time: 132.084
+ TC:  1,  Heap      broken custom_spin_lock_raii: [], total time: 29.478

+ TC: 12, d_synchronized_stmt_only: [], total time: 3474.27
+ TC: 11, d_synchronized_stmt_only: [], total time: 3188.54
+ TC: 10, d_synchronized_stmt_only: [], total time: 2898.92
+ TC:  9, d_synchronized_stmt_only: [], total time: 2622.63
+ TC:  8, d_synchronized_stmt_only: [], total time: 2328.11
+ TC:  7, d_synchronized_stmt_only: [], total time: 2035.61
+ TC:  6, d_synchronized_stmt_only: [], total time: 1739.67
+ TC:  5, d_synchronized_stmt_only: [], total time: 1410.4
+ TC:  4, d_synchronized_stmt_only: [], total time: 1079.61
+ TC:  3, d_synchronized_stmt_only: [], total time: 1500.73
+ TC:  2, d_synchronized_stmt_only: [], total time: 766.269
+ TC:  1, d_synchronized_stmt_only: [], total time: 70.0793

+ TC: 12, d_synchronized_stmt_global_mutex: [], total time: 4087.32
+ TC: 11, d_synchronized_stmt_global_mutex: [], total time: 3744.35
+ TC: 10, d_synchronized_stmt_global_mutex: [], total time: 3416.85
+ TC:  9, d_synchronized_stmt_global_mutex: [], total time: 3069.65
+ TC:  8, d_synchronized_stmt_global_mutex: [], total time: 2751.42
+ TC:  7, d_synchronized_stmt_global_mutex: [], total time: 2402.64
+ TC:  6, d_synchronized_stmt_global_mutex: [], total time: 2035.07
+ TC:  5, d_synchronized_stmt_global_mutex: [], total time: 1622.81
+ TC:  4, d_synchronized_stmt_global_mutex: [], total time: 1194.31
+ TC:  3, d_synchronized_stmt_global_mutex: [], total time: 1235.84
+ TC:  2, d_synchronized_stmt_global_mutex: [], total time: 694.661
+ TC:  1, d_synchronized_stmt_global_mutex: [], total time: 79.8722

+ TC: 12, global_pthread_mutex_test: [], total time: 3177.62
+ TC: 11, global_pthread_mutex_test: [], total time: 2910.65
+ TC: 10, global_pthread_mutex_test: [], total time: 2655.98
+ TC:  9, global_pthread_mutex_test: [], total time: 2383.42
+ TC:  8, global_pthread_mutex_test: [], total time: 2121.25
+ TC:  7, global_pthread_mutex_test: [], total time: 1858.26
+ TC:  6, global_pthread_mutex_test: [], total time: 1586.72
+ TC:  5, global_pthread_mutex_test: [], total time: 1281.04
+ TC:  4, global_pthread_mutex_test: [], total time: 984.709
+ TC:  3, global_pthread_mutex_test: [], total time: 1303.54
+ TC:  2, global_pthread_mutex_test: [], total time: 742.816
+ TC:  1, global_pthread_mutex_test: [], total time: 79.9866

+ TC: 12, global_pthread_spinlock_test: [], total time: 7323.76
+ TC: 11, global_pthread_spinlock_test: [], total time: 6673.49
+ TC: 10, global_pthread_spinlock_test: [], total time: 5349
+ TC:  9, global_pthread_spinlock_test: [], total time: 4496.62
+ TC:  8, global_pthread_spinlock_test: [], total time: 3648.27
+ TC:  7, global_pthread_spinlock_test: [], total time: 2600.34
+ TC:  6, global_pthread_spinlock_test: [], total time: 2300.37
+ TC:  5, global_pthread_spinlock_test: [], total time: 1553.7
+ TC:  4, global_pthread_spinlock_test: [], total time: 953.239
+ TC:  3, global_pthread_spinlock_test: [], total time: 577.554
+ TC:  2, global_pthread_spinlock_test: [], total time: 303.08
+ TC:  1, global_pthread_spinlock_test: [], total time: 22.9491

+ TC: 12,            atomic_inc: [], total time: 3129.74
+ TC: 11,            atomic_inc: [], total time: 2845.78
+ TC: 10,            atomic_inc: [], total time: 2581.29
+ TC:  9,            atomic_inc: [], total time: 2310.38
+ TC:  8,            atomic_inc: [], total time: 2030.71
+ TC:  7,            atomic_inc: [], total time: 1778.69
+ TC:  6,            atomic_inc: [], total time: 1494.41
+ TC:  5,            atomic_inc: [], total time: 1247.86
+ TC:  4,            atomic_inc: [], total time: 1004.04
+ TC:  3,            atomic_inc: [], total time: 647.579
+ TC:  2,            atomic_inc: [], total time: 354.172
+ TC:  1,            atomic_inc: [], total time: 38.2551

+ TC: 12,            unsafe_inc: [], total time: 42.9119
+ TC: 11,            unsafe_inc: [], total time: 40.936
+ TC: 10,            unsafe_inc: [], total time: 38.1462
+ TC:  9,            unsafe_inc: [], total time: 33.0071
+ TC:  8,            unsafe_inc: [], total time: 27.5915
+ TC:  7,            unsafe_inc: [], total time: 21.8781
+ TC:  6,            unsafe_inc: [], total time: 20.9466
+ TC:  5,            unsafe_inc: [], total time: 17.2953
+ TC:  4,            unsafe_inc: [], total time: 9.25706
+ TC:  3,            unsafe_inc: [], total time: 9.4245
+ TC:  2,            unsafe_inc: [], total time: 7.55925
+ TC:  1,            unsafe_inc: [], total time: 6.58749
