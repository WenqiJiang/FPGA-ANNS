# sort_reduction_64_to_16_recurrent_debugging

## Real Performance

3355.45 ms (Cpmared to 839 ms estimated) = 3.999 X

160 MHz

## Potential Problem

FIFO not long enough

line 109
    hls::stream<float> input_stream[4][16];
#pragma HLS array_partition variable=input_stream complete

Adjustment, set FIFO depth to 256

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
        +--------------------------------------+-------------------------------------+-----------+-----------+-----------+-----------+-----------+-----------+----------+
        |                                      |                                     |    Latency (cycles)   |   Latency (absolute)  |        Interval       | Pipeline |
        |               Instance               |                Module               |    min    |    max    |    min    |    max    |    min    |    max    |   Type   |
        +--------------------------------------+-------------------------------------+-----------+-----------+-----------+-----------+-----------+-----------+----------+
        |broadcast_array_4_16_5_U0             |broadcast_array_4_16_5               |  134217802|  134217802| 0.839 sec | 0.839 sec |  134217802|  134217802|   none   |
        |sort_and_reduction_recurrent_4_16_U0  |sort_and_reduction_recurrent_4_16_s  |  134217732|  134217732| 0.839 sec | 0.839 sec |  134217731|  134217731| dataflow |
        |write_result_16_U0                    |write_result_16_s                    |         24|         24|  0.150 us |  0.150 us |         24|         24|   none   |
        +--------------------------------------+-------------------------------------+-----------+-----------+-----------+-----------+-----------+-----------+----------+
