#include "vadd.hpp"
#include <stdio.h>

/////     Given 128 input streams (unordered), output the 16 smallest numbers /////

void vadd(  
    const t_axi* table_HBM0, const t_axi* table_HBM1, 
    const t_axi* table_HBM2, const t_axi* table_HBM3, 
    const t_axi* table_HBM4, const t_axi* table_HBM5, 
    const t_axi* table_HBM6, const t_axi* table_HBM7, 
    const t_axi* table_HBM8, const t_axi* table_HBM9, 
    const t_axi* table_HBM10, const t_axi* table_HBM11, 
    const t_axi* table_HBM12, const t_axi* table_HBM13, 
    const t_axi* table_HBM14, const t_axi* table_HBM15, 
    const t_axi* table_HBM16, const t_axi* table_HBM17, 
    const t_axi* table_HBM18, const t_axi* table_HBM19, 
    const t_axi* table_HBM20, const t_axi* table_HBM21, 
    const t_axi* table_HBM22, const t_axi* table_HBM23, 
    const t_axi* table_HBM24, const t_axi* table_HBM25, 
    const t_axi* table_HBM26, const t_axi* table_HBM27, 
    const t_axi* table_HBM28, const t_axi* table_HBM29, 
    const t_axi* table_HBM30, const t_axi* table_HBM31, 
    const t_axi* table_DDR0, const t_axi* table_DDR1,
    float* out_PLRAM
    )
{
#pragma HLS INTERFACE m_axi port=table_HBM0  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=table_HBM1  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=table_HBM2  offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=table_HBM3  offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=table_HBM4  offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=table_HBM5  offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=table_HBM6  offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=table_HBM7  offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=table_HBM8  offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=table_HBM9  offset=slave bundle=gmem9
#pragma HLS INTERFACE m_axi port=table_HBM10  offset=slave bundle=gmem10
#pragma HLS INTERFACE m_axi port=table_HBM11  offset=slave bundle=gmem11
#pragma HLS INTERFACE m_axi port=table_HBM12  offset=slave bundle=gmem12
#pragma HLS INTERFACE m_axi port=table_HBM13  offset=slave bundle=gmem13
#pragma HLS INTERFACE m_axi port=table_HBM14  offset=slave bundle=gmem14
#pragma HLS INTERFACE m_axi port=table_HBM15  offset=slave bundle=gmem15
#pragma HLS INTERFACE m_axi port=table_HBM16  offset=slave bundle=gmem16
#pragma HLS INTERFACE m_axi port=table_HBM17  offset=slave bundle=gmem17
#pragma HLS INTERFACE m_axi port=table_HBM18  offset=slave bundle=gmem18
#pragma HLS INTERFACE m_axi port=table_HBM19  offset=slave bundle=gmem19
#pragma HLS INTERFACE m_axi port=table_HBM20  offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=table_HBM21  offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=table_HBM22  offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=table_HBM23  offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=table_HBM24  offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=table_HBM25  offset=slave bundle=gmem25
#pragma HLS INTERFACE m_axi port=table_HBM26  offset=slave bundle=gmem26
#pragma HLS INTERFACE m_axi port=table_HBM27  offset=slave bundle=gmem27
#pragma HLS INTERFACE m_axi port=table_HBM28  offset=slave bundle=gmem28
#pragma HLS INTERFACE m_axi port=table_HBM29  offset=slave bundle=gmem29
#pragma HLS INTERFACE m_axi port=table_HBM30  offset=slave bundle=gmem30
#pragma HLS INTERFACE m_axi port=table_HBM31  offset=slave bundle=gmem31

#pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
#pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=out_PLRAM offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=table_HBM0  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM1  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM2  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM3  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM4  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM5  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM6  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM7  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM8  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM9  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM10  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM11  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM12  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM13  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM14  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM15  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM16  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM17  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM18  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM19  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM20  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM21  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM22  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM23  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM24  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM25  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM26  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM27  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM28  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM29  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM30  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM31  bundle=control

#pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
#pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

#pragma HLS INTERFACE s_axilite port=out_PLRAM bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control

#pragma HLS dataflow

    hls::stream<float> input_stream[2][16];
#pragma HLS array_partition variable=input_stream complete
    hls::stream<float> output_stream[16];
#pragma HLS array_partition variable=output_stream dim=1

    broadcast_array<2, 16>(table_HBM0, input_stream);

    sort_and_reduction<2, 16>(input_stream, output_stream);

    write_result<16>(output_stream, out_PLRAM);
}

template<const int dim1, const int dim2>
void broadcast_array(
    const float* data_source, hls::stream<float> (&input_stream)[dim1][dim2]) {
    
    float array[dim1 * dim2];
#pragma HLS array_partition variable=array complete

    for (int i = 0; i < dim1 * dim2; i++) {
#pragma HLS pipeline II=1
        array[i] = data_source[i];
    }

    for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS pipeline II=1
        for (int i = 0; i < dim1; i++) {
#pragma HLS UNROLL
            for (int j = 0; j < dim2; j++) {
#pragma HLS UNROLL
                input_stream[i][j].write(array[i * dim2 + j]);
            }
        }
    }
}

////////////////////     Sorting Network Start    ////////////////////
void compare_swap(float* input_array, float* output_array, int idxA, int idxB) {
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

template<const int total_len, const int partition_num>
void compare_swap_range_head_tail(float* input_array, float* output_array) {
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
            compare_swap(input_array, output_array, 
                i * elements_per_partition + j, (i + 1) * elements_per_partition - 1 - j);
        }
    }
}

template<const int total_len, const int partition_num>
void compare_swap_range_interval(float* input_array, float* output_array) {
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
        compare_swap(input_array, output_array, 
            i * elements_per_partition + j, i * elements_per_partition + interval + j);
        }
    }
}

