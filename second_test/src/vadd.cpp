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

    hls::stream<float> s_result_buffer_HBM0;
    hls::stream<float> s_result_buffer_HBM1;
    hls::stream<float> s_result_buffer_HBM2;
    hls::stream<float> s_result_buffer_HBM3;
    hls::stream<float> s_result_buffer_HBM4;
    hls::stream<float> s_result_buffer_HBM5;
    hls::stream<float> s_result_buffer_HBM6;
    hls::stream<float> s_result_buffer_HBM7;
    hls::stream<float> s_result_buffer_HBM8;
    hls::stream<float> s_result_buffer_HBM9;
    hls::stream<float> s_result_buffer_HBM10;
    hls::stream<float> s_result_buffer_HBM11;
    hls::stream<float> s_result_buffer_HBM12;
    hls::stream<float> s_result_buffer_HBM13;
    hls::stream<float> s_result_buffer_HBM14;
    hls::stream<float> s_result_buffer_HBM15;
    hls::stream<float> s_result_buffer_HBM16;
    hls::stream<float> s_result_buffer_HBM17;
    hls::stream<float> s_result_buffer_HBM18;
    hls::stream<float> s_result_buffer_HBM19;
    hls::stream<float> s_result_buffer_HBM20;
    hls::stream<float> s_result_buffer_HBM21;
    hls::stream<float> s_result_buffer_HBM22;
    hls::stream<float> s_result_buffer_HBM23;
    hls::stream<float> s_result_buffer_HBM24;
    hls::stream<float> s_result_buffer_HBM25;
    hls::stream<float> s_result_buffer_HBM26;
    hls::stream<float> s_result_buffer_HBM27;
    hls::stream<float> s_result_buffer_HBM28;
    hls::stream<float> s_result_buffer_HBM29;
    hls::stream<float> s_result_buffer_HBM30;
    hls::stream<float> s_result_buffer_HBM31;
#pragma HLS stream variable=s_result_buffer_HBM0 depth=4
#pragma HLS stream variable=s_result_buffer_HBM1 depth=4
#pragma HLS stream variable=s_result_buffer_HBM2 depth=4
#pragma HLS stream variable=s_result_buffer_HBM3 depth=4
#pragma HLS stream variable=s_result_buffer_HBM4 depth=4
#pragma HLS stream variable=s_result_buffer_HBM5 depth=4
#pragma HLS stream variable=s_result_buffer_HBM6 depth=4
#pragma HLS stream variable=s_result_buffer_HBM7 depth=4
#pragma HLS stream variable=s_result_buffer_HBM8 depth=4
#pragma HLS stream variable=s_result_buffer_HBM9 depth=4
#pragma HLS stream variable=s_result_buffer_HBM10 depth=4
#pragma HLS stream variable=s_result_buffer_HBM11 depth=4
#pragma HLS stream variable=s_result_buffer_HBM12 depth=4
#pragma HLS stream variable=s_result_buffer_HBM13 depth=4
#pragma HLS stream variable=s_result_buffer_HBM14 depth=4
#pragma HLS stream variable=s_result_buffer_HBM15 depth=4
#pragma HLS stream variable=s_result_buffer_HBM16 depth=4
#pragma HLS stream variable=s_result_buffer_HBM17 depth=4
#pragma HLS stream variable=s_result_buffer_HBM18 depth=4
#pragma HLS stream variable=s_result_buffer_HBM19 depth=4
#pragma HLS stream variable=s_result_buffer_HBM20 depth=4
#pragma HLS stream variable=s_result_buffer_HBM21 depth=4
#pragma HLS stream variable=s_result_buffer_HBM22 depth=4
#pragma HLS stream variable=s_result_buffer_HBM23 depth=4
#pragma HLS stream variable=s_result_buffer_HBM24 depth=4
#pragma HLS stream variable=s_result_buffer_HBM25 depth=4
#pragma HLS stream variable=s_result_buffer_HBM26 depth=4
#pragma HLS stream variable=s_result_buffer_HBM27 depth=4
#pragma HLS stream variable=s_result_buffer_HBM28 depth=4
#pragma HLS stream variable=s_result_buffer_HBM29 depth=4
#pragma HLS stream variable=s_result_buffer_HBM30 depth=4
#pragma HLS stream variable=s_result_buffer_HBM31 depth=4

