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

    hls::stream<float> s_input_stream_0;
    hls::stream<float> s_input_stream_1;
    hls::stream<float> s_input_stream_2;
    hls::stream<float> s_input_stream_3;
    hls::stream<float> s_input_stream_4;
    hls::stream<float> s_input_stream_5;
    hls::stream<float> s_input_stream_6;
    hls::stream<float> s_input_stream_7;
    hls::stream<float> s_input_stream_8;
    hls::stream<float> s_input_stream_9;
    hls::stream<float> s_input_stream_10;
    hls::stream<float> s_input_stream_11;
    hls::stream<float> s_input_stream_12;
    hls::stream<float> s_input_stream_13;
    hls::stream<float> s_input_stream_14;
    hls::stream<float> s_input_stream_15;
    hls::stream<float> s_input_stream_16;
    hls::stream<float> s_input_stream_17;
    hls::stream<float> s_input_stream_18;
    hls::stream<float> s_input_stream_19;
    hls::stream<float> s_input_stream_20;
    hls::stream<float> s_input_stream_21;
    hls::stream<float> s_input_stream_22;
    hls::stream<float> s_input_stream_23;
    hls::stream<float> s_input_stream_24;
    hls::stream<float> s_input_stream_25;
    hls::stream<float> s_input_stream_26;
    hls::stream<float> s_input_stream_27;
    hls::stream<float> s_input_stream_28;
    hls::stream<float> s_input_stream_29;
    hls::stream<float> s_input_stream_30;
    hls::stream<float> s_input_stream_31;
#pragma HLS stream variable=s_input_stream_0 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_1 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_2 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_3 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_4 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_5 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_6 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_7 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_8 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_9 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_10 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_11 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_12 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_13 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_14 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_15 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_16 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_17 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_18 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_19 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_20 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_21 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_22 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_23 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_24 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_25 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_26 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_27 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_28 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_29 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_30 depth=s_input_stream_depth
#pragma HLS stream variable=s_input_stream_31 depth=s_input_stream_depth

    hls::stream<float> s_result_stage1_0;
    hls::stream<float> s_result_stage1_1;
    hls::stream<float> s_result_stage1_2;
    hls::stream<float> s_result_stage1_3;
    hls::stream<float> s_result_stage1_4;
    hls::stream<float> s_result_stage1_5;
    hls::stream<float> s_result_stage1_6;
    hls::stream<float> s_result_stage1_7;
    hls::stream<float> s_result_stage1_8;
    hls::stream<float> s_result_stage1_9;
    hls::stream<float> s_result_stage1_10;
    hls::stream<float> s_result_stage1_11;
    hls::stream<float> s_result_stage1_12;
    hls::stream<float> s_result_stage1_13;
    hls::stream<float> s_result_stage1_14;
    hls::stream<float> s_result_stage1_15;
#pragma HLS stream variable=s_result_stage1_0 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_1 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_2 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_3 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_4 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_5 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_6 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_7 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_8 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_9 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_10 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_11 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_12 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_13 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_14 depth=s_result_stage1_depth
#pragma HLS stream variable=s_result_stage1_15 depth=s_result_stage1_depth

    hls::stream<float> s_result_stage2_0;
    hls::stream<float> s_result_stage2_1;
    hls::stream<float> s_result_stage2_2;
    hls::stream<float> s_result_stage2_3;
    hls::stream<float> s_result_stage2_4;
    hls::stream<float> s_result_stage2_5;
    hls::stream<float> s_result_stage2_6;
    hls::stream<float> s_result_stage2_7;
#pragma HLS stream variable=s_result_stage2_0 depth=s_result_stage2_depth
#pragma HLS stream variable=s_result_stage2_1 depth=s_result_stage2_depth
#pragma HLS stream variable=s_result_stage2_2 depth=s_result_stage2_depth
#pragma HLS stream variable=s_result_stage2_3 depth=s_result_stage2_depth
#pragma HLS stream variable=s_result_stage2_4 depth=s_result_stage2_depth
#pragma HLS stream variable=s_result_stage2_5 depth=s_result_stage2_depth
#pragma HLS stream variable=s_result_stage2_6 depth=s_result_stage2_depth
#pragma HLS stream variable=s_result_stage2_7 depth=s_result_stage2_depth

    hls::stream<float> s_result_stage3_0;
    hls::stream<float> s_result_stage3_1;
    hls::stream<float> s_result_stage3_2;
    hls::stream<float> s_result_stage3_3;
#pragma HLS stream variable=s_result_stage3_0 depth=s_result_stage3_depth
#pragma HLS stream variable=s_result_stage3_1 depth=s_result_stage3_depth
#pragma HLS stream variable=s_result_stage3_2 depth=s_result_stage3_depth
#pragma HLS stream variable=s_result_stage3_3 depth=s_result_stage3_depth

    hls::stream<float> s_result_stage4_0;
    hls::stream<float> s_result_stage4_1;
