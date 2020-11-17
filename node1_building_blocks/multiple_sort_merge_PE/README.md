# Multiple Sorting PE

NOTE! The performance is not optimized because in "vadd.cpp" broadcast_stream is not optimized for performance. It is for verifying performance instead.

See "code_multiple_sorting_PE.png"

Multiple PE, each PE is a "bitonic_and_merge_recurrent"

## Scenario 

Suppose there are NLIST (8192) clusters in the coarse-grained quantizer.

These centroids as split to PE_NUM_DIST_COMP (32) distance computation PEs (in this project, suppose the distance computation is already finished).

32 distance computation PEs constantly send data pair (dist, center_id) to merge PEs. Each distance computation PE will send NLIST / PE_NUM_DIST_COMP = 256 elements per query. 

We have PE_NUM_SORT_MERGE (8) Merge PEs that will perform a sort on each 32 elements, and send them to merge units, repeat this for MERGE_ITER (8) iterations to finish sorting all 256 elements and output the smallest 32.

Each merge PE sends the 32 smallest elements to top merging network, which takes 32 * PE_NUM_SORT_MERGE (256) elements and produces the final 32 elements.

This process will repeat QUERY_NUM = 64 times.

## Constants

```
#define NLIST 8192
#define NPROBE 32 // merge len

#define PE_NUM_DIST_COMP NPROBE // TODO: this dependency may only work in this specific design
#define PE_NUM_SORT_MERGE 8 // distance computation: 8 cycle / 32 elements, merge speed: 64 cycle / 32 elements, thus need 8 PEs

#define MERGE_LEN NPROBE // the number of two input stream = 32, output stream len = 32
#define MERGE_ITER (NLIST / PE_NUM_DIST_COMP / PE_NUM_SORT_MERGE)  // 8192 / 32 / 8 = 32

#define QUERY_NUM 64
```

### Results

This version is for debugging, thus performance is bound by broadcasting unit (3.981).

But we can take a look at the core functions, i.e. sort_merge_PE and top_level_merge.

sort_merge_PE + = 2.007 + 0.031 = 2.038 ms for 64 queries.

End2End Latency:

2.038 / 64 = 31.84 us per query

Only processing one query at a time in the recurrent sorting network, thus no pipeline multiple queries.

Throughput:

31,407 QPS, enough (estimated overall performance < 10 K QPS)


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
    +---------+---------+----------+----------+--------+--------+----------+
    |  Latency (cycles) |  Latency (absolute) |     Interval    | Pipeline |
    |   min   |   max   |    min   |    max   |   min  |   max  |   Type   |
    +---------+---------+----------+----------+--------+--------+----------+
    |   557383|   557383| 3.981 ms | 3.981 ms |  557384|  557384| dataflow |
    +---------+---------+----------+----------+--------+--------+----------+

    + Detail:
        * Instance:
        +----------------------------------+---------------------------------+---------+---------+-----------+-----------+--------+--------+----------+
        |                                  |                                 |  Latency (cycles) |   Latency (absolute)  |     Interval    | Pipeline |
        |             Instance             |              Module             |   min   |   max   |    min    |    max    |   min  |   max  |   Type   |
        +----------------------------------+---------------------------------+---------+---------+-----------+-----------+--------+--------+----------+
        |sort_merge_PE87_U0                |sort_merge_PE87                  |   280907|   280907|  2.007 ms |  2.007 ms |  139301|  139301| dataflow |
        |sort_merge_PE88_U0                |sort_merge_PE88                  |   280907|   280907|  2.007 ms |  2.007 ms |  139301|  139301| dataflow |
        |sort_merge_PE89_U0                |sort_merge_PE89                  |   280907|   280907|  2.007 ms |  2.007 ms |  139301|  139301| dataflow |
        |sort_merge_PE90_U0                |sort_merge_PE90                  |   280907|   280907|  2.007 ms |  2.007 ms |  139301|  139301| dataflow |
        |sort_merge_PE91_U0                |sort_merge_PE91                  |   280907|   280907|  2.007 ms |  2.007 ms |  139301|  139301| dataflow |
        |sort_merge_PE92_U0                |sort_merge_PE92                  |   280907|   280907|  2.007 ms |  2.007 ms |  139301|  139301| dataflow |
        |sort_merge_PE93_U0                |sort_merge_PE93                  |   280907|   280907|  2.007 ms |  2.007 ms |  139301|  139301| dataflow |
        |sort_merge_PE_U0                  |sort_merge_PE                    |   280907|   280907|  2.007 ms |  2.007 ms |  139301|  139301| dataflow |
        |switch_round_robin_32_8192_64_U0  |switch_round_robin_32_8192_64_s  |    16386|    16386|  0.117 ms |  0.117 ms |   16386|   16386|   none   |
        |top_level_merge_32_64_U0          |top_level_merge_32_64_s          |     4398|     4398| 31.415 us | 31.415 us |    4389|    4389| dataflow |
        |broadcast_stream_8192_32_64_5_U0  |broadcast_stream_8192_32_64_5    |   557383|   557383|  3.981 ms |  3.981 ms |  557383|  557383|   none   |
        |write_result_2048_U0              |write_result_2048_s              |     2056|     2056| 14.686 us | 14.686 us |    2056|    2056|   none   |
        +----------------------------------+---------------------------------+---------+---------+-----------+-----------+--------+--------+----------+