//////////////////////////////    Distance Computation     ////////////////////////////// 
    estimate_distance_wrapper(
        table_HBM0, table_HBM1, table_HBM2, table_HBM3, 
        table_HBM4, table_HBM5, table_HBM6, table_HBM7, 
        table_HBM8, table_HBM9, table_HBM10, table_HBM11, 
        table_HBM12, table_HBM13, table_HBM14, table_HBM15, 
        table_HBM16, table_HBM17, table_HBM18, table_HBM19, 
        table_HBM20, table_HBM21, table_HBM22, table_HBM23, 
        table_HBM24, table_HBM25, table_HBM26, table_HBM27, 
        table_HBM28, table_HBM29, table_HBM30, table_HBM31, 
        s_result_buffer_HBM0, s_result_buffer_HBM1, 
        s_result_buffer_HBM2, s_result_buffer_HBM3, 
        s_result_buffer_HBM4, s_result_buffer_HBM5, 
        s_result_buffer_HBM6, s_result_buffer_HBM7, 
        s_result_buffer_HBM8, s_result_buffer_HBM9, 
        s_result_buffer_HBM10, s_result_buffer_HBM11, 
        s_result_buffer_HBM12, s_result_buffer_HBM13, 
        s_result_buffer_HBM14, s_result_buffer_HBM15, 
        s_result_buffer_HBM16, s_result_buffer_HBM17, 
        s_result_buffer_HBM18, s_result_buffer_HBM19, 
        s_result_buffer_HBM20, s_result_buffer_HBM21, 
        s_result_buffer_HBM22, s_result_buffer_HBM23, 
        s_result_buffer_HBM24, s_result_buffer_HBM25, 
        s_result_buffer_HBM26, s_result_buffer_HBM27, 
        s_result_buffer_HBM28, s_result_buffer_HBM29, 
        s_result_buffer_HBM30, s_result_buffer_HBM31);

//////////////////////////////     Write results     ////////////////////////////// 
    write_result(
        s_result_buffer_HBM0, s_result_buffer_HBM1, s_result_buffer_HBM2, s_result_buffer_HBM3, 
        s_result_buffer_HBM4, s_result_buffer_HBM5, s_result_buffer_HBM6, s_result_buffer_HBM7, 
        s_result_buffer_HBM8, s_result_buffer_HBM9, s_result_buffer_HBM10, s_result_buffer_HBM11, 
        s_result_buffer_HBM12, s_result_buffer_HBM13, s_result_buffer_HBM14, s_result_buffer_HBM15, 
        s_result_buffer_HBM16, s_result_buffer_HBM17, s_result_buffer_HBM18, s_result_buffer_HBM19, 
        s_result_buffer_HBM20, s_result_buffer_HBM21, s_result_buffer_HBM22, s_result_buffer_HBM23, 
        s_result_buffer_HBM24, s_result_buffer_HBM25, s_result_buffer_HBM26, s_result_buffer_HBM27, 
        s_result_buffer_HBM28, s_result_buffer_HBM29, s_result_buffer_HBM30, s_result_buffer_HBM31,
        out_PLRAM);
}

