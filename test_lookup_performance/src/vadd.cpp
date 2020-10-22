#include "vadd.hpp"

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
#pragma HLS stream variable=s_result_buffer_HBM0 depth=2
#pragma HLS stream variable=s_result_buffer_HBM1 depth=2
#pragma HLS stream variable=s_result_buffer_HBM2 depth=2
#pragma HLS stream variable=s_result_buffer_HBM3 depth=2
#pragma HLS stream variable=s_result_buffer_HBM4 depth=2
#pragma HLS stream variable=s_result_buffer_HBM5 depth=2
#pragma HLS stream variable=s_result_buffer_HBM6 depth=2
#pragma HLS stream variable=s_result_buffer_HBM7 depth=2
#pragma HLS stream variable=s_result_buffer_HBM8 depth=2
#pragma HLS stream variable=s_result_buffer_HBM9 depth=2
#pragma HLS stream variable=s_result_buffer_HBM10 depth=2
#pragma HLS stream variable=s_result_buffer_HBM11 depth=2
#pragma HLS stream variable=s_result_buffer_HBM12 depth=2
#pragma HLS stream variable=s_result_buffer_HBM13 depth=2
#pragma HLS stream variable=s_result_buffer_HBM14 depth=2
#pragma HLS stream variable=s_result_buffer_HBM15 depth=2
#pragma HLS stream variable=s_result_buffer_HBM16 depth=2
#pragma HLS stream variable=s_result_buffer_HBM17 depth=2
#pragma HLS stream variable=s_result_buffer_HBM18 depth=2
#pragma HLS stream variable=s_result_buffer_HBM19 depth=2
#pragma HLS stream variable=s_result_buffer_HBM20 depth=2
#pragma HLS stream variable=s_result_buffer_HBM21 depth=2
#pragma HLS stream variable=s_result_buffer_HBM22 depth=2
#pragma HLS stream variable=s_result_buffer_HBM23 depth=2
#pragma HLS stream variable=s_result_buffer_HBM24 depth=2
#pragma HLS stream variable=s_result_buffer_HBM25 depth=2
#pragma HLS stream variable=s_result_buffer_HBM26 depth=2
#pragma HLS stream variable=s_result_buffer_HBM27 depth=2
#pragma HLS stream variable=s_result_buffer_HBM28 depth=2
#pragma HLS stream variable=s_result_buffer_HBM29 depth=2
#pragma HLS stream variable=s_result_buffer_HBM30 depth=2
#pragma HLS stream variable=s_result_buffer_HBM31 depth=2

    // partition the distance table to 16 x [1][256] 
    // -> can potentially be reduce to 8 since BRAM has 2 ports
    float distance_lookup_table[16][256];
#pragma HLS array_partition variable=distance_lookup_table block factor=16 dim=1 
#pragma HLS resource variable=distance_lookup_table core=RAM_2P_BRAM

    float distance_lookup_table_HBM0[16][256];
    float distance_lookup_table_HBM1[16][256];
    float distance_lookup_table_HBM2[16][256];
    float distance_lookup_table_HBM3[16][256];
    float distance_lookup_table_HBM4[16][256];
    float distance_lookup_table_HBM5[16][256];
    float distance_lookup_table_HBM6[16][256];
    float distance_lookup_table_HBM7[16][256];
    float distance_lookup_table_HBM8[16][256];
    float distance_lookup_table_HBM9[16][256];
    float distance_lookup_table_HBM10[16][256];
    float distance_lookup_table_HBM11[16][256];
    float distance_lookup_table_HBM12[16][256];
    float distance_lookup_table_HBM13[16][256];
    float distance_lookup_table_HBM14[16][256];
    float distance_lookup_table_HBM15[16][256];
    float distance_lookup_table_HBM16[16][256];
    float distance_lookup_table_HBM17[16][256];
    float distance_lookup_table_HBM18[16][256];
    float distance_lookup_table_HBM19[16][256];
    float distance_lookup_table_HBM20[16][256];
    float distance_lookup_table_HBM21[16][256];
    float distance_lookup_table_HBM22[16][256];
    float distance_lookup_table_HBM23[16][256];
    float distance_lookup_table_HBM24[16][256];
    float distance_lookup_table_HBM25[16][256];
    float distance_lookup_table_HBM26[16][256];
    float distance_lookup_table_HBM27[16][256];
    float distance_lookup_table_HBM28[16][256];
    float distance_lookup_table_HBM29[16][256];
    float distance_lookup_table_HBM30[16][256];
    float distance_lookup_table_HBM31[16][256];

