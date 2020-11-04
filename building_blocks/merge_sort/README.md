# Merge Sort Performance

array_len = 32

## Result

148 CC
FF: 8681 / 2607360 = 0.33 %
LUT: 19127 / 1303680 = 1.47 %

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
    +---------+---------+----------+----------+-----+-----+----------+
    |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline |
    |   min   |   max   |    min   |    max   | min | max |   Type   |
    +---------+---------+----------+----------+-----+-----+----------+
    |      157|      157| 1.121 us | 1.121 us |  129|  129| dataflow |
    +---------+---------+----------+----------+-----+-----+----------+

    + Detail:
        * Instance:
        +--------------------------+-----------------------+---------+---------+----------+----------+-----+-----+----------+
        |                          |                       |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline |
        |         Instance         |         Module        |   min   |   max   |    min   |    max   | min | max |   Type   |
        +--------------------------+-----------------------+---------+---------+----------+----------+-----+-----+----------+
        |merge_sort_U0             |merge_sort             |      148|      148| 1.057 us | 1.057 us |  129|  129| dataflow |
        |broadcast_stream_32_5_U0  |broadcast_stream_32_5  |       40|       40| 0.286 us | 0.286 us |   40|   40|   none   |
        |write_result_32_U0        |write_result_32_s      |       40|       40| 0.286 us | 0.286 us |   40|   40|   none   |
        +--------------------------+-----------------------+---------+---------+----------+----------+-----+-----+----------+

================================================================
== Utilization Estimates
================================================================
* Summary:
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       16|    -|
|FIFO                 |        2|      -|      254|     1574|    -|
|Instance             |       32|      0|    13353|    25414|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|        -|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |       34|      0|    13613|    27004|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        2|      0|        1|        6|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|    ~0   |        2|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail:
    * Instance:
    +--------------------------+-----------------------+---------+-------+------+-------+-----+
    |         Instance         |         Module        | BRAM_18K| DSP48E|  FF  |  LUT  | URAM|
    +--------------------------+-----------------------+---------+-------+------+-------+-----+
    |broadcast_stream_32_5_U0  |broadcast_stream_32_5  |        0|      0|  1048|    441|    0|
    |merge_sort_U0             |merge_sort             |       28|      0|  8681|  19127|    0|
```

Inline Version:

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
    +---------+---------+----------+----------+-----+-----+----------+
    |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline |
    |   min   |   max   |    min   |    max   | min | max |   Type   |
    +---------+---------+----------+----------+-----+-----+----------+
    |      163|      163| 1.164 us | 1.164 us |  129|  129| dataflow |
    +---------+---------+----------+----------+-----+-----+----------+

    + Detail:
        * Instance:
        +--------------------------+-----------------------+---------+---------+----------+----------+-----+-----+---------+
        |                          |                       |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
        |         Instance         |         Module        |   min   |   max   |    min   |    max   | min | max |   Type  |
        +--------------------------+-----------------------+---------+---------+----------+----------+-----+-----+---------+
        |merge_stage1_U0           |merge_stage1           |      128|      128| 0.914 us | 0.914 us |  128|  128|   none  |
        |merge_stage2_U0           |merge_stage2           |      112|      112| 0.800 us | 0.800 us |  112|  112|   none  |
        |merge_stage3_U0           |merge_stage3           |      104|      104| 0.743 us | 0.743 us |  104|  104|   none  |
        |merge_stage4_U0           |merge_stage4           |      100|      100| 0.714 us | 0.714 us |  100|  100|   none  |
        |broadcast_stream_32_5_U0  |broadcast_stream_32_5  |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        |merge_stage5_U0           |merge_stage5           |       98|       98| 0.700 us | 0.700 us |   98|   98|   none  |
        |write_result_32_U0        |write_result_32_s      |       40|       40| 0.286 us | 0.286 us |   40|   40|   none  |
        +--------------------------+-----------------------+---------+---------+----------+----------+-----+-----+---------+



================================================================
== Utilization Estimates
================================================================
* Summary:
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       16|    -|
|FIFO                 |       30|      -|     1069|     3115|    -|
|Instance             |        4|      0|    12539|    23860|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|        -|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |       34|      0|    13614|    26991|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        2|      0|        1|        6|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|    ~0   |        2|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail:
    * Instance:
    +--------------------------+-----------------------+---------+-------+------+------+-----+
    |         Instance         |         Module        | BRAM_18K| DSP48E|  FF  |  LUT | URAM|
    +--------------------------+-----------------------+---------+-------+------+------+-----+
    |broadcast_stream_32_5_U0  |broadcast_stream_32_5  |        0|      0|  1048|   441|    0|
    |merge_stage1_U0           |merge_stage1           |        0|      0|  3925|  8858|    0|
    |merge_stage2_U0           |merge_stage2           |        0|      0|  2013|  4506|    0|
    |merge_stage3_U0           |merge_stage3           |        0|      0|  1049|  2328|    0|
    |merge_stage4_U0           |merge_stage4           |        0|      0|   563|  1220|    0|
    |merge_stage5_U0           |merge_stage5           |        0|      0|   317|   661|    0|

```