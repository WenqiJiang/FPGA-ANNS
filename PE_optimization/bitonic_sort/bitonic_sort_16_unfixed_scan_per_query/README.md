# Bitonic Sort Optimization Log

## First version

For each compare-swap iteration, using a single function, and connect the functions by dataflow.

Functions (inline off):
```
template<const int array_len, const int partition_num>
void compare_swap_range_head_tail(
    single_PQ_result* input_array, single_PQ_result* output_array) {
#pragma HLS inline off
```

Bitonic sort loop:
```
        for (int iter = 0; iter < iteration_per_query; iter++) {
#pragma HLS dataflow
            load_input_stream<16>(s_input, input_array);
            // Total: 15 sub-stages
            // Stage 1
            compare_swap_range_interval<16, 8>(input_array, out_stage1_0);

            // Stage 2: 2 -> 4
            compare_swap_range_head_tail<16, 4>(out_stage1_0, out_stage2_0);
            compare_swap_range_interval<16, 8>(out_stage2_0, out_stage2_1);

            // Stage 3: 4 -> 8
            compare_swap_range_head_tail<16, 2>(out_stage2_1, out_stage3_0);
            compare_swap_range_interval<16, 4>(out_stage3_0, out_stage3_1);
            compare_swap_range_interval<16, 8>(out_stage3_1, out_stage3_2);

            // Stage 4: 8 -> 16
            compare_swap_range_head_tail<16, 1>(out_stage3_2, out_stage4_0);
            compare_swap_range_interval<16, 2>(out_stage4_0, out_stage4_1);
            compare_swap_range_interval<16, 4>(out_stage4_1, out_stage4_2);
            compare_swap_range_interval<16, 8>(out_stage4_2, out_stage4_3);
            
            write_output_stream<16>(out_stage4_3, s_output);
        }
```

The problem is that when treating these units as independent function, many FIFOs are added to the dataflow loop, consuming many LUTs.