#pragma HLS array_partition variable=distance_lookup_table_HBM0 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM1 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM2 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM3 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM4 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM5 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM6 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM7 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM8 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM9 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM10 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM11 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM12 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM13 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM14 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM15 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM16 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM17 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM18 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM19 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM20 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM21 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM22 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM23 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM24 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM25 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM26 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM27 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM28 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM29 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM30 block factor=16 dim=1 
#pragma HLS array_partition variable=distance_lookup_table_HBM31 block factor=16 dim=1 

#pragma HLS resource variable=distance_lookup_table_HBM0 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM1 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM2 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM3 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM4 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM5 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM6 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM7 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM8 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM9 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM10 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM11 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM12 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM13 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM14 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM15 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM16 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM17 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM18 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM19 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM20 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM21 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM22 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM23 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM24 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM25 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM26 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM27 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM28 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM29 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM30 core=RAM_2P_BRAM
#pragma HLS resource variable=distance_lookup_table_HBM31 core=RAM_2P_BRAM

    init_distance_table(distance_lookup_table);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM0);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM1);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM2);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM3);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM4);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM5);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM6);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM7);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM8);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM9);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM10);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM11);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM12);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM13);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM14);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM15);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM16);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM17);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM18);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM19);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM20);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM21);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM22);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM23);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM24);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM25);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM26);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM27);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM28);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM29);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM30);
    copy_distance_table(distance_lookup_table, distance_lookup_table_HBM31);

//////////////////////////////    Distance Computation     ////////////////////////////// 
    estimate_distance<8388608>(table_HBM0, 0, distance_lookup_table_HBM0, s_result_buffer_HBM0);
    estimate_distance<8388608>(table_HBM1, 0, distance_lookup_table_HBM1, s_result_buffer_HBM1);
    estimate_distance<8388608>(table_HBM2, 0, distance_lookup_table_HBM2, s_result_buffer_HBM2);
    estimate_distance<8388608>(table_HBM3, 0, distance_lookup_table_HBM3, s_result_buffer_HBM3);
    estimate_distance<8388608>(table_HBM4, 0, distance_lookup_table_HBM4, s_result_buffer_HBM4);
    estimate_distance<8388608>(table_HBM5, 0, distance_lookup_table_HBM5, s_result_buffer_HBM5);
    estimate_distance<8388608>(table_HBM6, 0, distance_lookup_table_HBM6, s_result_buffer_HBM6);
    estimate_distance<8388608>(table_HBM7, 0, distance_lookup_table_HBM7, s_result_buffer_HBM7);
    estimate_distance<8388608>(table_HBM8, 0, distance_lookup_table_HBM8, s_result_buffer_HBM8);
    estimate_distance<8388608>(table_HBM9, 0, distance_lookup_table_HBM9, s_result_buffer_HBM9);
    estimate_distance<8388608>(table_HBM10, 0, distance_lookup_table_HBM10, s_result_buffer_HBM10);
    estimate_distance<8388608>(table_HBM11, 0, distance_lookup_table_HBM11, s_result_buffer_HBM11);
    estimate_distance<8388608>(table_HBM12, 0, distance_lookup_table_HBM12, s_result_buffer_HBM12);
    estimate_distance<8388608>(table_HBM13, 0, distance_lookup_table_HBM13, s_result_buffer_HBM13);
    estimate_distance<8388608>(table_HBM14, 0, distance_lookup_table_HBM14, s_result_buffer_HBM14);
    estimate_distance<8388608>(table_HBM15, 0, distance_lookup_table_HBM15, s_result_buffer_HBM15);
    estimate_distance<8388608>(table_HBM16, 0, distance_lookup_table_HBM16, s_result_buffer_HBM16);
    estimate_distance<8388608>(table_HBM17, 0, distance_lookup_table_HBM17, s_result_buffer_HBM17);
    estimate_distance<8388608>(table_HBM18, 0, distance_lookup_table_HBM18, s_result_buffer_HBM18);
    estimate_distance<8388608>(table_HBM19, 0, distance_lookup_table_HBM19, s_result_buffer_HBM19);
    estimate_distance<8388608>(table_HBM20, 0, distance_lookup_table_HBM20, s_result_buffer_HBM20);
    estimate_distance<8388608>(table_HBM21, 0, distance_lookup_table_HBM21, s_result_buffer_HBM21);
    estimate_distance<8388608>(table_HBM22, 0, distance_lookup_table_HBM22, s_result_buffer_HBM22);
    estimate_distance<8388608>(table_HBM23, 0, distance_lookup_table_HBM23, s_result_buffer_HBM23);
    estimate_distance<8388608>(table_HBM24, 0, distance_lookup_table_HBM24, s_result_buffer_HBM24);
    estimate_distance<8388608>(table_HBM25, 0, distance_lookup_table_HBM25, s_result_buffer_HBM25);
    estimate_distance<8388608>(table_HBM26, 0, distance_lookup_table_HBM26, s_result_buffer_HBM26);
    estimate_distance<8388608>(table_HBM27, 0, distance_lookup_table_HBM27, s_result_buffer_HBM27);
    estimate_distance<8388608>(table_HBM28, 0, distance_lookup_table_HBM28, s_result_buffer_HBM28);
    estimate_distance<8388608>(table_HBM29, 0, distance_lookup_table_HBM29, s_result_buffer_HBM29);
    estimate_distance<8388608>(table_HBM30, 0, distance_lookup_table_HBM30, s_result_buffer_HBM30);
    estimate_distance<8388608>(table_HBM31, 0, distance_lookup_table_HBM31, s_result_buffer_HBM31);

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

