# Stream Bitonic Sort

Using Double Buffering, for 32-element partitions.

## Performance

### Without Double Buffering

CC 1921 / 32 = 60.03 CC per 32 elements

FF 16594

LUT 25794

### With Double Buffering

Significant Performance Improvement, marginal overhead.

CC  35.84 Interval for 32 elements (1147 CC / 32 partitions)

FF 16787  

LUT 27685

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
    +---------+---------+-----------+-----------+------+------+----------+
    |  Latency (cycles) |   Latency (absolute)  |   Interval  | Pipeline |
    |   min   |   max   |    min    |    max    |  min |  max |   Type   |
    +---------+---------+-----------+-----------+------+------+----------+
    |     1942|     1942| 13.872 us | 13.872 us |  1148|  1148| dataflow |
    +---------+---------+-----------+-----------+------+------+----------+

    + Detail:
        * Instance:
        +-------------------------+----------------------+---------+---------+----------+----------+------+------+---------+
        |                         |                      |  Latency (cycles) |  Latency (absolute) |   Interval  | Pipeline|
        |         Instance        |        Module        |   min   |   max   |    min   |    max   |  min |  max |   Type  |
        +-------------------------+----------------------+---------+---------+----------+----------+------+------+---------+
        |bitonic_sort_wrapper_U0  |bitonic_sort_wrapper  |     1147|     1147| 8.193 us | 8.193 us |  1147|  1147|   none  |
        |broadcast_array_32_5_U0  |broadcast_array_32_5  |       73|       73| 0.521 us | 0.521 us |    73|    73|   none  |
        |write_result_1024_U0     |write_result_1024_s   |     1032|     1032| 7.372 us | 7.372 us |  1032|  1032|   none  |
        +-------------------------+----------------------+---------+---------+----------+----------+------+------+---------+

+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       16|    -|
|FIFO                 |        2|      -|      218|     1544|    -|
|Instance             |        4|      0|    21471|    34008|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|        -|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        6|      0|    21695|    35568|    0|
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
    +-------------------------+----------------------+---------+-------+-------+-------+-----+
    |         Instance        |        Module        | BRAM_18K| DSP48E|   FF  |  LUT  | URAM|
    +-------------------------+----------------------+---------+-------+-------+-------+-----+
    |bitonic_sort_wrapper_U0  |bitonic_sort_wrapper  |        0|      0|  16787|  27685|    0|
    |broadcast_array_32_5_U0  |broadcast_array_32_5  |        0|      0|   1055|    470|    0|
```
