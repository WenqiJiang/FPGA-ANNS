# PQ Lookup PE

Input: 1 DRAM Channel (512 bit)

It contains 3 groups of (vector_idx, PQ16).

Each group: 4 + 16 = 20 byte, total = 60 byte (480 bit), thus the rest of 512 - 480 bits are trimmed.

I used 3 PQ Lookup Computation PE to handle the computation.

Query_num = 32 * 1024 = 32768

## Performance -> 1 CC per

Pipeline -> 1 CC

But the reduction sum of 16 floating point numbers lead to long pipeline (63 CC end-to-end latency).


```
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [HLS 200-42] -- Implementing module 'PQ_lookup_computation_32768_51' 
INFO: [HLS 200-10] ----------------------------------------------------------------
INFO: [SCHED 204-11] Starting scheduling ...
INFO: [SCHED 204-61] Pipelining loop 'Loop 1'.
INFO: [SCHED 204-61] Pipelining result : Target II = 1, Final II = 1, Depth = 63.
INFO: [SCHED 204-11] Finished scheduling.
INFO: [HLS 200-111]  Elapsed time: 0.34 seconds; current allocated memory: 213.334 MB.
INFO: [BIND 205-100] Starting micro-architecture generation ...
INFO: [BIND 205-101] Performing variable lifetime analysis.
INFO: [BIND 205-101] Exploring resource sharing.
INFO: [BIND 205-101] Binding ...
INFO: [BIND 205-100] Finished micro-architecture generation.
INFO: [HLS 200-111]  Elapsed time: 0.48 seconds; current allocated memory: 214.257 MB.

    + Detail: 
        * Instance: 
        +------------------------------------+-----------------------------------+---------+---------+----------+----------+-------+-------+---------+
        |                                    |                                   |  Latency (cycles) |  Latency (absolute) |    Interval   | Pipeline|
        |              Instance              |               Module              |   min   |   max   |    min   |    max   |  min  |  max  |   Type  |
        +------------------------------------+-----------------------------------+---------+---------+----------+----------+-------+-------+---------+
        |PQ_lookup_computation_32768_51_U0   |PQ_lookup_computation_32768_51     |    32831|    32831| 0.235 ms | 0.235 ms |  32831|  32831|   none  |
        |PQ_lookup_computation_32768_52_U0   |PQ_lookup_computation_32768_52     |    32831|    32831| 0.235 ms | 0.235 ms |  32831|  32831|   none  |
        |PQ_lookup_computation_32768_U0      |PQ_lookup_computation_32768_s      |    32831|    32831| 0.235 ms | 0.235 ms |  32831|  32831|   none  |
        |merge_result_32768_U0               |merge_result_32768_s               |    32771|    32771| 0.234 ms | 0.234 ms |  32771|  32771|   none  |
        |load_PQ_codes_32768_5_U0            |load_PQ_codes_32768_5              |    32777|    32777| 0.234 ms | 0.234 ms |  32777|  32777|   none  |
        |write_result_ap_uint_256_32768_U0   |write_result_ap_uint_256_32768_s   |    32776|    32776| 0.234 ms | 0.234 ms |  32776|  32776|   none  |
        |type_conversion_and_split_32768_U0  |type_conversion_and_split_32768_s  |    32771|    32771| 0.234 ms | 0.234 ms |  32771|  32771|   none  |
        +------------------------------------+-----------------------------------+---------+---------+----------+----------+-------+-------+---------+
```

## Resource Consumption

Very Little.

```
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       18|    -|
|FIFO                 |       44|      -|     1078|     2204|    -|
|Instance             |       80|     90|    22192|    23838|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|        -|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |      124|     90|    23276|    26060|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        9|      2|        2|        5|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |        3|   ~0  |    ~0   |        1|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail: 
    * Instance: 
    +------------------------------------+-----------------------------------+---------+-------+------+------+-----+
    |              Instance              |               Module              | BRAM_18K| DSP48E|  FF  |  LUT | URAM|
    +------------------------------------+-----------------------------------+---------+-------+------+------+-----+
    |PQ_lookup_computation_32768_51_U0   |PQ_lookup_computation_32768_51     |       16|     30|  5198|  4432|    0|
    |PQ_lookup_computation_32768_52_U0   |PQ_lookup_computation_32768_52     |       16|     30|  5197|  4423|    0|
    |PQ_lookup_computation_32768_U0      |PQ_lookup_computation_32768_s      |       16|     30|  5197|  4423|    0|
    |load_PQ_codes_32768_5_U0            |load_PQ_codes_32768_5              |        0|      0|   544|   186|    0|
    |merge_result_32768_U0               |merge_result_32768_s               |        0|      0|   476|  2504|    0|
    |type_conversion_and_split_32768_U0  |type_conversion_and_split_32768_s  |        0|      0|   987|  1061|    0|
    |vadd_control_s_axi_U                |vadd_control_s_axi                 |        0|      0|  2486|  4520|    0|
    |vadd_gmem32_m_axi_U                 |vadd_gmem32_m_axi                  |       16|      0|   881|  1052|    0|
    |vadd_gmem34_m_axi_U                 |vadd_gmem34_m_axi                  |       16|      0|   881|  1052|    0|
    |write_result_ap_uint_256_32768_U0   |write_result_ap_uint_256_32768_s   |        0|      0|   345|   185|    0|
    +------------------------------------+-----------------------------------+---------+-------+------+------+-----+
    |Total                               |                                   |       80|     90| 22192| 23838|    0|
    +------------------------------------+-----------------------------------+---------+-------+------+------+-----+


```