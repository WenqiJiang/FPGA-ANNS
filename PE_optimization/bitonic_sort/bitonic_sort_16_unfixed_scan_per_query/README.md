# Performance

## Real Performance 

715.86 ms

140 MHz

10000 query * 10000 iterations per query

Theoretical performance = 1e4 * 1e4 / (140 * 1e6) = 0.71428 s

Achieved 714.28 / 715.86 = 99.779 % theoretical performance.

## HLS Performance

N/A due to the unfixed scanned iteration per query.

# Resource 

Very close to the fixed iteration per query version.

FF = 28986 (fixed) : 29061 (unfixed)

LUT = 43862 (fixed ): 44511 (unfixed)

No DSP / BRAM / URAM usage.

Placing 4 Bitonic 16 in sort-reduction module will consume:

FF = 4 * 29061 / 2607360 = 4.458% of total FF

LUT = 4 * 44511 / 1303680 = *13.657% of total LUT*

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       16|    -|
|FIFO                 |        0|      -|      407|     3091|    -|
|Instance             |        4|      0|    33496|    51175|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|        -|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        4|      0|    33909|    54282|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |      0|        3|       12|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|        1|        4|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail: 
    * Instance: 
    +----------------------------------+-------------------------------+---------+-------+-------+-------+-----+
    |             Instance             |             Module            | BRAM_18K| DSP48E|   FF  |  LUT  | URAM|
    +----------------------------------+-------------------------------+---------+-------+-------+-------+-----+
    |bitonic_sort_16_10000_37_U0       |bitonic_sort_16_10000_37       |        0|      0|  29061|  44511|    0|
    |control_signal_sender_10000_4_U0  |control_signal_sender_10000_4  |        0|      0|     22|    144|    0|
    |dummy_input_sender_10000_U0       |dummy_input_sender_10000_s     |        0|      0|     99|    496|    0|
    |vadd_control_s_axi_U              |vadd_control_s_axi             |        0|      0|   2486|   4520|    0|
    |vadd_gmem34_m_axi_U               |vadd_gmem34_m_axi              |        4|      0|    566|    766|    0|
    |write_result_10000_38_U0          |write_result_10000_38          |        0|      0|   1262|    738|    0|
    +----------------------------------+-------------------------------+---------+-------+-------+-------+-----+
    |Total                             |                               |        4|      0|  33496|  51175|    0|
    +----------------------------------+-------------------------------+---------+-------+-------+-------+-----+
```

# TODO

There could be some overhead between queries. It might flush the pipeline, and might be related to FIFO depth.

But since the current result is already very close to theroetical performance, we don't need to spend time on this. 