void estimate_distance_wrapper(
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
    hls::stream<float>& s_result_buffer_HBM0, hls::stream<float>& s_result_buffer_HBM1, 
    hls::stream<float>& s_result_buffer_HBM2, hls::stream<float>& s_result_buffer_HBM3, 
    hls::stream<float>& s_result_buffer_HBM4, hls::stream<float>& s_result_buffer_HBM5, 
    hls::stream<float>& s_result_buffer_HBM6, hls::stream<float>& s_result_buffer_HBM7, 
    hls::stream<float>& s_result_buffer_HBM8, hls::stream<float>& s_result_buffer_HBM9, 
    hls::stream<float>& s_result_buffer_HBM10, hls::stream<float>& s_result_buffer_HBM11, 
    hls::stream<float>& s_result_buffer_HBM12, hls::stream<float>& s_result_buffer_HBM13, 
    hls::stream<float>& s_result_buffer_HBM14, hls::stream<float>& s_result_buffer_HBM15, 
    hls::stream<float>& s_result_buffer_HBM16, hls::stream<float>& s_result_buffer_HBM17, 
    hls::stream<float>& s_result_buffer_HBM18, hls::stream<float>& s_result_buffer_HBM19, 
    hls::stream<float>& s_result_buffer_HBM20, hls::stream<float>& s_result_buffer_HBM21, 
    hls::stream<float>& s_result_buffer_HBM22, hls::stream<float>& s_result_buffer_HBM23, 
    hls::stream<float>& s_result_buffer_HBM24, hls::stream<float>& s_result_buffer_HBM25, 
    hls::stream<float>& s_result_buffer_HBM26, hls::stream<float>& s_result_buffer_HBM27, 
    hls::stream<float>& s_result_buffer_HBM28, hls::stream<float>& s_result_buffer_HBM29, 
    hls::stream<float>& s_result_buffer_HBM30, hls::stream<float>& s_result_buffer_HBM31
) {
//2097152 
    estimate_distance<2097152>(table_HBM0, 0, s_result_buffer_HBM0);
    estimate_distance<2097152>(table_HBM1, 0, s_result_buffer_HBM1);
    estimate_distance<2097152>(table_HBM2, 0, s_result_buffer_HBM2);
    estimate_distance<2097152>(table_HBM3, 0, s_result_buffer_HBM3);
    estimate_distance<2097152>(table_HBM4, 0, s_result_buffer_HBM4);
    estimate_distance<2097152>(table_HBM5, 0, s_result_buffer_HBM5);
    estimate_distance<2097152>(table_HBM6, 0, s_result_buffer_HBM6);
    estimate_distance<2097152>(table_HBM7, 0, s_result_buffer_HBM7);
    estimate_distance<2097152>(table_HBM8, 0, s_result_buffer_HBM8);
    estimate_distance<2097152>(table_HBM9, 0, s_result_buffer_HBM9);
    estimate_distance<2097152>(table_HBM10, 0, s_result_buffer_HBM10);
    estimate_distance<2097152>(table_HBM11, 0, s_result_buffer_HBM11);
    estimate_distance<2097152>(table_HBM12, 0, s_result_buffer_HBM12);
    estimate_distance<2097152>(table_HBM13, 0, s_result_buffer_HBM13);
    estimate_distance<2097152>(table_HBM14, 0, s_result_buffer_HBM14);
    estimate_distance<2097152>(table_HBM15, 0, s_result_buffer_HBM15);
    estimate_distance<2097152>(table_HBM16, 0, s_result_buffer_HBM16);
    estimate_distance<2097152>(table_HBM17, 0, s_result_buffer_HBM17);
    estimate_distance<2097152>(table_HBM18, 0, s_result_buffer_HBM18);
    estimate_distance<2097152>(table_HBM19, 0, s_result_buffer_HBM19);
    estimate_distance<2097152>(table_HBM20, 0, s_result_buffer_HBM20);
    estimate_distance<2097152>(table_HBM21, 0, s_result_buffer_HBM21);
    estimate_distance<2097152>(table_HBM22, 0, s_result_buffer_HBM22);
    estimate_distance<2097152>(table_HBM23, 0, s_result_buffer_HBM23);
    estimate_distance<2097152>(table_HBM24, 0, s_result_buffer_HBM24);
    estimate_distance<2097152>(table_HBM25, 0, s_result_buffer_HBM25);
    estimate_distance<2097152>(table_HBM26, 0, s_result_buffer_HBM26);
    estimate_distance<2097152>(table_HBM27, 0, s_result_buffer_HBM27);
    estimate_distance<2097152>(table_HBM28, 0, s_result_buffer_HBM28);
    estimate_distance<2097152>(table_HBM29, 0, s_result_buffer_HBM29);
    estimate_distance<2097152>(table_HBM30, 0, s_result_buffer_HBM30);
    estimate_distance<2097152>(table_HBM31, 0, s_result_buffer_HBM31);
}

void init_distance_table_partition(float table[256], float bias) {
    for (int j = 0; j < 256; j++) {
        #pragma HLS pipeline II=1
        table[j] = bias + j;
    }
}