#pragma HLS stream variable=s_result_stage4_0 depth=s_result_stage4_depth
#pragma HLS stream variable=s_result_stage4_1 depth=s_result_stage4_depth

    hls::stream<float> s_result;
#pragma HLS stream variable=s_result depth=s_result_depth

    // printf("Program begins...\n");

    broadcast_stream<32>(table_DDR0, 
        s_input_stream_0, s_input_stream_1, s_input_stream_2, 
        s_input_stream_3, s_input_stream_4, s_input_stream_5, 
        s_input_stream_6, s_input_stream_7, s_input_stream_8, 
        s_input_stream_9, s_input_stream_10, s_input_stream_11, 
        s_input_stream_12, s_input_stream_13, s_input_stream_14, 
        s_input_stream_15, s_input_stream_16, s_input_stream_17, 
        s_input_stream_18, s_input_stream_19, s_input_stream_20, 
        s_input_stream_21, s_input_stream_22, s_input_stream_23, 
        s_input_stream_24, s_input_stream_25, s_input_stream_26, 
        s_input_stream_27, s_input_stream_28, s_input_stream_29, 
        s_input_stream_30, s_input_stream_31);

    // 32 -> 16, input len = 1
    merge_streams<1>(s_input_stream_0, s_input_stream_16, s_result_stage1_0);
    merge_streams<1>(s_input_stream_1, s_input_stream_17, s_result_stage1_1);
    merge_streams<1>(s_input_stream_2, s_input_stream_18, s_result_stage1_2);
    merge_streams<1>(s_input_stream_3, s_input_stream_19, s_result_stage1_3);
    merge_streams<1>(s_input_stream_4, s_input_stream_20, s_result_stage1_4);
    merge_streams<1>(s_input_stream_5, s_input_stream_21, s_result_stage1_5);
    merge_streams<1>(s_input_stream_6, s_input_stream_22, s_result_stage1_6);
    merge_streams<1>(s_input_stream_7, s_input_stream_23, s_result_stage1_7);
    merge_streams<1>(s_input_stream_8, s_input_stream_24, s_result_stage1_8);
    merge_streams<1>(s_input_stream_9, s_input_stream_25, s_result_stage1_9);
    merge_streams<1>(s_input_stream_10, s_input_stream_26, s_result_stage1_10);
    merge_streams<1>(s_input_stream_11, s_input_stream_27, s_result_stage1_11);
    merge_streams<1>(s_input_stream_12, s_input_stream_28, s_result_stage1_12);
    merge_streams<1>(s_input_stream_13, s_input_stream_29, s_result_stage1_13);
    merge_streams<1>(s_input_stream_14, s_input_stream_30, s_result_stage1_14);
    merge_streams<1>(s_input_stream_15, s_input_stream_31, s_result_stage1_15);

    // 16 -> 8, input len = 2
    merge_streams<2>(s_result_stage1_0, s_result_stage1_8, s_result_stage2_0);
    merge_streams<2>(s_result_stage1_1, s_result_stage1_9, s_result_stage2_1);
    merge_streams<2>(s_result_stage1_2, s_result_stage1_10, s_result_stage2_2);
    merge_streams<2>(s_result_stage1_3, s_result_stage1_11, s_result_stage2_3);
    merge_streams<2>(s_result_stage1_4, s_result_stage1_12, s_result_stage2_4);
    merge_streams<2>(s_result_stage1_5, s_result_stage1_13, s_result_stage2_5);
    merge_streams<2>(s_result_stage1_6, s_result_stage1_14, s_result_stage2_6);
    merge_streams<2>(s_result_stage1_7, s_result_stage1_15, s_result_stage2_7);

    // 8 -> 4, input len = 4
    merge_streams<4>(s_result_stage2_0, s_result_stage2_4, s_result_stage3_0);
    merge_streams<4>(s_result_stage2_1, s_result_stage2_5, s_result_stage3_1);
    merge_streams<4>(s_result_stage2_2, s_result_stage2_6, s_result_stage3_2);
    merge_streams<4>(s_result_stage2_3, s_result_stage2_7, s_result_stage3_3);

    // 4 -> 2, input len = 8
    merge_streams<8>(s_result_stage3_0, s_result_stage3_2, s_result_stage4_0);
    merge_streams<8>(s_result_stage3_1, s_result_stage3_3, s_result_stage4_1);

    // 2 -> 1, input len = 16
    merge_streams<16>(s_result_stage4_0, s_result_stage4_1, s_result);

    write_result<32>(s_result, out_PLRAM);
}

