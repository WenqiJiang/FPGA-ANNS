# Performance

## Real Performance 

714.901 ms

140 MHz

10000 query * 10000 iterations per query

Theoretical performance = 1e4 * 1e4 / (140 * 1e6) = 0.71428 s

Achieved 714.28 / 714.901 = 99.913% theoretical performance.

## HLS Performance

```
================================================================
== Performance Estimates
================================================================
+ Timing: 
    * Summary: 
    +--------+---------+----------+------------+
    |  Clock |  Target | Estimated| Uncertainty|
    +--------+---------+----------+------------+
    |ap_clk  | 7.14 ns | 5.214 ns |   1.93 ns  |
    +--------+---------+----------+------------+

+ Latency: 
    * Summary: 
    +-----------+-----------+-----------+-----------+-----------+-----------+----------+
    |    Latency (cycles)   |   Latency (absolute)  |        Interval       | Pipeline |
    |    min    |    max    |    min    |    max    |    min    |    max    |   Type   |
    +-----------+-----------+-----------+-----------+-----------+-----------+----------+
    |  100130018|  100130018| 0.715 sec | 0.715 sec |  100130002|  100130002| dataflow |
    +-----------+-----------+-----------+-----------+-----------+-----------+----------+

    + Detail: 
        * Instance: 
        +---------------------------------------+--------------------------------------+-----------+-----------+-----------+-----------+-----------+-----------+---------+
        |                                       |                                      |    Latency (cycles)   |   Latency (absolute)  |        Interval       | Pipeline|
        |                Instance               |                Module                |    min    |    max    |    min    |    max    |    min    |    max    |   Type  |
        +---------------------------------------+--------------------------------------+-----------+-----------+-----------+-----------+-----------+-----------+---------+
        |parallel_merge_sort_16_10000_10000_U0  |parallel_merge_sort_16_10000_10000_s  |  100130001|  100130001| 0.715 sec | 0.715 sec |  100130001|  100130001|   none  |
        |write_result_10000_10000_U0            |write_result_10000_10000_s            |  100000024|  100000024| 0.714 sec | 0.714 sec |  100000024|  100000024|   none  |
        |dummy_input_sender_10000_10000_31_U0   |dummy_input_sender_10000_10000_31     |  100000002|  100000002| 0.714 sec | 0.714 sec |  100000002|  100000002|   none  |
        |dummy_input_sender_10000_10000_U0      |dummy_input_sender_10000_10000_s      |  100000002|  100000002| 0.714 sec | 0.714 sec |  100000002|  100000002|   none  |
        |vadd_entry4_U0                         |vadd_entry4                           |          0|          0|    0 ns   |    0 ns   |          0|          0|   none  |
        +---------------------------------------+--------------------------------------+-----------+-----------+-----------+-----------+-----------+-----------+---------+

```


# Resource

Including control logic loop:

FF = 17907

LUT = 26840

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       37|    -|
|FIFO                 |        0|      -|      581|     4396|    -|
|Instance             |        4|      0|    22228|    33732|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|       54|    -|
|Register             |        -|      -|       15|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        4|      0|    22824|    38219|    0|
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
    +---------------------------------------+--------------------------------------+---------+-------+-------+-------+-----+
    |                Instance               |                Module                | BRAM_18K| DSP48E|   FF  |  LUT  | URAM|
    +---------------------------------------+--------------------------------------+---------+-------+-------+-------+-----+
    |dummy_input_sender_10000_10000_31_U0   |dummy_input_sender_10000_10000_31     |        0|      0|     35|    448|    0|
    |dummy_input_sender_10000_10000_U0      |dummy_input_sender_10000_10000_s      |        0|      0|     34|    439|    0|
    |parallel_merge_sort_16_10000_10000_U0  |parallel_merge_sort_16_10000_10000_s  |        0|      0|  17907|  26840|    0|
    |vadd_control_s_axi_U                   |vadd_control_s_axi                    |        0|      0|   2486|   4520|    0|
    |vadd_entry4_U0                         |vadd_entry4                           |        0|      0|      3|     37|    0|
    |vadd_gmem34_m_axi_U                    |vadd_gmem34_m_axi                     |        4|      0|    566|    766|    0|
    |write_result_10000_10000_U0            |write_result_10000_10000_s            |        0|      0|   1197|    682|    0|
    +---------------------------------------+--------------------------------------+---------+-------+-------+-------+-----+
    |Total                                  |                                      |        4|      0|  22228|  33732|    0|
    +---------------------------------------+--------------------------------------+---------+-------+-------+-------+-----+
```