template<const int array_len>
void load_input_stream(
    hls::stream<float> (&input_stream)[array_len], float input_array[array_len]) {
#pragma HLS pipeline II=1
#pragma HLS inline off

    for (int s = 0; s < array_len; s++) {
#pragma HLS UNROLL 
        input_array[s] = input_stream[s].read();
    }
}

template<const int array_len>
void write_output_stream(
    float output_array[array_len], hls::stream<float> (&output_stream)[array_len]) {
#pragma HLS pipeline II=1
#pragma HLS inline off

    for (int s = 0; s < array_len; s++) {
#pragma HLS UNROLL 
        output_stream[s].write(output_array[s]);
    }
}

template<>
void bitonic_sort<16>(
    hls::stream<float> (&input_stream)[16],
    hls::stream<float> (&output_stream)[16]) {

    float input_array[16];
#pragma HLS array_partition variable=input_array complete

    float out_stage1_0[16];
#pragma HLS array_partition variable=out_stage1_0 complete

    float out_stage2_0[16];
    float out_stage2_1[16];
#pragma HLS array_partition variable=out_stage2_0 complete
#pragma HLS array_partition variable=out_stage2_1 complete

    float out_stage3_0[16];
    float out_stage3_1[16];
    float out_stage3_2[16];
#pragma HLS array_partition variable=out_stage3_0 complete
#pragma HLS array_partition variable=out_stage3_1 complete
#pragma HLS array_partition variable=out_stage3_2 complete

    float out_stage4_0[16];
    float out_stage4_1[16];
    float out_stage4_2[16];
    float out_stage4_3[16];
#pragma HLS array_partition variable=out_stage4_0 complete
#pragma HLS array_partition variable=out_stage4_1 complete
#pragma HLS array_partition variable=out_stage4_2 complete
#pragma HLS array_partition variable=out_stage4_3 complete


    for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS dataflow
        load_input_stream<16>(input_stream, input_array);
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
        
        write_output_stream<16>(out_stage4_3, output_stream);
    }
}
////////////////////     Sorting Network Ends    ////////////////////

////////////////////     Merge and Sort and Filter Network Starts    ////////////////////

void compare_select(
    float* input_array_A, float* input_array_B, 
    float* output_array, int idxA, int idxB) {
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

template<const int total_len>
void compare_select_range_head_tail(
    float* input_array_A, float* input_array_B, 
    float* output_array) {
    // e.g., in the image phase merge 4 -> 8, the 1st stage
    // Input these constants to make computation fast
#pragma HLS pipeline II=1
#pragma HLS inline off
  
    // A[0] <-> B[127], A[1] <-> B[126], etc.
    for (int j = 0; j < total_len; j++) {
#pragma HLS UNROLL
        compare_select(
            input_array_A, input_array_B, output_array, 
            j, total_len - 1 - j);
    }
}

template<>
void parallel_merge_sort<16>(
    hls::stream<float> (&input_stream_A)[16],
    hls::stream<float> (&input_stream_B)[16],
    hls::stream<float> (&output_stream)[16]) {
    
    // given 2 input sorted array A and B of len array_len, 
    // merge and sort and reduction to output array C of len array_len,
    // containing the smallest numbers among A and B. 

    float input_array_A[16];
    float input_array_B[16];
#pragma HLS array_partition variable=input_array_A complete
#pragma HLS array_partition variable=input_array_B complete

    float out_stage_0[128];
    float out_stage_1[128];
    float out_stage_2[128];
    float out_stage_3[128];
    float out_stage_4[128];
#pragma HLS array_partition variable=out_stage_0 complete
#pragma HLS array_partition variable=out_stage_1 complete
#pragma HLS array_partition variable=out_stage_2 complete
#pragma HLS array_partition variable=out_stage_3 complete
#pragma HLS array_partition variable=out_stage_4 complete

    for (int iter = 0; iter < SORT_ARRAY_NUM; iter++) {
#pragma HLS dataflow
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

        write_output_stream<16>(out_stage_4, output_stream);
    }
}

////////////////////     Merge and Sort and Filter Network Ends    ////////////////////


////////////////////    Top-level Starts    ////////////////////

template<const int loop_count>
void forward_stream(
    hls::stream<float> &input_stream, hls::stream<float> &output_stream) {
    for (int i = 0; i < loop_count; i++) {
#pragma HLS pipeline
        output_stream.write(input_stream.read());
    }
}

template<>
void sort_and_reduction<2, 16>(
    hls::stream<float> (&input_stream)[2][16],
    hls::stream<float> (&output_stream)[16]) {

#pragma HLS dataflow

    hls::stream<float> result_stage_0[2][16];
#pragma HLS array_partition variable=result_stage_0 complete


    for (int i = 0; i < 2; i++) {
#pragma HLS UNROLL
        bitonic_sort<16>(input_stream[i], result_stage_0[i]);
    }
    
    parallel_merge_sort<16>(result_stage_0[0], result_stage_0[1], output_stream); 
}

////////////////////    Top-level Starts    ////////////////////

template<const int total_len>
void write_result(hls::stream<float> (&output_stream)[total_len], float* output) {

    float local_array[total_len];
#pragma HLS array_partition variable=local_array complete

    for (int i = 0; i < SORT_ARRAY_NUM; i++) {
#pragma HLS pipeline II=1
        for (int s = 0; s < total_len; s++) {
#pragma HLS UNROLL 
            local_array[s] = output_stream[s].read();
        }
    }

    for (int i = 0; i < total_len; i++) {
#pragma HLS pipeline II=1
        output[i] = local_array[i];
    }
}