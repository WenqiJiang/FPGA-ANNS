# Performance & Resource analysis for distance LUT PE

Refer to single_lookup_table_construction_PE_optimized_version2 as the final version.

This version can roughly output 1 row of distance LUT per cycle (1 row per 1.2 cycle, dependent to nprobe), thus should be sufficient for most cases. 

For the case that 1 row per cycle must be guarannteed, use the 2 PE version multiple_lookup_table_construction_PEs_optimized_version1. This only gives marginal performance improvement because its capped by the gather LUT unit which only allows 1 row per CC, but consumes 2X resources. 

## multiple_lookup_table_construction_PEs_unoptimized

A bad implementation of low performance and high resource consumption.

```
+ Timing: 
    * Summary: 
    +--------+---------+----------+------------+
    |  Clock |  Target | Estimated| Uncertainty|
    +--------+---------+----------+------------+
    |ap_clk  | 7.14 ns | 5.405 ns |   1.93 ns  |
    +--------+---------+----------+------------+

+ Latency: 
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+----------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline |
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type   |
    +----------+----------+-----------+-----------+----------+----------+----------+
    |  97401826|  97401826| 0.696 sec | 0.696 sec |  97272802|  97272802| dataflow |
    +----------+----------+-----------+-----------+----------+----------+----------+


================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|       27|    -|
|FIFO                 |       72|     -|    11988|     4300|    -|
|Instance             |        4|   864|   161462|   110654|   64|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|       54|    -|
|Register             |        -|     -|        9|        -|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |       76|   864|   173459|   115035|   64|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |        5|    28|       19|       26|   20|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |        1|     9|        6|        8|    6|
+---------------------+---------+------+---------+---------+-----+
```

## multiple_lookup_table_construction_PEs_optimized_version1

There are 2 major step to construct a LUT for a single scanned cell:
* for (d in 128): load residual_vector = (query_vector - centroid_vector)
* for (k in 256): compute a row of lookup table

Optimized version 1 applies full parallelism in step 2 to (a) compute 128 distances between the residual_vector and that row of product quantizer and (b) for each partition (m=16 in total), parallel sum the squared distance of 8 scalar distances. Such parallelism enables II=1 for computing a row (but the latency is high anyway).

### Performance

81920003 for 10000 queries. This performance is bound by the gather unit concatenating results from 2 PEs.

For the case of multiple PEs that saturate the gather unit:

Total cycles = query_num * nprobe * K_star = 10000 * 32 * 256 = 81920000

```

================================================================
== Performance Estimates
================================================================
+ Timing: 
    * Summary: 
    +--------+---------+----------+------------+
    |  Clock |  Target | Estimated| Uncertainty|
    +--------+---------+----------+------------+
    |ap_clk  | 7.14 ns | 5.018 ns |   1.93 ns  |
    +--------+---------+----------+------------+

+ Latency: 
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+----------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline |
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type   |
    +----------+----------+-----------+-----------+----------+----------+----------+
    |  81920051|  81920051| 0.585 sec | 0.585 sec |  81920003|  81920003| dataflow |
    +----------+----------+-----------+-----------+----------+----------+----------+

    + Detail: 
        * Instance: 
        +---------------------------------------------+------------------------------------------+----------+----------+-----------+-----------+----------+----------+---------+
        |                                             |                                          |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline|
        |                   Instance                  |                  Module                  |    min   |    max   |    min    |    max    |    min   |    max   |   Type  |
        +---------------------------------------------+------------------------------------------+----------+----------+-----------+-----------+----------+----------+---------+
        |lookup_table_construction_PE_10000_16_14_U0  |lookup_table_construction_PE_10000_16_14  |  70312771|  70312771| 0.502 sec | 0.502 sec |  70312771|  70312771|   none  |
        |lookup_table_construction_PE_10000_16_15_U0  |lookup_table_construction_PE_10000_16_15  |  70312771|  70312771| 0.502 sec | 0.502 sec |  70312771|  70312771|   none  |
        |gather_lookup_table_10000_2_16_U0            |gather_lookup_table_10000_2_16_s          |  81920002|  81920002| 0.585 sec | 0.585 sec |  81920002|  81920002|   none  |
        |replicate_center_vectors_10000_2_U0          |replicate_center_vectors_10000_2_s        |  40960002|  40960002| 0.293 sec | 0.293 sec |  40960002|  40960002|   none  |
        |replicate_product_quantizer_2_U0             |replicate_product_quantizer_2_s           |     65538|     65538|  0.468 ms |  0.468 ms |     65538|     65538|   none  |
        |replicate_query_vectors_10000_2_U0           |replicate_query_vectors_10000_2_s         |   1280002|   1280002|  9.143 ms |  9.143 ms |   1280002|   1280002|   none  |
        +---------------------------------------------+------------------------------------------+----------+----------+-----------+-----------+----------+----------+---------+

        * Loop: 
        N/A

```

