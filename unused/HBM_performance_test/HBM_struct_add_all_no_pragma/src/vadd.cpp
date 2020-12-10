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
    // const t_axi* table_HBM28, const t_axi* table_HBM29, 
    // const t_axi* table_HBM30, const t_axi* table_HBM31, 
    // const t_axi* table_DDR0, const t_axi* table_DDR1,
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
// #pragma HLS INTERFACE m_axi port=table_HBM28  offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=table_HBM29  offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=table_HBM30  offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=table_HBM31  offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

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
// #pragma HLS INTERFACE s_axilite port=table_HBM28  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM29  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM30  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM31  bundle=control

// #pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

#pragma HLS INTERFACE s_axilite port=out_PLRAM bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control
    
#pragma HLS dataflow

    hls::stream<float> s_output[28];
#pragma HLS stream variable=s_output depth=8
#pragma HLS array_partition variable=s_output dim=1

    load_HBM(table_HBM0, s_output[0]);
    load_HBM(table_HBM1, s_output[1]);
    load_HBM(table_HBM2, s_output[2]);
    load_HBM(table_HBM3, s_output[3]);
    load_HBM(table_HBM4, s_output[4]);
    load_HBM(table_HBM5, s_output[5]);
    load_HBM(table_HBM6, s_output[6]);
    load_HBM(table_HBM7, s_output[7]);
    load_HBM(table_HBM8, s_output[8]);
    load_HBM(table_HBM9, s_output[9]);
    load_HBM(table_HBM10, s_output[10]);
    load_HBM(table_HBM11, s_output[11]);
    load_HBM(table_HBM12, s_output[12]);
    load_HBM(table_HBM13, s_output[13]);
    load_HBM(table_HBM14, s_output[14]);
    load_HBM(table_HBM15, s_output[15]);
    load_HBM(table_HBM16, s_output[16]);
    load_HBM(table_HBM17, s_output[17]);
    load_HBM(table_HBM18, s_output[18]);
    load_HBM(table_HBM19, s_output[19]);
    load_HBM(table_HBM20, s_output[20]);
    load_HBM(table_HBM21, s_output[21]);
    load_HBM(table_HBM22, s_output[22]);
    load_HBM(table_HBM23, s_output[23]);
    load_HBM(table_HBM24, s_output[24]);
    load_HBM(table_HBM25, s_output[25]);
    load_HBM(table_HBM26, s_output[26]);
    load_HBM(table_HBM27, s_output[27]);
    // load_HBM(table_HBM28, s_output[28]);
    // load_HBM(table_HBM29, s_output[29]);
    // load_HBM(table_HBM30, s_output[30]);
    // load_HBM(table_HBM31, s_output[31]);

    write_results<28>(s_output, out_PLRAM);
}

