#include "vadd.hpp"
#include <stdio.h>

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

    // Input unordered numbers
    hls::stream<float> s_input_stream[PE_NUM_DIST_COMP];
#pragma HLS stream variable=s_input_stream depth=4
#pragma HLS array_partition variable=s_input_stream dim=1

    hls::stream<float> s_merge_output_PE0;
    hls::stream<float> s_merge_output_PE1;
    hls::stream<float> s_merge_output_PE2;
    hls::stream<float> s_merge_output_PE3;
    hls::stream<float> s_merge_output_PE4;
    hls::stream<float> s_merge_output_PE5;
    hls::stream<float> s_merge_output_PE6;
    hls::stream<float> s_merge_output_PE7;
#pragma HLS stream variable=s_merge_output_PE0 depth=8
#pragma HLS stream variable=s_merge_output_PE1 depth=8
#pragma HLS stream variable=s_merge_output_PE2 depth=8
#pragma HLS stream variable=s_merge_output_PE3 depth=8
#pragma HLS stream variable=s_merge_output_PE4 depth=8
#pragma HLS stream variable=s_merge_output_PE5 depth=8
#pragma HLS stream variable=s_merge_output_PE6 depth=8
#pragma HLS stream variable=s_merge_output_PE7 depth=8

    hls::stream<float> s_merge_output;
#pragma HLS stream variable=s_merge_output depth=8

    broadcast_stream<MERGE_LEN * PE_NUM_SORT_MERGE, QUERY_NUM>(
        table_DDR0, 
        s_merge_output_PE0, s_merge_output_PE1, 
        s_merge_output_PE2, s_merge_output_PE3, 
        s_merge_output_PE4, s_merge_output_PE5, 
        s_merge_output_PE6, s_merge_output_PE7);

    top_level_merge<MERGE_LEN, QUERY_NUM>(
        s_merge_output_PE0, s_merge_output_PE1, 
        s_merge_output_PE2, s_merge_output_PE3, 
        s_merge_output_PE4, s_merge_output_PE5, 
        s_merge_output_PE6, s_merge_output_PE7, 
        s_merge_output);

    write_result<MERGE_LEN * QUERY_NUM>(s_merge_output, out_PLRAM);
}

template<const int total_len, const int query_num> 
void broadcast_stream(const float* data_source,
    hls::stream<float> &s_merge_output_PE0, hls::stream<float> &s_merge_output_PE1,
    hls::stream<float> &s_merge_output_PE2, hls::stream<float> &s_merge_output_PE3,
    hls::stream<float> &s_merge_output_PE4, hls::stream<float> &s_merge_output_PE5,
    hls::stream<float> &s_merge_output_PE6, hls::stream<float> &s_merge_output_PE7) {

    // given 8192 distance values (total_len) from DRAM, simulate the situation that
    //   the 8192 distance are sent out from 32 distance computation PEs
    //   PE0: 0~255 distances, so on and so forth

    float input_array[total_len];
#pragma HLS array_partition variable=input_array block factor=8

    // 8 sorted array [[array0] ... [array7]]
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        input_array[i] = data_source[i];
    }

    // TODO: reshape this array and add index
    for (int iter = 0; iter < query_num; iter++) { 
        for (int i = 0; i < total_len / PE_NUM_SORT_MERGE; i++) {
                s_merge_output_PE0.write(input_array[0 * total_len / PE_NUM_SORT_MERGE + i]);
                s_merge_output_PE1.write(input_array[1 * total_len / PE_NUM_SORT_MERGE + i]);
                s_merge_output_PE2.write(input_array[2 * total_len / PE_NUM_SORT_MERGE + i]);
                s_merge_output_PE3.write(input_array[3 * total_len / PE_NUM_SORT_MERGE + i]);
                s_merge_output_PE4.write(input_array[4 * total_len / PE_NUM_SORT_MERGE + i]);
                s_merge_output_PE5.write(input_array[5 * total_len / PE_NUM_SORT_MERGE + i]);
                s_merge_output_PE6.write(input_array[6 * total_len / PE_NUM_SORT_MERGE + i]);
                s_merge_output_PE7.write(input_array[7 * total_len / PE_NUM_SORT_MERGE + i]);
        }
    }
}

template<const int input_stream_len>
void load_stream_to_local(
    hls::stream<float>& s_input_stream, float input_array[input_stream_len]) {

    for (int i = 0; i < input_stream_len; i++) {
    // printf("load_stream_to_local, i = %d\n", i);
    #pragma HLS pipeline II=1
        input_array[i] = s_input_stream.read();
    }
}