For a single PE:

total latency = query_num * ((II_load_query * D + L_load) + nprobe / PE_num * ((II1 * D + L1) + (II2 * K_star + L2)))

Here, we know that (II1 * D + L1) + (II2 * K_star + L2) = 431 CC, and the load query loop takes 128 CC.

so total latency = 10000 * (128 + 32 / 2 * 431) = 70240000, very close to real latency

Real latency (without init) is 70312771 - 32768 = 70280003

**Performance Verified on Hardware**

```
+ Latency: 
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+---------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline|
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type  |
    +----------+----------+-----------+-----------+----------+----------+---------+
    |  70312771|  70312771| 0.502 sec | 0.502 sec |  70312771|  70312771|   none  |
    +----------+----------+-----------+-----------+----------+----------+---------+

    + Detail: 
        * Instance: 
        N/A

        * Loop: 
        +-------------------------------------------+----------+----------+----------+-----------+-----------+-------+----------+
        |                                           |   Latency (cycles)  | Iteration|  Initiation Interval  |  Trip |          |
        |                 Loop Name                 |    min   |    max   |  Latency |  achieved |   target  | Count | Pipelined|
        +-------------------------------------------+----------+----------+----------+-----------+-----------+-------+----------+
        |- Loop 1                                   |     32768|     32768|         2|          1|          1|  32768|    yes   |
        |- Loop 2                                   |  70280000|  70280000|      7028|          -|          -|  10000|    no    |
        | + Loop 2.1                                |       128|       128|         2|          1|          1|    128|    yes   |
        | + Loop 2.2                                |      6896|      6896|       431|          -|          -|     16|    no    |
        |  ++ residual_center_vectors_L             |       132|       132|         6|          1|          1|    128|    yes   |
        |  ++ single_row_lookup_table_construction  |       290|       290|        36|          1|          1|    256|    yes   |
        +-------------------------------------------+----------+----------+----------+-----------+-----------+-------+----------+
```

### Resource

Wrapper of 2 PEs:

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|       27|    -|
|FIFO                 |       36|     -|     5994|     2150|    -|
|Instance             |      258|  1728|   178754|   137057|    -|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|       54|    -|
|Register             |        -|     -|        9|        -|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |      294|  1728|   184757|   139288|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |       21|    57|       21|       32|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |        7|    19|        7|       10|    0|
+---------------------+---------+------+---------+---------+-----+

+ Detail: 
    * Instance: 
    +---------------------------------------------+------------------------------------------+---------+-----+-------+-------+-----+
    |                   Instance                  |                  Module                  | BRAM_18K| DSP |   FF  |  LUT  | URAM|
    +---------------------------------------------+------------------------------------------+---------+-----+-------+-------+-----+
    |gather_lookup_table_10000_2_16_U0            |gather_lookup_table_10000_2_16_s          |        0|    0|     72|    832|    0|
    |lookup_table_construction_PE_10000_16_14_U0  |lookup_table_construction_PE_10000_16_14  |      129|  864|  89257|  67824|    0|
    |lookup_table_construction_PE_10000_16_15_U0  |lookup_table_construction_PE_10000_16_15  |      129|  864|  89256|  67815|    0|
    |replicate_center_vectors_10000_2_U0          |replicate_center_vectors_10000_2_s        |        0|    0|     68|    307|    0|
    |replicate_product_quantizer_2_U0             |replicate_product_quantizer_2_s           |        0|    0|     73|    147|    0|
    |replicate_query_vectors_10000_2_U0           |replicate_query_vectors_10000_2_s         |        0|    0|     28|    132|    0|
    +---------------------------------------------+------------------------------------------+---------+-----+-------+-------+-----+
    |Total                                        |                                          |      258| 1728| 178754| 137057|    0|
    +---------------------------------------------+------------------------------------------+---------+-----+-------+-------+-----+
