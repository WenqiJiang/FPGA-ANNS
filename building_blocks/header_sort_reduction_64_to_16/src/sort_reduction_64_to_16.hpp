enum Order { Collect_smallest, Collect_largest };

// Note! Template Function Specialization is NOT allowed in class scope
namespace sort_reduction_64_to_16 {

    ////////////////////     Sorting Network Start    ////////////////////
    template<typename T>
    void compare_swap(T* input_array, T* output_array, int idxA, int idxB) {
        // note: idxA must < idxB
#pragma HLS inline
        if (input_array[idxA] > input_array[idxB]) {
            output_array[idxA] = input_array[idxB];
            output_array[idxB] = input_array[idxA];
        }
        else {
            output_array[idxA] = input_array[idxA];
            output_array[idxB] = input_array[idxB];
        }
    }

    template<typename T, const int total_len, const int partition_num>
    void compare_swap_range_head_tail(T* input_array, T* output_array) {
        // e.g., in the image phase merge 4 -> 8, the 1st stage
        // Input these constants to make computation fast
#pragma HLS pipeline II=1
#pragma HLS inline off
    
        const int elements_per_partition = total_len / partition_num;
        const int operations_per_partition = elements_per_partition / 2;

        for (int i = 0; i < partition_num; i++) {
#pragma HLS UNROLL
            for (int j = 0; j < operations_per_partition; j++) {
#pragma HLS UNROLL
                compare_swap<T>(input_array, output_array, 
                    i * elements_per_partition + j, (i + 1) * elements_per_partition - 1 - j);
            }
        }
    }

    template<typename T, const int total_len, const int partition_num>
    void compare_swap_range_interval(T* input_array, T* output_array) {
        // e.g., in the image phase merge 4 -> 8, the 2nd and 3rd stage
#pragma HLS pipeline II=1
#pragma HLS inline off
    
        const int elements_per_partition = total_len / partition_num;
        const int operations_per_partition = elements_per_partition / 2;
        const int interval = operations_per_partition;

        for (int i = 0; i < partition_num; i++) {
#pragma HLS UNROLL
            for (int j = 0; j < operations_per_partition; j++) {
#pragma HLS UNROLL
            compare_swap<T>(input_array, output_array, 
                i * elements_per_partition + j, i * elements_per_partition + interval + j);
            }
        }
    }

    template<typename T, const int array_len>
    void load_input_stream(
        hls::stream<T> (&input_stream)[array_len], T input_array[array_len]) {
#pragma HLS pipeline II=1
#pragma HLS inline off

        for (int s = 0; s < array_len; s++) {
#pragma HLS UNROLL 
            input_array[s] = input_stream[s].read();
        }
    }

    template<typename T, const int array_len>
    void write_output_stream(
        T output_array[array_len], hls::stream<T> (&output_stream)[array_len]) {
#pragma HLS pipeline II=1
#pragma HLS inline off

        for (int s = 0; s < array_len; s++) {
#pragma HLS UNROLL 
            output_stream[s].write(output_array[s]);
        }
    }