template<const int PQ_NUM_PER_BANK>
void estimate_distance(
    const t_axi* table_RAM, const int start_logic_address,
    hls::stream<float>& s_result_buffer) {

    // partition scheme: each cycle: load 16 x one of 256 in parallel, thus block partition
    // but i am afraid HLS can't infer, because there's no gurantee that given the index,
    // the accesses will be in different buckets
    // Thus, MANUALLY unroll them.

    // 512 width -> 4 X PQ16 -> need 4 local distance table to compute in parallel
    float distance_lookup_table_local_A_0[256], distance_lookup_table_local_A_1[256], 
        distance_lookup_table_local_A_2[256], distance_lookup_table_local_A_3[256], 
        distance_lookup_table_local_A_4[256], distance_lookup_table_local_A_5[256], 
        distance_lookup_table_local_A_6[256], distance_lookup_table_local_A_7[256], 
        distance_lookup_table_local_A_8[256], distance_lookup_table_local_A_9[256], 
        distance_lookup_table_local_A_10[256], distance_lookup_table_local_A_11[256], 
        distance_lookup_table_local_A_12[256], distance_lookup_table_local_A_13[256], 
        distance_lookup_table_local_A_14[256], distance_lookup_table_local_A_15[256];

    float distance_lookup_table_local_B_0[256], distance_lookup_table_local_B_1[256], 
        distance_lookup_table_local_B_2[256], distance_lookup_table_local_B_3[256], 
        distance_lookup_table_local_B_4[256], distance_lookup_table_local_B_5[256], 
        distance_lookup_table_local_B_6[256], distance_lookup_table_local_B_7[256], 
        distance_lookup_table_local_B_8[256], distance_lookup_table_local_B_9[256], 
        distance_lookup_table_local_B_10[256], distance_lookup_table_local_B_11[256], 
        distance_lookup_table_local_B_12[256], distance_lookup_table_local_B_13[256], 
        distance_lookup_table_local_B_14[256], distance_lookup_table_local_B_15[256];

    float distance_lookup_table_local_C_0[256], distance_lookup_table_local_C_1[256], 
        distance_lookup_table_local_C_2[256], distance_lookup_table_local_C_3[256], 
        distance_lookup_table_local_C_4[256], distance_lookup_table_local_C_5[256], 
        distance_lookup_table_local_C_6[256], distance_lookup_table_local_C_7[256], 
        distance_lookup_table_local_C_8[256], distance_lookup_table_local_C_9[256], 
        distance_lookup_table_local_C_10[256], distance_lookup_table_local_C_11[256], 
        distance_lookup_table_local_C_12[256], distance_lookup_table_local_C_13[256], 
        distance_lookup_table_local_C_14[256], distance_lookup_table_local_C_15[256];

    float distance_lookup_table_local_D_0[256], distance_lookup_table_local_D_1[256], 
        distance_lookup_table_local_D_2[256], distance_lookup_table_local_D_3[256], 
        distance_lookup_table_local_D_4[256], distance_lookup_table_local_D_5[256], 
        distance_lookup_table_local_D_6[256], distance_lookup_table_local_D_7[256], 
        distance_lookup_table_local_D_8[256], distance_lookup_table_local_D_9[256], 
        distance_lookup_table_local_D_10[256], distance_lookup_table_local_D_11[256], 
        distance_lookup_table_local_D_12[256], distance_lookup_table_local_D_13[256], 
        distance_lookup_table_local_D_14[256], distance_lookup_table_local_D_15[256];

    // printf("init\n");

    init_distance_table_partition(distance_lookup_table_local_A_0, 0);
    init_distance_table_partition(distance_lookup_table_local_A_1, 1);
    init_distance_table_partition(distance_lookup_table_local_A_2, 2);
    init_distance_table_partition(distance_lookup_table_local_A_3, 3);
    init_distance_table_partition(distance_lookup_table_local_A_4, 4);
    init_distance_table_partition(distance_lookup_table_local_A_5, 5);
    init_distance_table_partition(distance_lookup_table_local_A_6, 6);
    init_distance_table_partition(distance_lookup_table_local_A_7, 7);
    init_distance_table_partition(distance_lookup_table_local_A_8, 8);
    init_distance_table_partition(distance_lookup_table_local_A_9, 9);
    init_distance_table_partition(distance_lookup_table_local_A_10, 10);
    init_distance_table_partition(distance_lookup_table_local_A_11, 11);
    init_distance_table_partition(distance_lookup_table_local_A_12, 12);
    init_distance_table_partition(distance_lookup_table_local_A_13, 13);
    init_distance_table_partition(distance_lookup_table_local_A_14, 14);
    init_distance_table_partition(distance_lookup_table_local_A_15, 15);

    init_distance_table_partition(distance_lookup_table_local_B_0, 0);
    init_distance_table_partition(distance_lookup_table_local_B_1, 1);
    init_distance_table_partition(distance_lookup_table_local_B_2, 2);
    init_distance_table_partition(distance_lookup_table_local_B_3, 3);
    init_distance_table_partition(distance_lookup_table_local_B_4, 4);
    init_distance_table_partition(distance_lookup_table_local_B_5, 5);
    init_distance_table_partition(distance_lookup_table_local_B_6, 6);
    init_distance_table_partition(distance_lookup_table_local_B_7, 7);
    init_distance_table_partition(distance_lookup_table_local_B_8, 8);
    init_distance_table_partition(distance_lookup_table_local_B_9, 9);
    init_distance_table_partition(distance_lookup_table_local_B_10, 10);
    init_distance_table_partition(distance_lookup_table_local_B_11, 11);
    init_distance_table_partition(distance_lookup_table_local_B_12, 12);
    init_distance_table_partition(distance_lookup_table_local_B_13, 13);
    init_distance_table_partition(distance_lookup_table_local_B_14, 14);
    init_distance_table_partition(distance_lookup_table_local_B_15, 15);

    init_distance_table_partition(distance_lookup_table_local_C_0, 0);
    init_distance_table_partition(distance_lookup_table_local_C_1, 1);
    init_distance_table_partition(distance_lookup_table_local_C_2, 2);
    init_distance_table_partition(distance_lookup_table_local_C_3, 3);
    init_distance_table_partition(distance_lookup_table_local_C_4, 4);
    init_distance_table_partition(distance_lookup_table_local_C_5, 5);
    init_distance_table_partition(distance_lookup_table_local_C_6, 6);
    init_distance_table_partition(distance_lookup_table_local_C_7, 7);
    init_distance_table_partition(distance_lookup_table_local_C_8, 8);
    init_distance_table_partition(distance_lookup_table_local_C_9, 9);
    init_distance_table_partition(distance_lookup_table_local_C_10, 10);
    init_distance_table_partition(distance_lookup_table_local_C_11, 11);
    init_distance_table_partition(distance_lookup_table_local_C_12, 12);
    init_distance_table_partition(distance_lookup_table_local_C_13, 13);
    init_distance_table_partition(distance_lookup_table_local_C_14, 14);
    init_distance_table_partition(distance_lookup_table_local_C_15, 15);

    init_distance_table_partition(distance_lookup_table_local_D_0, 0);
    init_distance_table_partition(distance_lookup_table_local_D_1, 1);
    init_distance_table_partition(distance_lookup_table_local_D_2, 2);
    init_distance_table_partition(distance_lookup_table_local_D_3, 3);
    init_distance_table_partition(distance_lookup_table_local_D_4, 4);
    init_distance_table_partition(distance_lookup_table_local_D_5, 5);
    init_distance_table_partition(distance_lookup_table_local_D_6, 6);
    init_distance_table_partition(distance_lookup_table_local_D_7, 7);
    init_distance_table_partition(distance_lookup_table_local_D_8, 8);
    init_distance_table_partition(distance_lookup_table_local_D_9, 9);
    init_distance_table_partition(distance_lookup_table_local_D_10, 10);
    init_distance_table_partition(distance_lookup_table_local_D_11, 11);
    init_distance_table_partition(distance_lookup_table_local_D_12, 12);
    init_distance_table_partition(distance_lookup_table_local_D_13, 13);
    init_distance_table_partition(distance_lookup_table_local_D_14, 14);
    init_distance_table_partition(distance_lookup_table_local_D_15, 15);


    float result_A = 0;
    float result_B = 0;
    float result_C = 0;
    float result_D = 0;
    
    for (int idx = start_logic_address; 
        idx < start_logic_address + PQ_NUM_PER_BANK; idx++) {
    #pragma HLS pipeline II = 1

        // printf("%d\t", idx);
        t_axi reg = table_RAM[idx];
        unsigned char lookup_idx_A_0 = reg.range(7, 0);
        unsigned char lookup_idx_A_1 = reg.range(15, 8);
        unsigned char lookup_idx_A_2 = reg.range(23, 16);
        unsigned char lookup_idx_A_3 = reg.range(31, 24);
        unsigned char lookup_idx_A_4 = reg.range(39, 32);
        unsigned char lookup_idx_A_5 = reg.range(47, 40);
        unsigned char lookup_idx_A_6 = reg.range(55, 48);
        unsigned char lookup_idx_A_7 = reg.range(63, 56);
        unsigned char lookup_idx_A_8 = reg.range(71, 64);
        unsigned char lookup_idx_A_9 = reg.range(79, 72);
        unsigned char lookup_idx_A_10 = reg.range(87, 80);
        unsigned char lookup_idx_A_11 = reg.range(95, 88);
        unsigned char lookup_idx_A_12 = reg.range(103, 96);
        unsigned char lookup_idx_A_13 = reg.range(111, 104);
        unsigned char lookup_idx_A_14 = reg.range(119, 112);
        unsigned char lookup_idx_A_15 = reg.range(127, 120);
        
        unsigned char lookup_idx_B_0 = reg.range(128 + 7, 128 + 0);
        unsigned char lookup_idx_B_1 = reg.range(128 + 15, 128 + 8);
        unsigned char lookup_idx_B_2 = reg.range(128 + 23, 128 + 16);
        unsigned char lookup_idx_B_3 = reg.range(128 + 31, 128 + 24);
        unsigned char lookup_idx_B_4 = reg.range(128 + 39, 128 + 32);
        unsigned char lookup_idx_B_5 = reg.range(128 + 47, 128 + 40);
        unsigned char lookup_idx_B_6 = reg.range(128 + 55, 128 + 48);
        unsigned char lookup_idx_B_7 = reg.range(128 + 63, 128 + 56);
        unsigned char lookup_idx_B_8 = reg.range(128 + 71, 128 + 64);
        unsigned char lookup_idx_B_9 = reg.range(128 + 79, 128 + 72);
        unsigned char lookup_idx_B_10 = reg.range(128 + 87, 128 + 80);
        unsigned char lookup_idx_B_11 = reg.range(128 + 95, 128 + 88);
        unsigned char lookup_idx_B_12 = reg.range(128 + 103, 128 + 96);
        unsigned char lookup_idx_B_13 = reg.range(128 + 111, 128 + 104);
        unsigned char lookup_idx_B_14 = reg.range(128 + 119, 128 + 112);
        unsigned char lookup_idx_B_15 = reg.range(128 + 127, 128 + 120);

        unsigned char lookup_idx_C_0 = reg.range(256 + 7, 256 + 0);
        unsigned char lookup_idx_C_1 = reg.range(256 + 15, 256 + 8);
        unsigned char lookup_idx_C_2 = reg.range(256 + 23, 256 + 16);
        unsigned char lookup_idx_C_3 = reg.range(256 + 31, 256 + 24);
        unsigned char lookup_idx_C_4 = reg.range(256 + 39, 256 + 32);
        unsigned char lookup_idx_C_5 = reg.range(256 + 47, 256 + 40);
        unsigned char lookup_idx_C_6 = reg.range(256 + 55, 256 + 48);
        unsigned char lookup_idx_C_7 = reg.range(256 + 63, 256 + 56);
        unsigned char lookup_idx_C_8 = reg.range(256 + 71, 256 + 64);
        unsigned char lookup_idx_C_9 = reg.range(256 + 79, 256 + 72);
        unsigned char lookup_idx_C_10 = reg.range(256 + 87, 256 + 80);
        unsigned char lookup_idx_C_11 = reg.range(256 + 95, 256 + 88);
        unsigned char lookup_idx_C_12 = reg.range(256 + 103, 256 + 96);
        unsigned char lookup_idx_C_13 = reg.range(256 + 111, 256 + 104);
        unsigned char lookup_idx_C_14 = reg.range(256 + 119, 256 + 112);
        unsigned char lookup_idx_C_15 = reg.range(256 + 127, 256 + 120);

        unsigned char lookup_idx_D_0 = reg.range(384 + 7, 384 + 0);
        unsigned char lookup_idx_D_1 = reg.range(384 + 15, 384 + 8);
        unsigned char lookup_idx_D_2 = reg.range(384 + 23, 384 + 16);
        unsigned char lookup_idx_D_3 = reg.range(384 + 31, 384 + 24);
        unsigned char lookup_idx_D_4 = reg.range(384 + 39, 384 + 32);
        unsigned char lookup_idx_D_5 = reg.range(384 + 47, 384 + 40);
        unsigned char lookup_idx_D_6 = reg.range(384 + 55, 384 + 48);
        unsigned char lookup_idx_D_7 = reg.range(384 + 63, 384 + 56);
        unsigned char lookup_idx_D_8 = reg.range(384 + 71, 384 + 64);
        unsigned char lookup_idx_D_9 = reg.range(384 + 79, 384 + 72);
        unsigned char lookup_idx_D_10 = reg.range(384 + 87, 384 + 80);
        unsigned char lookup_idx_D_11 = reg.range(384 + 95, 384 + 88);
        unsigned char lookup_idx_D_12 = reg.range(384 + 103, 384 + 96);
        unsigned char lookup_idx_D_13 = reg.range(384 + 111, 384 + 104);
        unsigned char lookup_idx_D_14 = reg.range(384 + 119, 384 + 112);
        unsigned char lookup_idx_D_15 = reg.range(384 + 127, 384 + 120);

        result_A = 
            distance_lookup_table_local_A_0[lookup_idx_A_0] + distance_lookup_table_local_A_1[lookup_idx_A_1] + 
            distance_lookup_table_local_A_2[lookup_idx_A_2] + distance_lookup_table_local_A_3[lookup_idx_A_3] + 
            distance_lookup_table_local_A_4[lookup_idx_A_4] + distance_lookup_table_local_A_5[lookup_idx_A_5] + 
            distance_lookup_table_local_A_6[lookup_idx_A_6] + distance_lookup_table_local_A_7[lookup_idx_A_7] + 
            distance_lookup_table_local_A_8[lookup_idx_A_8] + distance_lookup_table_local_A_9[lookup_idx_A_9] + 
            distance_lookup_table_local_A_10[lookup_idx_A_10] + distance_lookup_table_local_A_11[lookup_idx_A_11] + 
            distance_lookup_table_local_A_12[lookup_idx_A_12] + distance_lookup_table_local_A_13[lookup_idx_A_13] + 
            distance_lookup_table_local_A_14[lookup_idx_A_14] + distance_lookup_table_local_A_15[lookup_idx_A_15];

        result_B = 
            distance_lookup_table_local_B_0[lookup_idx_B_0] + distance_lookup_table_local_B_1[lookup_idx_B_1] + 
            distance_lookup_table_local_B_2[lookup_idx_B_2] + distance_lookup_table_local_B_3[lookup_idx_B_3] + 
            distance_lookup_table_local_B_4[lookup_idx_B_4] + distance_lookup_table_local_B_5[lookup_idx_B_5] + 
            distance_lookup_table_local_B_6[lookup_idx_B_6] + distance_lookup_table_local_B_7[lookup_idx_B_7] + 
            distance_lookup_table_local_B_8[lookup_idx_B_8] + distance_lookup_table_local_B_9[lookup_idx_B_9] + 
            distance_lookup_table_local_B_10[lookup_idx_B_10] + distance_lookup_table_local_B_11[lookup_idx_B_11] + 
            distance_lookup_table_local_B_12[lookup_idx_B_12] + distance_lookup_table_local_B_13[lookup_idx_B_13] + 
            distance_lookup_table_local_B_14[lookup_idx_B_14] + distance_lookup_table_local_B_15[lookup_idx_B_15];
        
        result_C = 
            distance_lookup_table_local_C_0[lookup_idx_C_0] + distance_lookup_table_local_C_1[lookup_idx_C_1] + 
            distance_lookup_table_local_C_2[lookup_idx_C_2] + distance_lookup_table_local_C_3[lookup_idx_C_3] + 
            distance_lookup_table_local_C_4[lookup_idx_C_4] + distance_lookup_table_local_C_5[lookup_idx_C_5] + 
            distance_lookup_table_local_C_6[lookup_idx_C_6] + distance_lookup_table_local_C_7[lookup_idx_C_7] + 
            distance_lookup_table_local_C_8[lookup_idx_C_8] + distance_lookup_table_local_C_9[lookup_idx_C_9] + 
            distance_lookup_table_local_C_10[lookup_idx_C_10] + distance_lookup_table_local_C_11[lookup_idx_C_11] + 
            distance_lookup_table_local_C_12[lookup_idx_C_12] + distance_lookup_table_local_C_13[lookup_idx_C_13] + 
            distance_lookup_table_local_C_14[lookup_idx_C_14] + distance_lookup_table_local_C_15[lookup_idx_C_15];
        
        result_D = 
            distance_lookup_table_local_D_0[lookup_idx_D_0] + distance_lookup_table_local_D_1[lookup_idx_D_1] + 
            distance_lookup_table_local_D_2[lookup_idx_D_2] + distance_lookup_table_local_D_3[lookup_idx_D_3] + 
            distance_lookup_table_local_D_4[lookup_idx_D_4] + distance_lookup_table_local_D_5[lookup_idx_D_5] + 
            distance_lookup_table_local_D_6[lookup_idx_D_6] + distance_lookup_table_local_D_7[lookup_idx_D_7] + 
            distance_lookup_table_local_D_8[lookup_idx_D_8] + distance_lookup_table_local_D_9[lookup_idx_D_9] + 
            distance_lookup_table_local_D_10[lookup_idx_D_10] + distance_lookup_table_local_D_11[lookup_idx_D_11] + 
            distance_lookup_table_local_D_12[lookup_idx_D_12] + distance_lookup_table_local_D_13[lookup_idx_D_13] + 
            distance_lookup_table_local_D_14[lookup_idx_D_14] + distance_lookup_table_local_D_15[lookup_idx_D_15];
    }

    float result = result_A + result_B + result_C + result_D;
    s_result_buffer.write(result);
}