```

Single PE:

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|      245|    -|
|FIFO                 |        -|     -|        -|        -|    -|
|Instance             |        -|   864|    71824|    63989|    -|
|Memory               |      129|     -|     1024|       64|    -|
|Multiplexer          |        -|     -|        -|     3398|    -|
|Register             |        -|     -|    16409|      128|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |      129|   864|    89257|    67824|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |        9|    28|       10|       15|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |        3|     9|        3|        5|    0|
+---------------------+---------+------+---------+---------+-----+
```

## single_lookup_table_construction_PE_optimized_version2

Similar as optimized_version1, except the fact that a wider data type is used for the center vector stream (16 float per cycle, thus the load stage of each nprobe is as low as 128 / 16 = 8 cycles).

### Performance

Same formula as the multiple PE version.

total latency = query_num * (D * II_load_query + L_load_query + nprobe * ((L_load_centroid + N_load_centroid * II_load_centroid) + (L_compute_row + N_compute_row * II_compute_row))) =
query_num * (L_load_query + nprobe * (L_load_and_compute_row))

In this equation, L_load_query = 129, L_load_and_compute_row = 307 (including iteration count)

To verify this, use query_num = 10000 and nprobe = 32, then 10000 * (129 + 32 * 307) = 99530000 is very close to 99600000 estimated by HLS

**Performance Verified on Hardware**

```
================================================================
== Performance Estimates
================================================================
+ Timing: 
    * Summary: 
    +--------+---------+----------+------------+
    |  Clock |  Target | Estimated| Uncertainty|
    +--------+---------+----------+------------+
    |ap_clk  | 7.14 ns | 5.040 ns |   1.93 ns  |
    +--------+---------+----------+------------+

+ Latency: 
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+---------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline|
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type  |
    +----------+----------+-----------+-----------+----------+----------+---------+
    |  99632771|  99632771| 0.712 sec | 0.712 sec |  99632771|  99632771|   none  |
    +----------+----------+-----------+-----------+----------+----------+---------+

    + Detail: 
        * Instance: 
        N/A

        * Loop: 
        +-----------------+----------+----------+----------+-----------+-----------+-------+----------+
        |                 |   Latency (cycles)  | Iteration|  Initiation Interval  |  Trip |          |
        |    Loop Name    |    min   |    max   |  Latency |  achieved |   target  | Count | Pipelined|
        +-----------------+----------+----------+----------+-----------+-----------+-------+----------+
        |- Loop 1         |     32768|     32768|         2|          1|          1|  32768|    yes   |
        |- Loop 2         |  99600000|  99600000|      9960|          -|          -|  10000|    no    |
        | + Loop 2.1      |       128|       128|         2|          1|          1|    128|    yes   |
        | + Loop 2.2      |      9824|      9824|       307|          -|          -|     32|    no    |
        |  ++ Loop 2.2.1  |        12|        12|         6|          1|          1|      8|    yes   |
        |  ++ Loop 2.2.2  |       290|       290|        36|          1|          1|    256|    yes   |
        +-----------------+----------+----------+----------+-----------+-----------+-------+----------+
```