void load_HBM(const t_axi* HBM_bank, hls::stream<float> &s_output) {
    // Scan the HBM bank for several rounds, 
    //   then write the last number to FIFO
    t_axi reg; //, reg28, reg29, reg30, reg31;
    float distance_A, distance_B, distance_C, distance_D;

    float distance_table_A[16][256];
// #pragma HLS array_partition variable=distance_table_A dim=1 block factor=16
    float distance_table_B[16][256];
// #pragma HLS array_partition variable=distance_table_B dim=1 block factor=16
    float distance_table_C[16][256];
// #pragma HLS array_partition variable=distance_table_C dim=1 block factor=16
    float distance_table_D[16][256];
// #pragma HLS array_partition variable=distance_table_D dim=1 block factor=16

    for (int i = 0; i < 16; i++) {
        for (int j = 0; j < 256; j++) {
            distance_table_A[i][j] = i + j;
            distance_table_B[i][j] = i + j;
            distance_table_C[i][j] = i + j;
            distance_table_D[i][j] = i + j;
        }
    }

    // 2097152 * 512 bit = 134,217,728 -> 128 MB is half of each HBM bank (256 MB)
    for (int iter_num = 0; iter_num < 128; iter_num++) {

        for (int idx = 0; idx < 2097152 * 2; idx++) {
        // #pragma HLS pipeline II = 1
        
            reg = HBM_bank[idx];
            distance_A = 
                distance_table_A[0][reg.PQ_code_A_0] + distance_table_A[1][reg.PQ_code_A_1] + 
                distance_table_A[2][reg.PQ_code_A_2] + distance_table_A[3][reg.PQ_code_A_3] + 
                distance_table_A[4][reg.PQ_code_A_4] + distance_table_A[5][reg.PQ_code_A_5] + 
                distance_table_A[6][reg.PQ_code_A_6] + distance_table_A[7][reg.PQ_code_A_7] + 
                distance_table_A[8][reg.PQ_code_A_8] + distance_table_A[9][reg.PQ_code_A_9] + 
                distance_table_A[10][reg.PQ_code_A_10] + distance_table_A[11][reg.PQ_code_A_11] + 
                distance_table_A[12][reg.PQ_code_A_12] + distance_table_A[13][reg.PQ_code_A_13] + 
                distance_table_A[14][reg.PQ_code_A_14] + distance_table_A[15][reg.PQ_code_A_15];
            
            distance_B = 
                distance_table_B[0][reg.PQ_code_B_0] + distance_table_B[1][reg.PQ_code_B_1] + 
                distance_table_B[2][reg.PQ_code_B_2] + distance_table_B[3][reg.PQ_code_B_3] + 
                distance_table_B[4][reg.PQ_code_B_4] + distance_table_B[5][reg.PQ_code_B_5] + 
                distance_table_B[6][reg.PQ_code_B_6] + distance_table_B[7][reg.PQ_code_B_7] + 
                distance_table_B[8][reg.PQ_code_B_8] + distance_table_B[9][reg.PQ_code_B_9] + 
                distance_table_B[10][reg.PQ_code_B_10] + distance_table_B[11][reg.PQ_code_B_11] + 
                distance_table_B[12][reg.PQ_code_B_12] + distance_table_B[13][reg.PQ_code_B_13] + 
                distance_table_B[14][reg.PQ_code_B_14] + distance_table_B[15][reg.PQ_code_B_15];

            distance_C = 
                distance_table_C[0][reg.PQ_code_C_0] + distance_table_C[1][reg.PQ_code_C_1] + 
                distance_table_C[2][reg.PQ_code_C_2] + distance_table_C[3][reg.PQ_code_C_3] + 
                distance_table_C[4][reg.PQ_code_C_4] + distance_table_C[5][reg.PQ_code_C_5] + 
                distance_table_C[6][reg.PQ_code_C_6] + distance_table_C[7][reg.PQ_code_C_7] + 
                distance_table_C[8][reg.PQ_code_C_8] + distance_table_C[9][reg.PQ_code_C_9] + 
                distance_table_C[10][reg.PQ_code_C_10] + distance_table_C[11][reg.PQ_code_C_11] + 
                distance_table_C[12][reg.PQ_code_C_12] + distance_table_C[13][reg.PQ_code_C_13] + 
                distance_table_C[14][reg.PQ_code_C_14] + distance_table_C[15][reg.PQ_code_C_15];

            distance_D = 
                distance_table_D[0][reg.PQ_code_D_0] + distance_table_D[1][reg.PQ_code_D_1] + 
                distance_table_D[2][reg.PQ_code_D_2] + distance_table_D[3][reg.PQ_code_D_3] + 
                distance_table_D[4][reg.PQ_code_D_4] + distance_table_D[5][reg.PQ_code_D_5] + 
                distance_table_D[6][reg.PQ_code_D_6] + distance_table_D[7][reg.PQ_code_D_7] + 
                distance_table_D[8][reg.PQ_code_D_8] + distance_table_D[9][reg.PQ_code_D_9] + 
                distance_table_D[10][reg.PQ_code_D_10] + distance_table_D[11][reg.PQ_code_D_11] + 
                distance_table_D[12][reg.PQ_code_D_12] + distance_table_D[13][reg.PQ_code_D_13] + 
                distance_table_D[14][reg.PQ_code_D_14] + distance_table_D[15][reg.PQ_code_D_15];
        }
    }

    // float out = (float) reg.PQ_code_A_0;
    float out = distance_A + distance_B + distance_C + distance_D;
    s_output.write(out);
}

template<const int stream_num>
void write_results(hls::stream<float> (&s_output)[stream_num],
    float* out_PLRAM) {

    for (int i = 0; i < stream_num; i++) {
        out_PLRAM[i] = s_output[i].read();
    }
}