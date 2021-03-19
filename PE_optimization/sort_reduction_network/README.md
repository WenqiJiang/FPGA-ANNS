# Performance

The performance is tested on "xxx", which is equivalent to the unfixed scan per query version of "xxx".

## Real Performance

Real Performance = xxx ms

140 MHz, 10000 query, 10000 scan per query

Theoretical performance  = 10000 * 10000 / 140 / 1e6 = 714.285 ms

Conclusion: Reaches theoretical performance

## Resource

# Sort Reduction Optimization Log

**We reduce the LUT usage from 297771 to 90548.** (Vitis consumes slightly more resources than the synthesis result of vitis_hls, I am not sure why)

First, inline the compare-swapt units and interconnected them by pipeline loop.

Second, let bitonic sort and parallel merge be in the same control loop

Third (not implemented), although we can further reduce the resource consumption by removing the FIFOs between bitonic sort and parallel merge, letting all the connections filled by registers, this only reduces ~10% LUTs. The price of breaking modularity is not worth for such marginal saving.

## Unoptmized Version

Compare-swap units are independent PEs interconnected by dataflow.

FF 306481 

LUT 297771

Resource:

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|        4|    -|
|FIFO                 |        0|     -|    15939|    10627|    -|
|Instance             |        4|     -|   310768|   305138|    -|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|        -|    -|
|Register             |        -|     -|        -|        -|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |        4|     0|   326707|   315769|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |     0|       37|       72|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |    ~0   |     0|       12|       24|    0|
+---------------------+---------+------+---------+---------+-----+

+ Detail: 
    * Instance: 
    +---------------------------------------+------------------------------------+---------+----+--------+--------+-----+
    |                Instance               |               Module               | BRAM_18K| DSP|   FF   |   LUT  | URAM|
    +---------------------------------------+------------------------------------+---------+----+--------+--------+-----+
    |dummy_input_sender_10000_10000_114_U0  |dummy_input_sender_10000_10000_114  |        0|   0|      35|    1409|    0|
    |sort_and_reduction_10000_10000_U0      |sort_and_reduction_10000_10000_s    |        0|   0|  306481|  297771|    0|
    |vadd_control_s_axi_U                   |vadd_control_s_axi                  |        0|   0|    2486|    4520|    0|
    |vadd_gmem34_m_axi_U                    |vadd_gmem34_m_axi                   |        4|   0|     566|     766|    0|
    |write_result_10000_10000_U0            |write_result_10000_10000_s          |        0|   0|    1200|     672|    0|
    +---------------------------------------+------------------------------------+---------+----+--------+--------+-----+
    |Total                                  |                                    |        4|   0|  310768|  305138|    0|
    +---------------------------------------+------------------------------------+---------+----+--------+--------+-----+

```

## Optimized Version 1

Inline the compare-swapt units and interconnected them by pipeline loop. Bitonic sort and parallel merge still have independent control logic.

FF 86331

LUT 108079

Resource:

```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|        4|    -|
|FIFO                 |        0|     -|    15939|    10627|    -|
|Instance             |        8|     -|    93572|   116811|    -|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|        -|    -|
|Register             |        -|     -|        -|        -|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |        8|     0|   109511|   127442|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |     0|       12|       29|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |    ~0   |     0|        4|        9|    0|
+---------------------+---------+------+---------+---------+-----+

+ Detail: 
    * Instance: 
    +--------------------------------------+-----------------------------------+---------+----+-------+--------+-----+
    |               Instance               |               Module              | BRAM_18K| DSP|   FF  |   LUT  | URAM|
    +--------------------------------------+-----------------------------------+---------+----+-------+--------+-----+
    |dummy_input_sender_10000_10000_53_U0  |dummy_input_sender_10000_10000_53  |        0|   0|   2423|    2008|    0|
    |sort_and_reduction_10000_10000_U0     |sort_and_reduction_10000_10000_s   |        0|   0|  86331|  108079|    0|
    |vadd_control_s_axi_U                  |vadd_control_s_axi                 |        0|   0|   2486|    4520|    0|
    |vadd_gmem32_m_axi_U                   |vadd_gmem32_m_axi                  |        4|   0|    566|     766|    0|
    |vadd_gmem34_m_axi_U                   |vadd_gmem34_m_axi                  |        4|   0|    566|     766|    0|
    |write_result_10000_10000_U0           |write_result_10000_10000_s         |        0|   0|   1200|     672|    0|
    +--------------------------------------+-----------------------------------+---------+----+-------+--------+-----+
    |Total                                 |                                   |        8|   0|  93572|  116811|    0|
    +--------------------------------------+-----------------------------------+---------+----+-------+--------+-----+

