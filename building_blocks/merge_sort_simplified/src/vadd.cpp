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


    hls::stream<float> s_input_stream[32];
#pragma HLS stream variable=s_input_stream depth=s_input_stream_depth
#pragma HLS array_partition variable=s_input_stream dim=1

    hls::stream<float> s_result;
#pragma HLS stream variable=s_result depth=s_result_depth

//     hls::stream<float> s_result_stage1[16];
// #pragma HLS stream variable=s_result_stage1 depth=s_result_stage1_depth
// #pragma HLS array_partition variable=s_result_stage1 dim=1

//     hls::stream<float> s_result_stage2[8];
// #pragma HLS stream variable=s_result_stage2 depth=s_result_stage2_depth
// #pragma HLS array_partition variable=s_result_stage2 dim=1

//     hls::stream<float> s_result_stage3[4];
// #pragma HLS stream variable=s_result_stage3 depth=s_result_stage3_depth
// #pragma HLS array_partition variable=s_result_stage3 dim=1

//     hls::stream<float> s_result_stage4[2];
// #pragma HLS stream variable=s_result_stage4 depth=s_result_stage4_depth
// #pragma HLS array_partition variable=s_result_stage4 dim=1


    broadcast_stream<32>(table_DDR0, s_input_stream);
    // merge_stage1(s_input_stream, s_result_stage1);
    // merge_stage2(s_result_stage1, s_result_stage2);
    // merge_stage3(s_result_stage2, s_result_stage3);
    // merge_stage4(s_result_stage3, s_result_stage4);
    // merge_stage5(s_result_stage4, s_result);

    merge_sort(s_input_stream, s_result);

    write_result<32>(s_result, out_PLRAM);
}

template<const int total_len>
void broadcast_stream(const float* data_source, hls::stream<float> (&s_input_stream)[total_len]) {
    // broadcast the input to all streams
    float input_array[total_len];
#pragma HLS array_partition variable=input_array complete

    // printf("Broadcasting stream...\n");
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        input_array[i] = data_source[i];
    }

    for (int i = 0; i < total_len; i++) {
    #pragma HLS UNROLL
        s_input_stream[i].write(input_array[i]);
    }
    // printf("Finished broadcasting stream...\n");
}


template<const int input_stream_len>
void merge_streams(
    hls::stream<float>& s_input_stream_0, hls::stream<float>& s_input_stream_1,
    hls::stream<float>& s_output_stream
) {
#pragma HLS inline
    // This function merge two sorted streams to a single sorted stream, 
    // without filtering out elements like in merge_streams_nprobe.

    float input_array_0[input_stream_len];
    float input_array_1[input_stream_len];
    
    int count0, count1;
    
    for (int i = 0; i < input_stream_len; i++) {
    #pragma HLS pipeline II=1
        input_array_0[i] = s_input_stream_0.read();
        input_array_1[i] = s_input_stream_1.read(); 
    }

    count0 = 0; 
    count1 = 0;

    // output the smallest 32 numbers and ids
    for (int i = 0; i < 2 * input_stream_len; i++) { 
    #pragma HLS pipeline II=1
        if (count0 >= input_stream_len) {
            s_output_stream.write(input_array_1[count1]);
            count1++;
        }
        else if (count1 >= input_stream_len) {
            s_output_stream.write(input_array_0[count0]);
            count0++; 
        }
        else if (input_array_0[count0] <= input_array_1[count1]) {
            s_output_stream.write(input_array_0[count0]);
            count0++;
        }
        else if (input_array_0[count0] > input_array_1[count1]) {
            s_output_stream.write(input_array_1[count1]);
            count1++; 
        }
    }
}

template<const int total_len>
void write_result(hls::stream<float>& out, float* out_array) {
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        out_array[i] = out.read();
    }
}

void merge_stage1(
    hls::stream<float> (&s_input_stream)[32],
    hls::stream<float> (&s_result_stage1)[16]) {
    // 32 -> 16, input len = 1
    for (int i = 0; i < 16; i++) {
    #pragma HLS UNROLL
        merge_streams<1>(s_input_stream[2 * i], s_input_stream[2 * i + 1], s_result_stage1[i]);
    }
}

void merge_stage2(
    hls::stream<float> (&s_result_stage1)[16],
    hls::stream<float> (&s_result_stage2)[8]) {
    // 16 -> 8, input len = 2
    for (int i = 0; i < 8; i++) {
    #pragma HLS UNROLL
        merge_streams<2>(s_result_stage1[2 * i], s_result_stage1[2 * i + 1], s_result_stage2[i]);
    } 
}

void merge_stage3(
    hls::stream<float> (&s_result_stage2)[8],
    hls::stream<float> (&s_result_stage3)[4]) {
    // 8 -> 4, input len = 4
    for (int i = 0; i < 4; i++) {
    #pragma HLS UNROLL
        merge_streams<4>(s_result_stage2[2 * i], s_result_stage2[2 * i + 1], s_result_stage3[i]);
    }
}

void merge_stage4(
    hls::stream<float> (&s_result_stage3)[4],
    hls::stream<float> (&s_result_stage4)[2]) {
    // 4 -> 2, input len = 8
    for (int i = 0; i < 2; i++) {
    #pragma HLS UNROLL
        merge_streams<8>(s_result_stage3[2 * i], s_result_stage3[2 * i + 1], s_result_stage4[i]);
    }
}

void merge_stage5(
    hls::stream<float> (&s_result_stage4)[2],
    hls::stream<float> &s_result) {
    // 2 -> 1, input len = 16
    merge_streams<16>(s_result_stage4[0], s_result_stage4[1], s_result);
}

void merge_sort(
    hls::stream<float> (&s_input_stream)[32],
    hls::stream<float> &s_result
) {
#pragma HLS dataflow
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

    merge_stage1(s_input_stream, s_result_stage1);
    merge_stage2(s_result_stage1, s_result_stage2);
    merge_stage3(s_result_stage2, s_result_stage3);
    merge_stage4(s_result_stage3, s_result_stage4);
    merge_stage5(s_result_stage4, s_result);
}