    template<typename T>
    void bitonic_sort_16(
        hls::stream<T> (&input_stream)[16],
        hls::stream<T> (&output_stream)[16]) {

        T input_array[16];
#pragma HLS array_partition variable=input_array complete

        T out_stage1_0[16];
#pragma HLS array_partition variable=out_stage1_0 complete

        T out_stage2_0[16];
        T out_stage2_1[16];
#pragma HLS array_partition variable=out_stage2_0 complete
#pragma HLS array_partition variable=out_stage2_1 complete

        T out_stage3_0[16];
        T out_stage3_1[16];
        T out_stage3_2[16];
#pragma HLS array_partition variable=out_stage3_0 complete
#pragma HLS array_partition variable=out_stage3_1 complete
#pragma HLS array_partition variable=out_stage3_2 complete

        T out_stage4_0[16];
        T out_stage4_1[16];
        T out_stage4_2[16];
        T out_stage4_3[16];
#pragma HLS array_partition variable=out_stage4_0 complete
#pragma HLS array_partition variable=out_stage4_1 complete
#pragma HLS array_partition variable=out_stage4_2 complete
#pragma HLS array_partition variable=out_stage4_3 complete


        for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS dataflow
            load_input_stream<T, 16>(input_stream, input_array);
            // Total: 15 sub-stages
            // Stage 1
            compare_swap_range_interval<T, 16, 8>(input_array, out_stage1_0);

            // Stage 2: 2 -> 4
            compare_swap_range_head_tail<T, 16, 4>(out_stage1_0, out_stage2_0);
            compare_swap_range_interval<T, 16, 8>(out_stage2_0, out_stage2_1);

            // Stage 3: 4 -> 8
            compare_swap_range_head_tail<T, 16, 2>(out_stage2_1, out_stage3_0);
            compare_swap_range_interval<T, 16, 4>(out_stage3_0, out_stage3_1);
            compare_swap_range_interval<T, 16, 8>(out_stage3_1, out_stage3_2);

            // Stage 4: 8 -> 16
            compare_swap_range_head_tail<T, 16, 1>(out_stage3_2, out_stage4_0);
            compare_swap_range_interval<T, 16, 2>(out_stage4_0, out_stage4_1);
            compare_swap_range_interval<T, 16, 4>(out_stage4_1, out_stage4_2);
            compare_swap_range_interval<T, 16, 8>(out_stage4_2, out_stage4_3);
            
            write_output_stream<T, 16>(out_stage4_3, output_stream);
        }
    }
    ////////////////////     Sorting Network Ends    ////////////////////

    ////////////////////     Merge and Sort and Filter Network Starts    ////////////////////

    template<typename T>
    void compare_select(
        T* input_array_A, T* input_array_B, 
        T* output_array, int idxA, int idxB) {
        // note: idxOut = idxA
        // select the smallest of the two as output
#pragma HLS inline
        if (input_array_A[idxA] > input_array_B[idxB]) {
            output_array[idxA] = input_array_B[idxB];
        }
        else {
            output_array[idxA] = input_array_A[idxA];
        }
    }

    template<typename T, const int total_len>
    void compare_select_range_head_tail(
        T* input_array_A, T* input_array_B, 
        T* output_array) {
        // e.g., in the image phase merge 4 -> 8, the 1st stage
        // Input these constants to make computation fast
#pragma HLS pipeline II=1
#pragma HLS inline off
    
        // A[0] <-> B[127], A[1] <-> B[126], etc.
        for (int j = 0; j < total_len; j++) {
#pragma HLS UNROLL
            compare_select<T>(
                input_array_A, input_array_B, output_array, 
                j, total_len - 1 - j);
        }
    }

    template<typename T>
    void parallel_merge_sort_16(
        hls::stream<T> (&input_stream_A)[16],
        hls::stream<T> (&input_stream_B)[16],
        hls::stream<T> (&output_stream)[16]) {
        
        // given 2 input sorted array A and B of len array_len, 
        // merge and sort and reduction to output array C of len array_len,
        // containing the smallest numbers among A and B. 

        T input_array_A[16];
        T input_array_B[16];
#pragma HLS array_partition variable=input_array_A complete
#pragma HLS array_partition variable=input_array_B complete

        T out_stage_0[128];
        T out_stage_1[128];
        T out_stage_2[128];
        T out_stage_3[128];
        T out_stage_4[128];
#pragma HLS array_partition variable=out_stage_0 complete
#pragma HLS array_partition variable=out_stage_1 complete
#pragma HLS array_partition variable=out_stage_2 complete
#pragma HLS array_partition variable=out_stage_3 complete
#pragma HLS array_partition variable=out_stage_4 complete

        for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS dataflow
            load_input_stream<T, 16>(input_stream_A, input_array_A);
            load_input_stream<T, 16>(input_stream_B, input_array_B);

            // select the smallest 128 numbers
            compare_select_range_head_tail<T, 16>(
                input_array_A, input_array_B, out_stage_0);

            // sort the smallest 16 numbers
            /* Analogue to sorting 32 (a half of sorting 32) */
            compare_swap_range_interval<T, 16, 1>(out_stage_0, out_stage_1);
            compare_swap_range_interval<T, 16, 2>(out_stage_1, out_stage_2);
            compare_swap_range_interval<T, 16, 4>(out_stage_2, out_stage_3);
            compare_swap_range_interval<T, 16, 8>(out_stage_3, out_stage_4);

            write_output_stream<T, 16>(out_stage_4, output_stream);
        }
    }
};

template<typename T, const int input_stream_num, const int output_stream_num, Order order> 
class Sort_reduction;

template<typename T> 
class Sort_reduction<T, 64, 16, Collect_smallest> {
    // input: 64 streams, 1 input per CC
    // output: 16 streams -> the top 16 smallest sorted numbers of the 64 inputs

    public:

        Sort_reduction() {
#pragma HLS inline
        }

        // Top-level function in this class: 64 (4 * 16) -> 16
        void sort_and_reduction(
            hls::stream<T> (&input_stream)[4][16],
            hls::stream<T> (&output_stream)[16]) {

            hls::stream<T> result_stage_0[4][16];
            hls::stream<T> result_stage_1[2][16];
#pragma HLS array_partition variable=result_stage_0 complete
#pragma HLS array_partition variable=result_stage_1 complete

#pragma HLS dataflow

            for (int i = 0; i < 4; i++) {
#pragma HLS UNROLL
                sort_reduction_64_to_16::bitonic_sort_16<T>(input_stream[i], result_stage_0[i]);
            }

            for (int i = 0; i < 2; i++) {
#pragma HLS UNROLL
                sort_reduction_64_to_16::parallel_merge_sort_16<T>(
                    result_stage_0[2 * i], result_stage_0[2 * i + 1], 
                    result_stage_1[i]);
            }

            sort_reduction_64_to_16::parallel_merge_sort_16<T>(
                result_stage_1[0], result_stage_1[1], output_stream);
        }

    private:

};