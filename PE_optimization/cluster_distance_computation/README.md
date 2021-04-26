# Performance & Resource Analysis

Note: due to a bug in Vitis_hls 2019.2, these folders cannot by synthesized by vitis_hls -f synthesis.tcl (dataflow check error). To walk around this, build the project to hardware directly using the entire Vitis flow with "time make check TARGET=hw DEVICE=xilinx_u280_xdma_201920_3 VER=host_cpp".

We don't need double buffering query vector. For nlist <= 8192, the initialization overhead is 128/(8192+128). For nlist = 16384, it might needs more PEs (e.g. 4 PE), the initialization overhead is 128/(4096 + 128), negligible as well.

Although we implemented several optimized versions that save resources, the Vitis HLS flow somehow fail at the placement stage, thus we choose to use **distance_computation_PE_unoptimized** as the final version.

## Nlist constraint & Multiple PEs

There are 960 URAM slices on U280. Each with fixed width of 72 bit and size of 288Kb (given 64-bit real data width, the efficient size is 64 / 72 * 288 = 256Kb). 

Total available URAM size = 960 * 256 * 1024 / 8  = 31,457,280 bytes = 30 MB

We need 2 copies of coarse-grained centroids, one in this centroid distance computation step, another in the distance LUT construction step. Thus, we can only use half of the URAM resources in either step.

* nlist = 8192
  * 8192 * 128 * 4 = 4 MB
* nlist = 16384
  * 16384 * 128 * 4 = 8 MB
* nlist = 32768
  * 32768 * 128 * 4 = 16 MB > 30 / 2 = 15 MB, thus not possible

For the case of using multiple PEs (16384), simply multiple the resource consumption of optimized_version2 by PE number (2 or 4).

For the case of using float at URAM type, the effective URAM size is reduced by half, thus can only choose nlist < 8192 as the option.

## distance_computation_PE_unoptimized


Performance:

The SIMD width is set to 16, and due to the dependency of accumulation (could have been optimized by the versions below, but fails at placement), the II is 3.

Per PE computation rounds N_comp = Centroid_Per_PE * 128 / 16 = Centroid_Per_PE * 8. For the case that the centroids are evenly distributed, Centroid_Per_PE = nlist / PE_num. For the case that the centroids are unevenly distributed, e.g., PE num is set to 21, then need manual setting on Centroid_Per_PE.

Total time = query_num * (L_load + (L_comp + N_comp * II_comp)) 

here, L_load = 128, L_comp = 81, II_comp = 3

suppose query_num = 1024, N_comp = 8192 / 32 * 8 = 2048 (PE num = 32, nprobe = 8192), 

then 1024 * (128 + 81 + 2048 * 3) = 6505472 CC (very close to HLS report 6506496)


```
        * Loop: 
        +-------------+---------+---------+----------+-----------+-----------+-------+----------+
        |             |  Latency (cycles) | Iteration|  Initiation Interval  |  Trip |          |
        |  Loop Name  |   min   |   max   |  Latency |  achieved |   target  | Count | Pipelined|
        +-------------+---------+---------+----------+-----------+-----------+-------+----------+
        |- Loop 1     |    32768|    32768|         2|          1|          1|  32768|    yes   |
        |- Loop 2     |  6506496|  6506496|      6354|          -|          -|   1024|    no    |
        | + Loop 2.1  |      128|      128|         2|          1|          1|    128|    yes   |
        | + Loop 2.2  |     6221|     6221|        81|          3|          1|   2048|    yes   |
        +-------------+---------+---------+----------+-----------+-----------+-------+----------+

```

Resource consumption per PE:

The variable is URAM consumption. The minimum URAM consumption per PE is 8 (for computation concurrency reason). 

Constraints:
8 * 128 Kb = 1 Mb = 128 KB per PE -> Centroid_Per_PE * D * sizeof(float) <= 128 KB -> Centroid_Per_PE <=  256

* Centroid_Per_PE <=  256 -> 8 URAM
* 256 < Centroid_Per_PE <= 512 -> 16 URAM
* 512 < Centroid_Per_PE <= 768 -> 24 URAM
* 768 < Centroid_Per_PE <= 1024 -> 32 URAM

