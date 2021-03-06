# Priority Queue of 100 elements

## Performance

2 CC / insertion (no matter insert or not, 2 CC per input number).

```

+ Latency: 
    * Summary: 
    +---------+---------+-----------+-----------+------+------+----------+
    |  Latency (cycles) |   Latency (absolute)  |   Interval  | Pipeline |
    |   min   |   max   |    min    |    max    |  min |  max |   Type   |
    +---------+---------+-----------+-----------+------+------+----------+
    |     2262|     2262| 11.310 us | 11.310 us |  2257|  2257| dataflow |
    +---------+---------+-----------+-----------+------+------+----------+

    + Detail: 
        * Instance: 
        +----------------------------+---------------------------+---------+---------+-----------+-----------+------+------+---------+
        |                            |                           |  Latency (cycles) |   Latency (absolute)  |   Interval  | Pipeline|
        |          Instance          |           Module          |   min   |   max   |    min    |    max    |  min |  max |   Type  |
        +----------------------------+---------------------------+---------+---------+-----------+-----------+------+------+---------+
        |priority_queue_100_1024_U0  |priority_queue_100_1024_s  |     2256|     2256| 11.280 us | 11.280 us |  2256|  2256|   none  |
        |read_input_1024_5_U0        |read_input_1024_5          |     1033|     1033|  5.165 us |  5.165 us |  1033|  1033|   none  |
        |write_result_100_U0         |write_result_100_s         |      108|      108|  0.540 us |  0.540 us |   108|   108|   none  |
        +----------------------------+---------------------------+---------+---------+-----------+-----------+------+------+---------+

        * Loop: 
        N/A

```

FF: 13106; LUT: 26901

Total FF: 2607360

Total LUT: 1303680 -> 1303680 / 26901 = 48.46 such PQ.


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
|FIFO                 |        2|      -|       70|      193|    -|
|Instance             |        4|      0|    16790|    32922|    -|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|        -|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        6|      0|    16866|    33131|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |      0|        1|        7|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |      0|    ~0   |        2|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail: 
    * Instance: 
    +----------------------------+---------------------------+---------+-------+-------+-------+-----+
    |          Instance          |           Module          | BRAM_18K| DSP48E|   FF  |  LUT  | URAM|
    +----------------------------+---------------------------+---------+-------+-------+-------+-----+
    |priority_queue_100_1024_U0  |priority_queue_100_1024_s  |        0|      0|  13106|  26901|    0|
```