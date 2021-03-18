# Parallel Merge Optmization Log

Reduce LUT usage from 29544 to 9588.

Optmization strategy: refer to bitonic_sort. Replace small PEs interconnected by dataflow by a large PE using a pipelined loop containing inline functions.

## Unoptmized Version

A number of not inlined function interconnected by dataflow, leading to unneeded FIFOs.

Code:
```
        for (int iter = 0; iter < iteration_per_query; iter++) {
#pragma HLS dataflow

            load_input_stream<16>(s_input_A, input_array_A);
            load_input_stream<16>(s_input_B, input_array_B);

            // select the smallest 128 numbers
            compare_select_range_head_tail<16>(
                input_array_A, input_array_B, out_stage_0);

            // sort the smallest 16 numbers
            /* Analogue to sorting 32 (a half of sorting 32) */
            compare_swap_range_interval<16, 1>(out_stage_0, out_stage_1);
            compare_swap_range_interval<16, 2>(out_stage_1, out_stage_2);
            compare_swap_range_interval<16, 4>(out_stage_2, out_stage_3);
            compare_swap_range_interval<16, 8>(out_stage_3, out_stage_4);

            write_output_stream<16>(out_stage_4, s_output);
        }
```

Report: 
```
================================================================
== Utilization Estimates
================================================================
* Summary: 
+---------------------+---------+------+---------+---------+-----+
|         Name        | BRAM_18K|  DSP |    FF   |   LUT   | URAM|
+---------------------+---------+------+---------+---------+-----+
|DSP                  |        -|     -|        -|        -|    -|
|Expression           |        -|     -|        0|      940|    -|
|FIFO                 |        0|     -|    22176|    15008|    -|
|Instance             |        -|     -|     7184|    11544|    -|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|     2052|    -|
|Register             |        -|     -|      230|        -|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |        0|     0|    29590|    29544|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |        0|     0|        3|        6|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |        0|     0|        1|        2|    0|
+---------------------+---------+------+---------+---------+-----+
```

## Optimized Version

Inline function, set II=1:

```
template<const int array_len>
void load_input_stream(
    hls::stream<single_PQ_result> (&s_input)[array_len], 
    single_PQ_result input_array[array_len]) {
#pragma HLS inline 

template<const int array_len>
void compare_select_range_head_tail(
    single_PQ_result* input_array_A, single_PQ_result* input_array_B, 
    single_PQ_result* output_array) {
    // e.g., in the image phase merge 4 -> 8, the 1st stage
    // Input these constants to make computation fast
#pragma HLS inline
```

Use a loop with pipeline:

```
        for (int iter = 0; iter < iteration_per_query; iter++) {
#pragma HLS pipeline II=1

            load_input_stream<16>(input_stream_A, input_array_A);
            load_input_stream<16>(input_stream_B, input_array_B);

            // select the smallest 128 numbers
            compare_select_range_head_tail<16>(
                input_array_A, input_array_B, out_stage_0);

            // sort the smallest 16 numbers
            /* Analogue to sorting 32 (a half of sorting 32) */
            compare_swap_range_interval<16, 1>(out_stage_0, out_stage_1);
            compare_swap_range_interval<16, 2>(out_stage_1, out_stage_2);
            compare_swap_range_interval<16, 4>(out_stage_2, out_stage_3);
            compare_swap_range_interval<16, 8>(out_stage_3, out_stage_4);

            write_output_stream<16>(out_stage_4, s_output);
        }
```

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
|Expression           |        -|     -|        0|     8608|    -|
|FIFO                 |        -|     -|        -|        -|    -|
|Instance             |        -|     -|        0|       27|    -|
|Memory               |        -|     -|        -|        -|    -|
|Multiplexer          |        -|     -|        -|      921|    -|
|Register             |        -|     -|     7272|       32|    -|
+---------------------+---------+------+---------+---------+-----+
|Total                |        0|     0|     7272|     9588|    0|
+---------------------+---------+------+---------+---------+-----+
|Available SLR        |     1344|  3008|   869120|   434560|  320|
+---------------------+---------+------+---------+---------+-----+
|Utilization SLR (%)  |        0|     0|    ~0   |        2|    0|
+---------------------+---------+------+---------+---------+-----+
|Available            |     4032|  9024|  2607360|  1303680|  960|
+---------------------+---------+------+---------+---------+-----+
|Utilization (%)      |        0|     0|    ~0   |    ~0   |    0|
+---------------------+---------+------+---------+---------+-----+
```