```

================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|      296|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        -|     40|     3477|     3275|    -|
|Memory               |        0|      -|      512|       64|    8|
|Multiplexer          |        -|      -|        -|     1277|    -|
|Register             |        0|      -|     3299|      544|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        0|     40|     7288|     5456|    8|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        0|      1|    ~0   |        1|    2|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |        0|   ~0  |    ~0   |    ~0   |  ~0 |
+---------------------+---------+-------+---------+---------+-----+

```



## Unused Versions

### distance_computation_PE_optimized_version1

This implementation use a single PE to compute the distance between the query vector and all cluster centers. The URAM consumption is not optimized, because the data format is float (URAM has fixed depth of 4096, thus using float limits the effective size of an URAM to 128Kb).

```
+ Timing: 
    * Summary: 
    +--------+---------+----------+------------+
    |  Clock |  Target | Estimated| Uncertainty|
    +--------+---------+----------+------------+
    |ap_clk  | 7.14 ns | 5.018 ns |   1.93 ns  |
    +--------+---------+----------+------------+

+ Latency: 
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+---------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline|
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type  |
    +----------+----------+-----------+-----------+----------+----------+---------+
    |  84638579|  84638579| 0.605 sec | 0.605 sec |  84638579|  84638579|   none  |
    +----------+----------+-----------+-----------+----------+----------+---------+

    + Detail: 
        * Instance: 
        N/A

        * Loop: 
        +-------------+----------+----------+----------+-----------+-----------+---------+----------+
        |             |   Latency (cycles)  | Iteration|  Initiation Interval  |   Trip  |          |
        |  Loop Name  |    min   |    max   |  Latency |  achieved |   target  |  Count  | Pipelined|
        +-------------+----------+----------+----------+-----------+-----------+---------+----------+
        |- Loop 1     |   1048576|   1048576|         2|          1|          1|  1048576|    yes   |
        |- Loop 2     |  83590000|  83590000|      8359|          -|          -|    10000|    no    |
        | + Loop 2.1  |       128|       128|         2|          1|          1|      128|    yes   |
        | + Loop 2.2  |      8226|      8226|        36|          1|          1|     8192|    yes   |
        +-------------+----------+----------+----------+-----------+-----------+---------+----------+
```

Resource:

The storage is partitioned to 128 banks. Each bank is contains 2 URAM slices, each as a float array.

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|      207|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        -|    894|    75289|    67231|    -|
|Memory               |        0|      -|        0|        0|  256|
|Multiplexer          |        -|      -|        -|      209|    -|
|Register             |        0|      -|    16666|       96|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        0|    894|    91955|    67743|  256|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        0|     29|       10|       15|   80|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |        0|      9|        3|        5|   26|
+---------------------+---------+-------+---------+---------+-----+
```

### distance_computation_PE_optimized_version2

Optimize URAM usage. Use ap_uint<64> instead of struct.

Same performance as "distance_computation_PE_optimized_version1" (thus shares *the same performance model*), half URAM consumption. 

Performance (given nlist=8192, query num=10000):

* Loop 2: computation loop (move from 1 iteration to the next = 1 CC)
  * Loop 2.1: load query vector 
    * II(2.1) = 1, N(2.1) = 128, L(2.1) = 2
  * Loop 2.2: compute and write distance
    * II(2.2) = 1, N(2.2) = 8192, L(2.2) = 36

Use this formula: t = II * N + L for a single function unit

Estimate the latency of Loop2  = **query_num * (1 + (128 + 2) + (nlist + 36))** = 10000 * (1 + (128 + 2) + (8192 + 36)) = 83590000

This is exactly the HLS estimation number.

**For settings with different nlist, just use this formula to estimate the performance**

Throughput = 10000 / 0.605 = 16528 QPS

```