template<const int input_stream_len>
void merge_filter_arrays(
    float input_array_0[input_stream_len],float input_array_1[input_stream_len],
    hls::stream<float>& s_merge_partial_output) {

    int count0, count1;
    float reg0, reg1;
    
    count0 = 0; 
    count1 = 0;

    // output the smallest 32 numbers and ids
    for (int i = 0; i < input_stream_len; i++) { 
    // printf("merge_filter_arrays, i = %d\n", i);
    #pragma HLS pipeline II=1

        reg0 = input_array_0[count0];
        reg1 = input_array_1[count1];

        if (reg0 <= reg1) {
            s_merge_partial_output.write(reg0);
            count0++;
        }
        else {
            s_merge_partial_output.write(reg1);
            count1++; 
        }
    }
}

template<const int input_stream_len, const int merge_num>
void merge_filter_streams(
    hls::stream<float>& s_merge_input_0, hls::stream<float>& s_merge_input_1,
    hls::stream<float>& s_merge_partial_output) {
    // This function merge two sorted streams to a single sorted stream, 
    // and ONLY output the smallest half

    float input_array_0[input_stream_len];
    float input_array_1[input_stream_len];
    
    for (int iter = 0; iter < merge_num; iter++) {
    // printf("merge_filter_streams, iter = %d\n", iter);
    #pragma HLS dataflow

        load_stream_to_local<input_stream_len>(s_merge_input_0, input_array_0);
        load_stream_to_local<input_stream_len>(s_merge_input_1, input_array_1);
        merge_filter_arrays<input_stream_len>(input_array_0, input_array_1, s_merge_partial_output);
    }
}

template<const int input_stream_len, const int query_num>
void top_level_merge(
    hls::stream<float>& s_merge_output_PE0, hls::stream<float>& s_merge_output_PE1,
    hls::stream<float>& s_merge_output_PE2, hls::stream<float>& s_merge_output_PE3, 
    hls::stream<float>& s_merge_output_PE4, hls::stream<float>& s_merge_output_PE5, 
    hls::stream<float>& s_merge_output_PE6, hls::stream<float>& s_merge_output_PE7, 
    hls::stream<float>& s_merge_output) {
    // merge the output from 8 Merge PEs to the final results (32 elements)
#pragma HLS dataflow

    hls::stream<float> s_merge_intermediate_stage_1_0;
#pragma HLS stream variable=s_merge_intermediate_stage_1_0 depth=8
    hls::stream<float> s_merge_intermediate_stage_1_1;
#pragma HLS stream variable=s_merge_intermediate_stage_1_1 depth=8
    hls::stream<float> s_merge_intermediate_stage_1_2;
#pragma HLS stream variable=s_merge_intermediate_stage_1_2 depth=8
    hls::stream<float> s_merge_intermediate_stage_1_3;
#pragma HLS stream variable=s_merge_intermediate_stage_1_3 depth=8

    hls::stream<float> s_merge_intermediate_stage_2_0;
#pragma HLS stream variable=s_merge_intermediate_stage_2_0 depth=8
    hls::stream<float> s_merge_intermediate_stage_2_1;
#pragma HLS stream variable=s_merge_intermediate_stage_2_1 depth=8

    // Stage 1
    merge_filter_streams<input_stream_len, query_num>(
        s_merge_output_PE0, s_merge_output_PE1, s_merge_intermediate_stage_1_0);
    merge_filter_streams<input_stream_len, query_num>(
        s_merge_output_PE2, s_merge_output_PE3, s_merge_intermediate_stage_1_1);
    merge_filter_streams<input_stream_len, query_num>(
        s_merge_output_PE4, s_merge_output_PE5, s_merge_intermediate_stage_1_2);
    merge_filter_streams<input_stream_len, query_num>(
        s_merge_output_PE6, s_merge_output_PE7, s_merge_intermediate_stage_1_3);
            
    // Stage 2
    merge_filter_streams<input_stream_len, query_num>(
        s_merge_intermediate_stage_1_0, s_merge_intermediate_stage_1_1, 
        s_merge_intermediate_stage_2_0);
    merge_filter_streams<input_stream_len, query_num>(
        s_merge_intermediate_stage_1_2, s_merge_intermediate_stage_1_3, 
        s_merge_intermediate_stage_2_1);

    // Stage 3
    merge_filter_streams<input_stream_len, query_num>(
        s_merge_intermediate_stage_2_0, s_merge_intermediate_stage_2_1, s_merge_output);
}

template<const int total_len>
void write_result(hls::stream<float>& out, float* out_array) {
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        out_array[i] = out.read();
    }
}