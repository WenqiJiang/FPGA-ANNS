# sort_reduction_64_to_16

See sort_reduction_64_to_16.png

## Real Performance 

839 ms (Same as estimated)

160 MHz

## Estimated Performance

================================================================
== Performance Estimates
================================================================
+ Timing: 
    * Summary: 
    +--------+---------+----------+------------+
    |  Clock |  Target | Estimated| Uncertainty|
    +--------+---------+----------+------------+
    |ap_clk  | 6.25 ns | 4.562 ns |   1.69 ns  |
    +--------+---------+----------+------------+

+ Latency: 
    * Summary: 
    +-----------+-----------+-----------+-----------+-----------+-----------+----------+
    |    Latency (cycles)   |   Latency (absolute)  |        Interval       | Pipeline |
    |    min    |    max    |    min    |    max    |    min    |    max    |   Type   |
    +-----------+-----------+-----------+-----------+-----------+-----------+----------+
    |  134217802|  134217802| 0.839 sec | 0.839 sec |  134217803|  134217803| dataflow |
    +-----------+-----------+-----------+-----------+-----------+-----------+----------+

    + Detail: 
        * Instance: 
        +----------------------------+---------------------------+-----------+-----------+-----------+-----------+-----------+-----------+----------+
        |                            |                           |    Latency (cycles)   |   Latency (absolute)  |        Interval       | Pipeline |
        |          Instance          |           Module          |    min    |    max    |    min    |    max    |    min    |    max    |   Type   |
        +----------------------------+---------------------------+-----------+-----------+-----------+-----------+-----------+-----------+----------+
        |sort_and_reduction_4_16_U0  |sort_and_reduction_4_16_s  |  134217757|  134217757| 0.839 sec | 0.839 sec |  134217751|  134217751| dataflow |
        |broadcast_array_4_16_5_U0   |broadcast_array_4_16_5     |  134217802|  134217802| 0.839 sec | 0.839 sec |  134217802|  134217802|   none   |
        |write_result_16_U0          |write_result_16_s          |  134217752|  134217752| 0.839 sec | 0.839 sec |  134217752|  134217752|   none   |
        +----------------------------+---------------------------+-----------+-----------+-----------+-----------+-----------+-----------+----------+