+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       18|    -|
|FIFO                 |        0|      -|     1499|    13153|    -|
|Instance             |       66|      0|   149587|   230241|    0|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|        -|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |       66|      0|   151092|   243412|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        4|      0|       17|       56|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |        1|      0|        5|       18|    0|
+---------------------+---------+-------+---------+---------+-----+

+ Detail:
    * Instance:
    +----------------------------------+---------------------------------+---------+-------+-------+-------+-----+
    |             Instance             |              Module             | BRAM_18K| DSP48E|   FF  |  LUT  | URAM|
    +----------------------------------+---------------------------------+---------+-------+-------+-------+-----+
    |broadcast_stream_8192_32_64_5_U0  |broadcast_stream_8192_32_64_5    |       32|      0|    123|   1001|    0|
    |sort_merge_PE_U0                  |sort_merge_PE                    |        2|      0|  17027|  26941|    0|
    |sort_merge_PE87_U0                |sort_merge_PE87                  |        2|      0|  17028|  26950|    0|
    |sort_merge_PE88_U0                |sort_merge_PE88                  |        2|      0|  17027|  26941|    0|
    |sort_merge_PE89_U0                |sort_merge_PE89                  |        2|      0|  17027|  26941|    0|
    |sort_merge_PE90_U0                |sort_merge_PE90                  |        2|      0|  17027|  26941|    0|
    |sort_merge_PE91_U0                |sort_merge_PE91                  |        2|      0|  17027|  26941|    0|
    |sort_merge_PE92_U0                |sort_merge_PE92                  |        2|      0|  17027|  26941|    0|
    |sort_merge_PE93_U0                |sort_merge_PE93                  |        2|      0|  17027|  26941|    0|
    |switch_round_robin_32_8192_64_U0  |switch_round_robin_32_8192_64_s  |        0|      0|   7207|   2732|    0|
    |top_level_merge_32_64_U0          |top_level_merge_32_64_s          |       14|      0|   2410|   5117|    0|
    |vadd_control_s_axi_U              |vadd_control_s_axi               |        0|      0|   2486|   4520|    0|
    |vadd_gmem32_m_axi_U               |vadd_gmem32_m_axi                |        2|      0|    512|    580|    0|
    |vadd_gmem34_m_axi_U               |vadd_gmem34_m_axi                |        2|      0|    512|    580|    0|
    |write_result_2048_U0              |write_result_2048_s              |        0|      0|    120|    174|    0|
    +----------------------------------+---------------------------------+---------+-------+-------+-------+-----+
    |Total                             |                                 |       66|      0| 149587| 230241|    0|
    +----------------------------------+---------------------------------+---------+-------+-------+-------+-----+
```