template<const int total_len>
void broadcast_stream(const float* data_source, 
    hls::stream<float> &s_input_stream_0, hls::stream<float> &s_input_stream_1, 
    hls::stream<float> &s_input_stream_2, hls::stream<float> &s_input_stream_3, 
    hls::stream<float> &s_input_stream_4, hls::stream<float> &s_input_stream_5, 
    hls::stream<float> &s_input_stream_6, hls::stream<float> &s_input_stream_7, 
    hls::stream<float> &s_input_stream_8, hls::stream<float> &s_input_stream_9, 
    hls::stream<float> &s_input_stream_10, hls::stream<float> &s_input_stream_11, 
    hls::stream<float> &s_input_stream_12, hls::stream<float> &s_input_stream_13, 
    hls::stream<float> &s_input_stream_14, hls::stream<float> &s_input_stream_15, 
    hls::stream<float> &s_input_stream_16, hls::stream<float> &s_input_stream_17, 
    hls::stream<float> &s_input_stream_18, hls::stream<float> &s_input_stream_19, 
    hls::stream<float> &s_input_stream_20, hls::stream<float> &s_input_stream_21, 
    hls::stream<float> &s_input_stream_22, hls::stream<float> &s_input_stream_23, 
    hls::stream<float> &s_input_stream_24, hls::stream<float> &s_input_stream_25, 
    hls::stream<float> &s_input_stream_26, hls::stream<float> &s_input_stream_27, 
    hls::stream<float> &s_input_stream_28, hls::stream<float> &s_input_stream_29, 
    hls::stream<float> &s_input_stream_30, hls::stream<float> &s_input_stream_31) {

    // broadcast the input to all streams
    float input_array[total_len];
#pragma HLS array_partition variable=input_array complete

    // printf("Broadcasting stream...\n");
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        input_array[i] = data_source[i];
    }

    s_input_stream_0.write(input_array[0]);
    s_input_stream_1.write(input_array[1]);
    s_input_stream_2.write(input_array[2]);
    s_input_stream_3.write(input_array[3]);
    s_input_stream_4.write(input_array[4]);
    s_input_stream_5.write(input_array[5]);
    s_input_stream_6.write(input_array[6]);
    s_input_stream_7.write(input_array[7]);
    s_input_stream_8.write(input_array[8]);
    s_input_stream_9.write(input_array[9]);
    s_input_stream_10.write(input_array[10]);
    s_input_stream_11.write(input_array[11]);
    s_input_stream_12.write(input_array[12]);
    s_input_stream_13.write(input_array[13]);
    s_input_stream_14.write(input_array[14]);
    s_input_stream_15.write(input_array[15]);
    s_input_stream_16.write(input_array[16]);
    s_input_stream_17.write(input_array[17]);
    s_input_stream_18.write(input_array[18]);
    s_input_stream_19.write(input_array[19]);
    s_input_stream_20.write(input_array[20]);
    s_input_stream_21.write(input_array[21]);
    s_input_stream_22.write(input_array[22]);
    s_input_stream_23.write(input_array[23]);
    s_input_stream_24.write(input_array[24]);
    s_input_stream_25.write(input_array[25]);
    s_input_stream_26.write(input_array[26]);
    s_input_stream_27.write(input_array[27]);
    s_input_stream_28.write(input_array[28]);
    s_input_stream_29.write(input_array[29]);
    s_input_stream_30.write(input_array[30]);
    s_input_stream_31.write(input_array[31]);

    // printf("Finished broadcasting stream...\n");
}


template<const int input_stream_len>
void merge_streams(
    hls::stream<float>& s_input_stream_0, hls::stream<float>& s_input_stream_1,
    hls::stream<float>& s_output_stream
) {
    // This function merge two sorted streams to a single sorted stream, 
    // without filtering out elements like in merge_streams_nprobe.

    // printf("Merging stream...%d\n", input_stream_len);
    float reg0, reg1; 
    int count0, count1;
        
    reg0 = s_input_stream_0.read();
    reg1 = s_input_stream_1.read();
    count0 = 1;  // the number of read operations
    count1 = 1;

    // output the smallest 32 numbers and ids
    for (int i = 0; i < 2 * input_stream_len; i++) { 
    #pragma HLS pipeline II=1

        // printf("i = %d\n", i);
        if ((reg0 < reg1) && (count0 <= input_stream_len)) {
            // printf("branch 1\n");
            s_output_stream.write(reg0);
            
            if (count0 < input_stream_len) {
                reg0 = s_input_stream_0.read(); 
            }
            // after the final time, count0 = input_stream_len + 1
            count0++; 
        }
        else if ((reg1 <= reg0) && (count1 <= input_stream_len)) {
            // printf("branch 2\n");
            s_output_stream.write(reg1);
            
            if (count1 < input_stream_len) {
                reg1 = s_input_stream_1.read(); 
            }
            // after the final time, count1 = input_stream_len + 1
            count1++; 
        }
        else if (count0 > input_stream_len) {
            // printf("branch 3\n");
            s_output_stream.write(reg1);
            if (count1 < input_stream_len) {
                reg1 = s_input_stream_1.read(); 
            }
            count1++; 
        }
        else if (count1 > input_stream_len) {
            // printf("branch 4\n");
            s_output_stream.write(reg0);
            if (count0 < input_stream_len) {
                reg0 = s_input_stream_0.read(); 
            }
            count0++; 
        }
        else {
            // printf("Unmatched Condition!\n");
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