void write_result(
    hls::stream<float>& s_result_buffer_HBM0, hls::stream<float>& s_result_buffer_HBM1, 
    hls::stream<float>& s_result_buffer_HBM2, hls::stream<float>& s_result_buffer_HBM3, 
    hls::stream<float>& s_result_buffer_HBM4, hls::stream<float>& s_result_buffer_HBM5, 
    hls::stream<float>& s_result_buffer_HBM6, hls::stream<float>& s_result_buffer_HBM7, 
    hls::stream<float>& s_result_buffer_HBM8, hls::stream<float>& s_result_buffer_HBM9, 
    hls::stream<float>& s_result_buffer_HBM10, hls::stream<float>& s_result_buffer_HBM11, 
    hls::stream<float>& s_result_buffer_HBM12, hls::stream<float>& s_result_buffer_HBM13, 
    hls::stream<float>& s_result_buffer_HBM14, hls::stream<float>& s_result_buffer_HBM15, 
    hls::stream<float>& s_result_buffer_HBM16, hls::stream<float>& s_result_buffer_HBM17, 
    hls::stream<float>& s_result_buffer_HBM18, hls::stream<float>& s_result_buffer_HBM19, 
    hls::stream<float>& s_result_buffer_HBM20, hls::stream<float>& s_result_buffer_HBM21, 
    hls::stream<float>& s_result_buffer_HBM22, hls::stream<float>& s_result_buffer_HBM23, 
    hls::stream<float>& s_result_buffer_HBM24, hls::stream<float>& s_result_buffer_HBM25, 
    hls::stream<float>& s_result_buffer_HBM26, hls::stream<float>& s_result_buffer_HBM27, 
    hls::stream<float>& s_result_buffer_HBM28, hls::stream<float>& s_result_buffer_HBM29, 
    hls::stream<float>& s_result_buffer_HBM30, hls::stream<float>& s_result_buffer_HBM31,
    float* results_out) {
    
    float reg = 
        s_result_buffer_HBM0.read() + s_result_buffer_HBM1.read() + 
        s_result_buffer_HBM2.read() + s_result_buffer_HBM3.read() + 
        s_result_buffer_HBM4.read() + s_result_buffer_HBM5.read() + 
        s_result_buffer_HBM6.read() + s_result_buffer_HBM7.read() + 
        s_result_buffer_HBM8.read() + s_result_buffer_HBM9.read() + 
        s_result_buffer_HBM10.read() + s_result_buffer_HBM11.read() + 
        s_result_buffer_HBM12.read() + s_result_buffer_HBM13.read() + 
        s_result_buffer_HBM14.read() + s_result_buffer_HBM15.read() + 
        s_result_buffer_HBM16.read() + s_result_buffer_HBM17.read() + 
        s_result_buffer_HBM18.read() + s_result_buffer_HBM19.read() + 
        s_result_buffer_HBM20.read() + s_result_buffer_HBM21.read() + 
        s_result_buffer_HBM22.read() + s_result_buffer_HBM23.read() + 
        s_result_buffer_HBM24.read() + s_result_buffer_HBM25.read() + 
        s_result_buffer_HBM26.read() + s_result_buffer_HBM27.read() + 
        s_result_buffer_HBM28.read() + s_result_buffer_HBM29.read() + 
        s_result_buffer_HBM30.read() + s_result_buffer_HBM31.read();

    results_out[0] = reg;
}