void init_distance_table(float reference_table[16][256]) {
    for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 256; j++) {
            #pragma HLS pipeline II=1
            reference_table[i][j] = i + j;
        }
    }
}

void copy_distance_table(float reference_table[16][256], float table[16][256]) {
    /* copy the reference distance table to the local table connected to 
     * each DRAM channel */
    for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 256; j++) {
            #pragma HLS pipeline II=1
            table[i][j] = reference_table[i][j];
        }
    }
}

template<const int PQ_NUM_PER_BANK>
void estimate_distance(
    const t_axi* table_RAM, const int start_logic_address,
    const float distance_lookup_table[16][256],
    hls::stream<float>& s_result_buffer) {

    float result = 0;

    for (int idx = start_logic_address; 
        idx < start_logic_address + PQ_NUM_PER_BANK; idx++) {
    #pragma HLS pipeline II = 1
        t_axi reg = table_RAM[idx];
        unsigned char lookup_idx_0 = reg.range(7, 0);
        unsigned char lookup_idx_1 = reg.range(15, 8);
        unsigned char lookup_idx_2 = reg.range(23, 16);
        unsigned char lookup_idx_3 = reg.range(31, 24);
        unsigned char lookup_idx_4 = reg.range(39, 32);
        unsigned char lookup_idx_5 = reg.range(47, 40);
        unsigned char lookup_idx_6 = reg.range(55, 48);
        unsigned char lookup_idx_7 = reg.range(63, 56);
        unsigned char lookup_idx_8 = reg.range(71, 64);
        unsigned char lookup_idx_9 = reg.range(79, 72);
        unsigned char lookup_idx_10 = reg.range(87, 80);
        unsigned char lookup_idx_11 = reg.range(95, 88);
        unsigned char lookup_idx_12 = reg.range(103, 96);
        unsigned char lookup_idx_13 = reg.range(111, 104);
        unsigned char lookup_idx_14 = reg.range(119, 112);
        unsigned char lookup_idx_15 = reg.range(127, 120);
        
        result = 
            distance_lookup_table[0][lookup_idx_0] + distance_lookup_table[1][lookup_idx_1] + 
            distance_lookup_table[2][lookup_idx_2] + distance_lookup_table[3][lookup_idx_3] + 
            distance_lookup_table[4][lookup_idx_4] + distance_lookup_table[5][lookup_idx_5] + 
            distance_lookup_table[6][lookup_idx_6] + distance_lookup_table[7][lookup_idx_7] + 
            distance_lookup_table[8][lookup_idx_8] + distance_lookup_table[9][lookup_idx_9] + 
            distance_lookup_table[10][lookup_idx_10] + distance_lookup_table[11][lookup_idx_11] + 
            distance_lookup_table[12][lookup_idx_12] + distance_lookup_table[13][lookup_idx_13] + 
            distance_lookup_table[14][lookup_idx_14] + distance_lookup_table[15][lookup_idx_15];
    }

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
    float results_out[BATCH_SIZE * OUTPUT_SIZE]) {
    
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