+ Latency: 
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+---------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline|
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type  |
    +----------+----------+-----------+-----------+----------+----------+---------+
    |  84638579|  84638579| 0.605 sec | 0.605 sec |  84638579|  84638579|   none  |
    +----------+----------+-----------+-----------+----------+----------+---------+

    + Detail: 
        * Instance: 
        N/A

        * Loop: 
        +-------------+----------+----------+----------+-----------+-----------+--------+----------+
        |             |   Latency (cycles)  | Iteration|  Initiation Interval  |  Trip  |          |
        |  Loop Name  |    min   |    max   |  Latency |  achieved |   target  |  Count | Pipelined|
        +-------------+----------+----------+----------+-----------+-----------+--------+----------+
        |- Loop 1     |   1048576|   1048576|         3|          2|          2|  524288|    yes   |
        |- Loop 2     |  83590000|  83590000|      8359|          -|          -|   10000|    no    |
        | + Loop 2.1  |       128|       128|         2|          1|          1|     128|    yes   |
        | + Loop 2.2  |      8226|      8226|        36|          1|          1|    8192|    yes   |
        +-------------+----------+----------+----------+-----------+-----------+--------+----------+

================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|      202|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        -|    894|    75289|    67231|    -|
|Memory               |        0|      -|        0|        0|  128|
|Multiplexer          |        -|      -|        -|      224|    -|
|Register             |        0|      -|    16730|       96|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        0|    894|    92019|    67753|  128|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        0|     29|       10|       15|   40|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |        0|      9|        3|        5|   13|
+---------------------+---------+-------+---------+---------+-----+
```

### distance_computation_PE_optimized_version3

The first two versions will experience placement / routing error when integrating the entire accelerator. Thus, we partition it such that each PE is only responsible for vectorized computation of 8 floats (128/8 = 16PEs). And there's a gather PE to sum up all the results.

Performance:

The performance should be the same as version 2.

total time = query_num * (L_load_query + (L_comp + N_comp * II_comp))

Here, L_load_query = 128, L_comp = 36, N_comp = nlist

Assume query_num = 10000, then 10000 * (128 + (8192 + 36)) = 83560000, very close to HLS estimation, HLS estimated a smaller number because it thinks all 16 PEs can load query vector in parallel while in fact this process is serial.


```
    * Summary: 
    +----------+----------+-----------+-----------+----------+----------+----------+
    |   Latency (cycles)  |   Latency (absolute)  |       Interval      | Pipeline |
    |    min   |    max   |    min    |    max    |    min   |    max   |   Type   |
    +----------+----------+-----------+-----------+----------+----------+----------+
    |  83575529|  83575529| 0.597 sec | 0.597 sec |  82295540|  82295540| dataflow |
    +----------+----------+-----------+-----------+----------+----------+----------+
```


Resource:

*Use this in the paper, since the 16 small PE + gather PE together is a PE.*

The wrapper of 16 PE and gather function.

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|       32|    -|
|FIFO                 |        0|      -|      256|     2128|    -|
|Instance             |        0|    894|    96494|    75137|  128|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|       36|    -|
|Register             |        -|      -|        6|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        0|    894|    96756|    77333|  128|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        0|     29|       11|       17|   40|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |        0|      9|        3|        5|   13|
+---------------------+---------+-------+---------+---------+-----+
```

A single PE for partial computation:

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|      183|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        -|     54|     4489|     3991|    -|
|Memory               |        0|      -|        0|        0|    8|
|Multiplexer          |        -|      -|        -|      206|    -|
|Register             |        0|      -|     1244|       32|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |        0|     54|     5733|     4412|    8|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        0|      1|    ~0   |        1|    2|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |        0|   ~0  |    ~0   |    ~0   |  ~0 |
+---------------------+---------+-------+---------+---------+-----+
```

### Another Unused Version

There is one optimization approach not used in this project (optimized_1_distance_computation_PE, optimized_distance_computation_PE/). That is parallelized MAC accumulation instead of add tree. The reason is that the output rate of this method is not stable. Before outputing the first result, it takes 128 (D) * N (parallelism) cycles to finish accumulation (no value written into out FIFO), and then it suddenly outputs a lot of results.

Besides, the multiple PE version of the baseline is moved to the unused folder.