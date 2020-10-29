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

//     hls::stream<float> s_input_stream0;
//     hls::stream<float> s_input_stream1;
//     hls::stream<float> s_input_stream2;
//     hls::stream<float> s_input_stream3;
//     hls::stream<float> s_input_stream4;
//     hls::stream<float> s_input_stream5;
//     hls::stream<float> s_input_stream6;
//     hls::stream<float> s_input_stream7;
//     hls::stream<float> s_input_stream8;
//     hls::stream<float> s_input_stream9;
//     hls::stream<float> s_input_stream10;
//     hls::stream<float> s_input_stream11;
//     hls::stream<float> s_input_stream12;
//     hls::stream<float> s_input_stream13;
//     hls::stream<float> s_input_stream14;
//     hls::stream<float> s_input_stream15;
//     hls::stream<float> s_input_stream16;
//     hls::stream<float> s_input_stream17;
//     hls::stream<float> s_input_stream18;
//     hls::stream<float> s_input_stream19;
//     hls::stream<float> s_input_stream20;
//     hls::stream<float> s_input_stream21;
//     hls::stream<float> s_input_stream22;
//     hls::stream<float> s_input_stream23;
//     hls::stream<float> s_input_stream24;
//     hls::stream<float> s_input_stream25;
//     hls::stream<float> s_input_stream26;
//     hls::stream<float> s_input_stream27;
//     hls::stream<float> s_input_stream28;
//     hls::stream<float> s_input_stream29;
//     hls::stream<float> s_input_stream30;
//     hls::stream<float> s_input_stream31;
// #pragma HLS stream variable=s_input_stream0 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream1 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream2 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream3 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream4 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream5 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream6 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream7 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream8 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream9 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream10 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream11 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream12 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream13 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream14 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream15 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream16 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream17 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream18 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream19 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream20 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream21 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream22 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream23 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream24 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream25 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream26 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream27 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream28 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream29 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream30 depth=s_input_stream_depth
// #pragma HLS stream variable=s_input_stream31 depth=s_input_stream_depth

//     hls::stream<float> s_result_stage1_0;
//     hls::stream<float> s_result_stage1_1;
//     hls::stream<float> s_result_stage1_2;
//     hls::stream<float> s_result_stage1_3;
//     hls::stream<float> s_result_stage1_4;
//     hls::stream<float> s_result_stage1_5;
//     hls::stream<float> s_result_stage1_6;
//     hls::stream<float> s_result_stage1_7;
//     hls::stream<float> s_result_stage1_8;
//     hls::stream<float> s_result_stage1_9;
//     hls::stream<float> s_result_stage1_10;
//     hls::stream<float> s_result_stage1_11;
//     hls::stream<float> s_result_stage1_12;
//     hls::stream<float> s_result_stage1_13;
//     hls::stream<float> s_result_stage1_14;
//     hls::stream<float> s_result_stage1_15;
// #pragma HLS stream variable=s_result_stage1_0 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_1 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_2 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_3 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_4 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_5 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_6 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_7 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_8 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_9 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_10 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_11 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_12 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_13 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_14 depth=s_result_stage1_depth
// #pragma HLS stream variable=s_result_stage1_15 depth=s_result_stage1_depth

//     hls::stream<float> s_result_stage2_0;
//     hls::stream<float> s_result_stage2_1;
//     hls::stream<float> s_result_stage2_2;
//     hls::stream<float> s_result_stage2_3;
//     hls::stream<float> s_result_stage2_4;
//     hls::stream<float> s_result_stage2_5;
//     hls::stream<float> s_result_stage2_6;
//     hls::stream<float> s_result_stage2_7;
// #pragma HLS stream variable=s_result_stage2_0 depth=s_result_stage2_depth
// #pragma HLS stream variable=s_result_stage2_1 depth=s_result_stage2_depth
// #pragma HLS stream variable=s_result_stage2_2 depth=s_result_stage2_depth
// #pragma HLS stream variable=s_result_stage2_3 depth=s_result_stage2_depth
// #pragma HLS stream variable=s_result_stage2_4 depth=s_result_stage2_depth
// #pragma HLS stream variable=s_result_stage2_5 depth=s_result_stage2_depth
// #pragma HLS stream variable=s_result_stage2_6 depth=s_result_stage2_depth
// #pragma HLS stream variable=s_result_stage2_7 depth=s_result_stage2_depth