```

## Optimized Version 2

Apart from the basic compare-swap unit, also inline bitonic sort and parallel merge, and them in the same control loop. 

This seems only marginally reduces resources.

FF 85691

LUT 103612

Inline bitonic sort and parallel merge:

```
    template<const int query_num, const int iteration_per_query>
    void parallel_merge_sort_16(
        hls::stream<single_PQ_result> (&s_input_A)[16],
        hls::stream<single_PQ_result> (&s_input_B)[16],
        hls::stream<single_PQ_result> (&s_output)[16]) {
#pragma HLS inline

    template<const int query_num, const int iteration_per_query>
    void bitonic_sort_16(
        hls::stream<single_PQ_result> (&s_input)[16],
        hls::stream<single_PQ_result> (&s_output)[16]) {
#pragma HLS inline
```

Put them in the same control loop:

```
            for (int iter = 0; iter < iteration_per_query; iter++) {
#pragma HLS pipeline II=1

                    for (int s = 0; s < 4; s++) {
#pragma HLS UNROLL
                        sort_reduction_64_to_16_with_vecID::bitonic_sort_16<query_num, iteration_per_query>(
                            s_input[s], 
                            s_result_stage_0[s]);
                    }

                    for (int s = 0; s < 2; s++) {
#pragma HLS UNROLL
                        sort_reduction_64_to_16_with_vecID::parallel_merge_sort_16<query_num, iteration_per_query>(
                            s_result_stage_0[2 * s], 
                            s_result_stage_0[2 * s + 1], 
                            s_result_stage_1[s]);
                    }

                    sort_reduction_64_to_16_with_vecID::parallel_merge_sort_16<query_num, iteration_per_query>(
                        s_result_stage_1[0], 
                        s_result_stage_1[1], 
                        s_output);
                }
            }
```

Resource:

```
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|        4|    -|
|FIFO                 |        0|     -|    15939|    10627|    -|
|Instance             |        8|     -|    92932|   112344|    -|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|        -|    -|
|Register             |        -|     -|        -|        -|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |        8|     0|   108871|   122975|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |    ~0   |     0|       12|       28|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |    ~0   |     0|        4|        9|    0|
+---------------------+---------+------+---------+---------+-----+

+ Detail: 
    * Instance: 
    +--------------------------------------+-----------------------------------+---------+----+-------+--------+-----+
    |               Instance               |               Module              | BRAM_18K| DSP|   FF  |   LUT  | URAM|
    +--------------------------------------+-----------------------------------+---------+----+-------+--------+-----+
    |dummy_input_sender_10000_10000_18_U0  |dummy_input_sender_10000_10000_18  |        0|   0|   2423|    2008|    0|
    |sort_and_reduction_10000_10000_U0     |sort_and_reduction_10000_10000_s   |        0|   0|  85691|  103612|    0|
    |vadd_control_s_axi_U                  |vadd_control_s_axi                 |        0|   0|   2486|    4520|    0|
    |vadd_gmem32_m_axi_U                   |vadd_gmem32_m_axi                  |        4|   0|    566|     766|    0|
    |vadd_gmem34_m_axi_U                   |vadd_gmem34_m_axi                  |        4|   0|    566|     766|    0|
    |write_result_10000_10000_U0           |write_result_10000_10000_s         |        0|   0|   1200|     672|    0|
    +--------------------------------------+-----------------------------------+---------+----+-------+--------+-----+
    |Total                                 |                                   |        8|   0|  92932|  112344|    0|
    +--------------------------------------+-----------------------------------+---------+----+-------+--------+-----+

```

Further zoom in the resource (hls_output/xcu280-fsvh2892-2L-e/syn/report/sort_and_reduction_10000_10000_s_csynth.rpt): 

Although there are some FIFOs interconnecting parallel merging and bitonic sort, these LUT consumption is marginal (12K compared to 104K in total). So there's no need for further optimization (it breaks the modularity but only achieves a little improvement).

```
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|    89384|    -|
|FIFO                 |        -|     -|    19008|    12672|    -|
|Instance             |        -|     -|        0|       27|    -|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|     1497|    -|
|Register             |        -|     -|    66683|       32|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |        0|     0|    85691|   103612|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |        0|     0|        9|       23|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |        0|     0|        3|        7|    0|
+---------------------+---------+------+---------+---------+-----+


    * FIFO: 
    +---------------------------------------+---------+-----+----+-----+------+-----+---------+
    |                  Name                 | BRAM_18K|  FF | LUT| URAM| Depth| Bits| Size:D*B|
    +---------------------------------------+---------+-----+----+-----+------+-----+---------+
    |s_result_stage_0_0_0_V_dist_fifo_U     |        0|   99|   0|    -|     8|   32|      256|
    |s_result_stage_0_0_0_V_vec_ID_fifo_U   |        0|   99|   0|    -|     8|   32|      256|
    |s_result_stage_0_0_10_V_dist_fifo_U    |        0|   99|   0|    -|     8|   32|      256|
    |s_result_stage_0_0_10_V_vec_ID_fifo_U  |        0|   99|   0|    -|     8|   32|      256|
    |s_result_stage_0_0_11_V_dist_fifo_U    |        0|   99|   0|    -|     8|   32|      256|

    ...

    ...
    
    ...

    |s_result_stage_1_1_7_V_vec_ID_fifo_U   |        0|   99|   0|    -|     8|   32|      256|
    |s_result_stage_1_1_8_V_dist_fifo_U     |        0|   99|   0|    -|     8|   32|      256|
    |s_result_stage_1_1_8_V_vec_ID_fifo_U   |        0|   99|   0|    -|     8|   32|      256|
    |s_result_stage_1_1_9_V_dist_fifo_U     |        0|   99|   0|    -|     8|   32|      256|
    |s_result_stage_1_1_9_V_vec_ID_fifo_U   |        0|   99|   0|    -|     8|   32|      256|
    +---------------------------------------+---------+-----+----+-----+------+-----+---------+
    |Total                                  |        0|19008|   0|    0|  1536| 6144|    49152|
    +---------------------------------------+---------+-----+----+-----+------+-----+---------+

```