// void copy_distance_table_wrapper(
//     float distance_lookup_table[16 * 256],
//     float distance_lookup_table_HBM0[16 * 256], float distance_lookup_table_HBM1[16 * 256], 
//     float distance_lookup_table_HBM2[16 * 256], float distance_lookup_table_HBM3[16 * 256], 
//     float distance_lookup_table_HBM4[16 * 256], float distance_lookup_table_HBM5[16 * 256], 
//     float distance_lookup_table_HBM6[16 * 256], float distance_lookup_table_HBM7[16 * 256], 
//     float distance_lookup_table_HBM8[16 * 256], float distance_lookup_table_HBM9[16 * 256], 
//     float distance_lookup_table_HBM10[16 * 256], float distance_lookup_table_HBM11[16 * 256], 
//     float distance_lookup_table_HBM12[16 * 256], float distance_lookup_table_HBM13[16 * 256], 
//     float distance_lookup_table_HBM14[16 * 256], float distance_lookup_table_HBM15[16 * 256], 
//     float distance_lookup_table_HBM16[16 * 256], float distance_lookup_table_HBM17[16 * 256], 
//     float distance_lookup_table_HBM18[16 * 256], float distance_lookup_table_HBM19[16 * 256], 
//     float distance_lookup_table_HBM20[16 * 256], float distance_lookup_table_HBM21[16 * 256], 
//     float distance_lookup_table_HBM22[16 * 256], float distance_lookup_table_HBM23[16 * 256], 
//     float distance_lookup_table_HBM24[16 * 256], float distance_lookup_table_HBM25[16 * 256], 
//     float distance_lookup_table_HBM26[16 * 256], float distance_lookup_table_HBM27[16 * 256], 
//     float distance_lookup_table_HBM28[16 * 256], float distance_lookup_table_HBM29[16 * 256], 
//     float distance_lookup_table_HBM30[16 * 256], float distance_lookup_table_HBM31[16 * 256]
// ) {
//     for (int i = 0; i < 16 * 256; i++) {
//     #pragma HLS pipeline II=1
        