//     hls::stream<float> s_result_stage3_0;
//     hls::stream<float> s_result_stage3_1;
//     hls::stream<float> s_result_stage3_2;
//     hls::stream<float> s_result_stage3_3;
// #pragma HLS stream variable=s_result_stage3_0 depth=s_result_stage3_depth
// #pragma HLS stream variable=s_result_stage3_1 depth=s_result_stage3_depth
// #pragma HLS stream variable=s_result_stage3_2 depth=s_result_stage3_depth
// #pragma HLS stream variable=s_result_stage3_3 depth=s_result_stage3_depth

//     hls::stream<float> s_result_stage4_0;
//     hls::stream<float> s_result_stage4_1;
// #pragma HLS stream variable=s_result_stage4_0 depth=s_result_stage4_depth
// #pragma HLS stream variable=s_result_stage4_1 depth=s_result_stage4_depth

//     hls::stream<float> s_result;
// #pragma HLS stream variable=s_result depth=s_result_depth

    hls::stream<float> s_input_stream[32];
#pragma HLS stream variable=s_input_stream depth=s_input_stream_depth
#pragma HLS array_partition variable=s_input_stream dim=1

    hls::stream<float> s_result_stage1[16];
#pragma HLS stream variable=s_result_stage1 depth=s_result_stage1_depth
#pragma HLS array_partition variable=s_result_stage1 dim=1

    hls::stream<float> s_result_stage2[8];
#pragma HLS stream variable=s_result_stage2 depth=s_result_stage2_depth
#pragma HLS array_partition variable=s_result_stage2 dim=1

    hls::stream<float> s_result_stage3[4];
#pragma HLS stream variable=s_result_stage3 depth=s_result_stage3_depth
#pragma HLS array_partition variable=s_result_stage3 dim=1

    hls::stream<float> s_result_stage4[2];
#pragma HLS stream variable=s_result_stage4 depth=s_result_stage4_depth
#pragma HLS array_partition variable=s_result_stage4 dim=1

    hls::stream<float> s_result;
#pragma HLS stream variable=s_result depth=s_result_depth

    broadcast_stream<32>(table_DDR0, s_input_stream);
    bitonic_sort(input_array);
    write_result<32>(input_array, out_PLRAM);
}

template<const int total_len>
void broadcast_stream(const float* data_source, hls::stream<float> (&s_input_stream)[32]) {

    float input_array[32];
#pragma HLS array_partition variable=input_array complete

    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        input_array[i] = data_source[i];
    }

    for (int i = 0; i < total_len; i++) {
    #pragma HLS UNROLL
        s_input_stream[i].write(input_array[i]);
    }
}

template<const int input_stream_len>
void merge_streams(
    hls::stream<float>& s_input_distance_0, hls::stream<float>& s_input_distance_1,
    hls::stream<int>& s_input_cell_id_0, hls::stream<float>& s_input_cell_id_1,
    hls::stream<float>& s_output_distance, hls::stream<int>& s_output_cell_id
) {
    // This function merge two sorted streams to a single sorted stream, 
    // without filtering out elements like in merge_streams_nprobe.

    float reg0, reg1; 
    int id0, id1;
    int count0, count1;

    for (int query_id = 0; query_id < QUERY_NUM; query_id++) {
        
        reg0 = s_input_distance_0.read();
        reg1 = s_input_distance_1.read();
        id0 = s_input_cell_id_0.read();
        id1 = s_input_cell_id_1.read();
        count0 = 1; // the number of read operations
        count1 = 1;

        // output the smallest 32 numbers and ids
        for (int i = 0; i < 2 * input_stream_len; i++) { 
        #pragma HLS pipeline II=1
            if (reg0 < reg1 && count0 <= input_stream_len) {
                s_output_distance.write(reg0);
                s_output_cell_id.write(id0); 
                
                if (count0 < input_stream_len) {
                    reg0 = s_input_distance_0.read(); 
                }
                // after the final time, count0 = input_stream_len + 1
                count0++; 
            }
            else if (reg1 < reg0 && count1 <= input_stream_len) {
                s_output_distance.write(reg1);
                s_output_cell_id.write(id1); 
                
                if (count1 < input_stream_len) {
                    reg1 = s_input_distance_1.read(); 
                }
                // after the final time, count1 = input_stream_len + 1
                count1++; 
            }
            else if (count0 > input_stream_len) {
                s_output_distance.write(reg1);
                s_output_cell_id.write(id1); 
                count1++; 
            }
            else if (count1 > input_stream_len) {
                s_output_distance.write(reg0);
                s_output_cell_id.write(id0); 
                count0++; 
            }
        }
    }
}