### Resource

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|    21732|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        -|    864|    71824|    63856|    -|
|Memory               |      128|      -|     1024|       64|    0|
|Multiplexer          |        -|      -|        -|     3985|    -|
|Register             |        0|      -|    21551|      400|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |      128|    864|    94399|    90037|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        9|     28|       10|       20|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |        3|      9|        3|        6|    0|
+---------------------+---------+-------+---------+---------+-----+
```

## unused: dataflow version

Although the HLS reports seem to successfully infer dataflow, the performance cannot be achieved on hardware. See "dataflow_behavior_test" folder for more details.

version 2:

more parallelism + double buffering

to construct a LUT for a single scanned cell:
* for (d in 128): load residual_vector = (query_vector - centroid_vector)
* for (k in 256): compute a row of lookup table

Optimized version 2 not only applies full parallelism in step 2, but also using double buffer to overlap the 2 steps.

### Performance 

Again, the performance is capped by the gather unit:

query_num * nprobe * K_star = 10000 * 32 * 256 = 81920000

```
+ Latency: 
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+----------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline |
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type   |
    +----------+----------+-----------+-----------+----------+----------+----------+
    |  81920050|  81920050| 0.585 sec | 0.585 sec |  81920003|  81920003| dataflow |
    +----------+----------+-----------+-----------+----------+----------+----------+

    + Detail: 
        * Instance: 
        +---------------------------------------------+------------------------------------------+----------+----------+-----------+-----------+----------+----------+---------+
        |                                             |                                          |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline|
        |                   Instance                  |                  Module                  |    min   |    max   |    min    |    max    |    min   |    max   |   Type  |
        +---------------------------------------------+------------------------------------------+----------+----------+-----------+-----------+----------+----------+---------+
        |lookup_table_construction_PE_10000_16_21_U0  |lookup_table_construction_PE_10000_16_21  |  50222771|  50222771| 0.359 sec | 0.359 sec |  50222771|  50222771|   none  |
        |lookup_table_construction_PE_10000_16_22_U0  |lookup_table_construction_PE_10000_16_22  |  50222771|  50222771| 0.359 sec | 0.359 sec |  50222771|  50222771|   none  |
        |gather_lookup_table_10000_2_16_U0            |gather_lookup_table_10000_2_16_s          |  81920002|  81920002| 0.585 sec | 0.585 sec |  81920002|  81920002|   none  |
        |replicate_center_vectors_10000_2_U0          |replicate_center_vectors_10000_2_s        |  40960002|  40960002| 0.293 sec | 0.293 sec |  40960002|  40960002|   none  |
        |replicate_product_quantizer_2_U0             |replicate_product_quantizer_2_s           |     65538|     65538|  0.468 ms |  0.468 ms |     65538|     65538|   none  |
        |replicate_query_vectors_10000_2_U0           |replicate_query_vectors_10000_2_s         |   1280002|   1280002|  9.143 ms |  9.143 ms |   1280002|   1280002|   none  |
        +---------------------------------------------+------------------------------------------+----------+----------+-----------+-----------+----------+----------+---------+
```

For a single PE:


total latency = nprobe * (D * II_load_query + L_load_query + (L_dataflow + (nprobe / PE_num - 1) * L_per_loop))

In this equation, L_per_loop = 297, which equals to max(load_res, compute_LUT), where compute_LUT takes over, thus

total latency = nprobe * (D * II_load_query + L_load_query + (L_dataflow + (nprobe / PE_num - 1) * (L_compute + K_start * II_compute)))) = 10000 * (128 + (431 + 15 * 297)) = 50140000

4888 ~= 431 - 297 +  297 * 16

```
+ Latency: 
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+---------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline|
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type  |
    +----------+----------+-----------+-----------+----------+----------+---------+
    |  50222771|  50222771| 0.359 sec | 0.359 sec |  50222771|  50222771|   none  |
    +----------+----------+-----------+-----------+----------+----------+---------+

    + Detail: 
        * Instance: 
        +---------------------------------------+---------------------------+---------+---------+-----------+-----------+------+------+---------+
        |                                       |                           |  Latency (cycles) |   Latency (absolute)  |   Interval  | Pipeline|
        |                Instance               |           Module          |   min   |   max   |    min    |    max    |  min |  max |   Type  |
        +---------------------------------------+---------------------------+---------+---------+-----------+-----------+------+------+---------+
        |grp_dataflow_parent_loop_proc_fu_2456  |dataflow_parent_loop_proc  |     4888|     4888| 34.915 us | 34.915 us |  4888|  4888|   none  |
        +---------------------------------------+---------------------------+---------+---------+-----------+-----------+------+------+---------+

        * Loop: 
        +-------------+----------+----------+----------+-----------+-----------+-------+----------+
        |             |   Latency (cycles)  | Iteration|  Initiation Interval  |  Trip |          |
        |  Loop Name  |    min   |    max   |  Latency |  achieved |   target  | Count | Pipelined|
        +-------------+----------+----------+----------+-----------+-----------+-------+----------+
        |- Loop 1     |     32768|     32768|         2|          1|          1|  32768|    yes   |
        |- Loop 2     |  50190000|  50190000|      5019|          -|          -|  10000|    no    |
        | + Loop 2.1  |       128|       128|         1|          -|          -|    128|    no    |
        +-------------+----------+----------+----------+-----------+-----------+-------+----------+