//         float reg = distance_lookup_table[i];
        
//         distance_lookup_table_HBM0[i] = reg;
//         distance_lookup_table_HBM1[i] = reg;
//         distance_lookup_table_HBM2[i] = reg;
//         distance_lookup_table_HBM3[i] = reg;
//         distance_lookup_table_HBM4[i] = reg;
//         distance_lookup_table_HBM5[i] = reg;
//         distance_lookup_table_HBM6[i] = reg;
//         distance_lookup_table_HBM7[i] = reg;
//         distance_lookup_table_HBM8[i] = reg;
//         distance_lookup_table_HBM9[i] = reg;
//         distance_lookup_table_HBM10[i] = reg;
//         distance_lookup_table_HBM11[i] = reg;
//         distance_lookup_table_HBM12[i] = reg;
//         distance_lookup_table_HBM13[i] = reg;
//         distance_lookup_table_HBM14[i] = reg;
//         distance_lookup_table_HBM15[i] = reg;
//         distance_lookup_table_HBM16[i] = reg;
//         distance_lookup_table_HBM17[i] = reg;
//         distance_lookup_table_HBM18[i] = reg;
//         distance_lookup_table_HBM19[i] = reg;
//         distance_lookup_table_HBM20[i] = reg;
//         distance_lookup_table_HBM21[i] = reg;
//         distance_lookup_table_HBM22[i] = reg;
//         distance_lookup_table_HBM23[i] = reg;
//         distance_lookup_table_HBM24[i] = reg;
//         distance_lookup_table_HBM25[i] = reg;
//         distance_lookup_table_HBM26[i] = reg;
//         distance_lookup_table_HBM27[i] = reg;
//         distance_lookup_table_HBM28[i] = reg;
//         distance_lookup_table_HBM29[i] = reg;
//         distance_lookup_table_HBM30[i] = reg;
//         distance_lookup_table_HBM31[i] = reg;
//     }
// }
