# Notes: Struct

* All elements in a struct can be accessed in parallel
  * no matter whether the struct contain an array
    * all elements in that array can be accessed in parallel
  * same case when the struct contain individual elements

* Example 1: struct contain an array, access them concurrently
  * without array_partition it
```
template<const int total_len>
void reduction(hls::stream<float_struct>& s_struct, hls::stream<float>& s_result) {
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1

        float_struct local_fc = s_struct.read();
//    #pragma HLS array_partition variable=local_fc.items dim=1 complete

        float result = 
            local_fc.items[0] + local_fc.items[1] + 
            local_fc.items[2] + local_fc.items[3] + 
            local_fc.items[4] + local_fc.items[5] + 
            local_fc.items[6] + local_fc.items[7] + 
            local_fc.items[8] + local_fc.items[9] + 
            local_fc.items[10] + local_fc.items[11] + 
            local_fc.items[12] + local_fc.items[13] + 
            local_fc.items[14] + local_fc.items[15];
        
        s_result.write(result);
    }
}
```

  * Report of Example 1 (loop 1024 times): II=1
    * although the depth=63, meaning that the head and tail of the pipeline consumes 63 CCs
    * the depth is probably due to the long reduction add

```
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'reduction_1024_s' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'Loop 1'.
INFO: [SCHED 204-61] Pipelining result : Target II = 1, Final II = 1, Depth = 63.
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111]  Elapsed time: 0.29 seconds; current allocated memory: 152.604 MB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111]  Elapsed time: 0.45 seconds; current allocated memory: 153.358 MB.

        * Instance: 
        +----------------------+---------------------+---------+---------+-----------+-----------+------+------+---------+
        |                      |                     |  Latency (cycles) |   Latency (absolute)  |   Interval  | Pipeline|
        |       Instance       |        Module       |   min   |   max   |    min    |    max    |  min |  max |   Type  |
        +----------------------+---------------------+---------+---------+-----------+-----------+------+------+---------+
        |reduction_1024_U0     |reduction_1024_s     |     1087|     1087|  7.764 us |  7.764 us |  1087|  1087|   none  |
        |Block_proc_U0         |Block_proc           |        8|        8| 57.144 ns | 57.144 ns |     8|     8|   none  |
        |feed_struct_1024_U0   |feed_struct_1024_s   |     1026|     1026|  7.329 us |  7.329 us |  1026|  1026|   none  |
        |init_array_16_5_U0    |init_array_16_5      |       25|       25|  0.179 us |  0.179 us |    25|    25|   none  |
        |write_result_1024_U0  |write_result_1024_s  |     1032|     1032|  7.372 us |  7.372 us |  1032|  1032|   none  |
        +----------------------+---------------------+---------+---------+-----------+-----------+------+------+---------+
```

* Example 2: struct contain an array, access them concurrently
  * with array_partition it

```
// other stuff same as Example 1
        float_struct local_fc = s_struct.read();
#pragma HLS array_partition variable=local_fc.items dim=1 complete
```


  * Report of Example 2 
    * same performance as Example 1, II=1 
    * although the depth=63, meaning that the head and tail of the pipeline consumes 63 CCs
    * the depth is probably due to the long reduction add

```
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'reduction_1024_s' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'Loop 1'.
INFO: [SCHED 204-61] Pipelining result : Target II = 1, Final II = 1, Depth = 63.
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111]  Elapsed time: 0.67 seconds; current allocated memory: 168.603 MB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111]  Elapsed time: 0.43 seconds; current allocated memory: 169.343 MB.
```

  * Report of Example 2 
    * same performance as Example 1, II=1 
    * although the depth=63, meaning that the head and tail of the pipeline consumes 63 CCs
    * the depth is probably due to the long reduction add

* Example 3: struct contain individual items, access them concurrently

```
typedef struct {
    /* 512-bit width data type */
    float items_0;
    float items_1;
    float items_2;
    float items_3;
    float items_4;
    float items_5;
    float items_6;
    float items_7;
    float items_8;
    float items_9;
    float items_10;
    float items_11;
    float items_12;
    float items_13;
    float items_14;
    float items_15;
} float_struct; 

template<const int total_len>
void reduction(hls::stream<float_struct>& s_struct, hls::stream<float>& s_result) {
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1

        float_struct local_fc = s_struct.read();

        float result = 
            local_fc.items_0 + local_fc.items_1 + 
            local_fc.items_2 + local_fc.items_3 + 
            local_fc.items_4 + local_fc.items_5 + 
            local_fc.items_6 + local_fc.items_7 + 
            local_fc.items_8 + local_fc.items_9 + 
            local_fc.items_10 + local_fc.items_11 + 
            local_fc.items_12 + local_fc.items_13 + 
            local_fc.items_14 + local_fc.items_15;
        
        s_result.write(result);
    }
}
```

```
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'reduction_1024_s' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'Loop 1'.
INFO: [SCHED 204-61] Pipelining result : Target II = 1, Final II = 1, Depth = 63.
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111]  Elapsed time: 0.4 seconds; current allocated memory: 159.254 MB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111]  Elapsed time: 0.71 seconds; current allocated memory: 159.955 MB
```