dataflow_parent_loop:

+ Latency: 
    * Summary: 
    +---------+---------+-----------+-----------+------+------+---------+
    |  Latency (cycles) |   Latency (absolute)  |   Interval  | Pipeline|
    |   min   |   max   |    min    |    max    |  min |  max |   Type  |
    +---------+---------+-----------+-----------+------+------+---------+
    |     4888|     4888| 34.915 us | 34.915 us |  4888|  4888|   none  |
    +---------+---------+-----------+-----------+------+------+---------+

    + Detail: 
        * Instance: 
        +-----------------------+--------------------+---------+---------+----------+----------+-----+-----+----------+
        |                       |                    |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline |
        |        Instance       |       Module       |   min   |   max   |    min   |    max   | min | max |   Type   |
        +-----------------------+--------------------+---------+---------+----------+----------+-----+-----+----------+
        |dataflow_in_loop33_U0  |dataflow_in_loop33  |      431|      431| 3.079 us | 3.079 us |  297|  297| dataflow |
        +-----------------------+--------------------+---------+---------+----------+----------+-----+-----+----------+


dataflow_in_loop:

    * Summary: 
    +---------+---------+----------+----------+-----+-----+----------+
    |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline |
    |   min   |   max   |    min   |    max   | min | max |   Type   |
    +---------+---------+----------+----------+-----+-----+----------+
    |      431|      431| 3.079 us | 3.079 us |  297|  297| dataflow |
    +---------+---------+----------+----------+-----+-----+----------+

    + Detail: 
        * Instance: 
        +------------------------------------+-------------------------------+---------+---------+----------+----------+-----+-----+---------+
        |                                    |                               |  Latency (cycles) |  Latency (absolute) |  Interval | Pipeline|
        |              Instance              |             Module            |   min   |   max   |    min   |    max   | min | max |   Type  |
        +------------------------------------+-------------------------------+---------+---------+----------+----------+-----+-----+---------+
        |construct_single_distance_LUT_U1_1  |construct_single_distance_LUT  |      296|      296| 2.114 us | 2.114 us |  296|  296|   none  |
        |compute_residual_vector_U1_1        |compute_residual_vector        |      134|      134| 0.957 us | 0.957 us |  134|  134|   none  |
        +------------------------------------+-------------------------------+---------+---------+----------+----------+-----+-----+---------+

```

### Resource 

Wrapper of 2 PEs:

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|       27|    -|
|FIFO                 |       36|     -|     5994|     2150|    -|
|Instance             |      258|  1732|   179242|   142041|    -|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|       54|    -|
|Register             |        -|     -|        9|        -|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |      294|  1732|   185245|   144272|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |       21|    57|       21|       33|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |        7|    19|        7|       11|    0|
+---------------------+---------+------+---------+---------+-----+
```

Wrapper of a single PE:

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|      168|    -|
|FIFO                 |        -|     -|        -|        -|    -|
|Instance             |        0|   866|    89375|    65946|    -|
|Memory               |      129|     -|        0|        0|    -|
|Multiplexer          |        -|     -|        -|     4202|    -|
|Register             |        -|     -|      126|        -|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |      129|   866|    89501|    70316|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |        9|    28|       10|       16|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |        3|     9|        3|        5|    0|
+---------------------+---------+------+---------+---------+-----+
```

