# distance estimation PE (by LUT addition)

For resource consumption, refer to the single PE version (distance_estimation_by_LUT_systolic). For performance estimation, refer to the wrapper version (distance_estimation_by_LUT_wrapper_systolic) since there's propagation delay between PEs.

## distance_estimation_by_LUT_systolic (fixed iteration number)

Used for performance estimation.

```
        * Loop: 
        +-------------+-----------+-----------+----------+-----------+-----------+--------+----------+
        |             |    Latency (cycles)   | Iteration|  Initiation Interval  |  Trip  |          |
        |  Loop Name  |    min    |    max    |  Latency |  achieved |   target  |  Count | Pipelined|
        +-------------+-----------+-----------+----------+-----------+-----------+--------+----------+
        |- Loop 1     |  164800000|  164800000|       515|          -|          -|  320000|    no    |
        | + Loop 1.1  |        256|        256|         2|          1|          1|     256|    yes   |
        | + Loop 1.2  |        254|        254|        63|          1|          1|     193|    yes   |
        +-------------+-----------+-----------+----------+-----------+-----------+--------+----------+
```

Total time = query_num * nprobe * ((L_load + N_load * II_compute) + (L_compute + N_compute * II_compute))

here, L_load = 2, N_load = 256, L_compute = 63

Take N_compute = 193, nprobe = 32 and query_num = 10000

10000 * 32 * ((2 + 256) + (63 + 193)) = 164480000 (very close to HLS estimation)

## distance_estimation_by_LUT_systolic 

The unfixed scan per iteration version, used as single PE resource estimation.

### Resource Consumption

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|      288|    -|
|FIFO                 |        -|      -|        -|        -|    -|
|Instance             |        -|     30|     3465|     3375|    -|
|Memory               |       16|      -|        0|        0|    0|
|Multiplexer          |        -|      -|        -|      842|    -|
|Register             |        0|      -|     1972|      824|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |       16|     30|     5437|     5329|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |        1|   ~0  |    ~0   |        1|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |    ~0   |   ~0  |    ~0   |    ~0   |    0|
+---------------------+---------+-------+---------+---------+-----+
```

## distance_estimation_by_LUT_wrapper_systolic

### Performance 

Single PE + delay

Total time = query_num * nprobe * ((L_load + N_load * II_compute + PE_num - 1) + (L_compute + N_compute * II_compute))

here, L_load = 2, N_load = 256, L_compute = 63, PE_num = 63

Take N_compute = 193, nprobe = 32 and query_num = 10000

10000 * 32 * ((2 + 256 + 63) + (62 + 193)) = 184320000 cycles = 184320000 / 140 / 1e6 = 1.317 s

Real Performance: 1306.35 ms (140MHz, suppose scanning 193 entries per Voronoi cell)

**Performance verified on hardware**

### Resource Utilization

**Should use 63 * single PE instead of using this for integrating the entire accelerator.**

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+-------+---------+---------+-----+
|         Name        | BRAM_18K| DSP48E|    FF   |   LUT   | URAM|
+---------------------+---------+-------+---------+---------+-----+
|DSP                  |        -|      -|        -|        -|    -|
|Expression           |        -|      -|        0|      482|    -|
|FIFO                 |        0|      -|     6804|    51030|    -|
|Instance             |     1008|   1890|   342727|   324084|    0|
|Memory               |        -|      -|        -|        -|    -|
|Multiplexer          |        -|      -|        -|     1188|    -|
|Register             |        -|      -|      198|        -|    -|
+---------------------+---------+-------+---------+---------+-----+
|Total                |     1008|   1890|   349729|   376784|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available SLR        |     1344|   3008|   869120|   434560|  320|
+---------------------+---------+-------+---------+---------+-----+
|Utilization SLR (%)  |       75|     62|       40|       86|    0|
+---------------------+---------+-------+---------+---------+-----+
|Available            |     4032|   9024|  2607360|  1303680|  960|
+---------------------+---------+-------+---------+---------+-----+
|Utilization (%)      |       25|     20|       13|       28|    0|
+---------------------+---------+-------+---------+---------+-----+
```

## Unused Version

There are two major stages for each nprobe: load distance LUT, and computation by LUT. Although dataflow should be able to cover the distance LUT loading, Vitis HLS fail to synthesize hardware that can double buffer the LUT under complex control flow (see "dataflow_behavior_test" for more details).

### distance_estimation_by_LUT_wrapper_systolic_double_buffer

Real Performance: 1357.5 ms (135MHz, suppose scanning 193 entries per Voronoi cell), this performance is exactly the same as without double buffer given the same frequency...
