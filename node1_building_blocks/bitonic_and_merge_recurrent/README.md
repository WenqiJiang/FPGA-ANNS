# Bitonic Sort + Recurrent Merge

Given MERGE_ITER (8) partitions of input array (each 32 elemnts) (8 * 32 = 256 elements in total):

1. Sort each partition (bitonic sort without double buffering)

2. Merge sorted partition and select the 32 smallest values

Repeat this step NUM_LOOPS (32) times.

## Performance

Bitonic Sort has slightly less interval than recurrent merging (15361 VS 17445), thus perfect balanced.

### Bitonic Sort

Per 8 partitions:

15361 / 32 = 480.03 CC

15361 / 32 / 8 = 60.00 CC

Per 1 partition (32 elements):

### Recurrent Merge

Per 8 partitions (merging 256 elements)

17445 / 32 = 545.15 CC 

Per 1 partition (32 elements):

17445 / 32 / 8 =  68.14 CC

```
+ Timing:
    * Summary:
    +--------+---------+----------+------------+
    |  Clock |  Target | Estimated| Uncertainty|
    +--------+---------+----------+------------+
    |ap_clk  | 7.14 ns | 5.214 ns |   1.93 ns  |
    +--------+---------+----------+------------+

+ Latency:
    * Summary:
    +---------+---------+----------+----------+-------+-------+----------+
    |  Latency (cycles) |  Latency (absolute) |    Interval   | Pipeline |
    |   min   |   max   |    min   |    max   |  min  |  max  |   Type   |
    +---------+---------+----------+----------+-------+-------+----------+
    |    35958|    35958| 0.257 ms | 0.257 ms |  17445|  17445| dataflow |
    +---------+---------+----------+----------+-------+-------+----------+

    + Detail:
        * Instance:
        +------------------------------+---------------------------+---------+---------+-----------+-----------+-------+-------+---------+
        |                              |                           |  Latency (cycles) |   Latency (absolute)  |    Interval   | Pipeline|
        |           Instance           |           Module          |   min   |   max   |    min    |    max    |  min  |  max  |   Type  |
        +------------------------------+---------------------------+---------+---------+-----------+-----------+-------+-------+---------+
        |bitonic_sort_U0               |bitonic_sort               |    15361|    15361|  0.110 ms |  0.110 ms |  15361|  15361|   none  |
        |broadcast_stream_256_32_5_U0  |broadcast_stream_256_32_5  |      842|      842|  6.014 us |  6.014 us |    842|    842|   none  |
        |merge_filter_streams_32_U0    |merge_filter_streams_32_s  |    17444|    17444|  0.125 ms |  0.125 ms |  17444|  17444|   none  |
        |result_redirect_32_U0         |result_redirect_32_s       |     9441|     9441| 67.437 us | 67.437 us |   9441|   9441|   none  |
        |write_result_1024_U0          |write_result_1024_s        |     1032|     1032|  7.372 us |  7.372 us |   1032|   1032|   none  |
        +------------------------------+---------------------------+---------+---------+-----------+-----------+-------+-------+---------+

+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       16|    -|
|FIFO                 |        0|      -|      189|     1664|    -|
|Instance             |        6|      0|    22766|    33746|    0|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|        -|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        6|      0|    22961|    35426|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |      0|        2|        8|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|    ~0   |        2|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail:
    * Instance:
    +------------------------------+---------------------------+---------+-------+-------+-------+-----+
    |           Instance           |           Module          | BRAM_18K| DSP48E|   FF  |  LUT  | URAM|
    +------------------------------+---------------------------+---------+-------+-------+-------+-----+
    |bitonic_sort_U0               |bitonic_sort               |        0|      0|  16601|  25808|    0|
    |broadcast_stream_256_32_5_U0  |broadcast_stream_256_32_5  |        0|      0|   2144|   1118|    0|
    |merge_filter_streams_32_U0    |merge_filter_streams_32_s  |        2|      0|    342|    687|    0|
    |result_redirect_32_U0         |result_redirect_32_s       |        0|      0|     50|    280|    0|
    |vadd_control_s_axi_U          |vadd_control_s_axi         |        0|      0|   2486|   4520|    0|
    |vadd_gmem32_m_axi_U           |vadd_gmem32_m_axi          |        2|      0|    512|    580|    0|
    |vadd_gmem34_m_axi_U           |vadd_gmem34_m_axi          |        2|      0|    512|    580|    0|
    |write_result_1024_U0          |write_result_1024_s        |        0|      0|    119|    173|    0|
    +------------------------------+---------------------------+---------+-------+-------+-------+-----+
    |Total                         |                           |        6|      0|  22766|  33746|    0|
    +------------------------------+---------------------------+---------+-------+-------+-------+-----+

```