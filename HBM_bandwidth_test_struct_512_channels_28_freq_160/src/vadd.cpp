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
    

//////////////////////////////    Distance Computation     ////////////////////////////// 
    t_axi reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, 
        reg8, reg9, reg10, reg11, reg12, reg13, reg14, reg15, 
        reg16, reg17, reg18, reg19, reg20, reg21, reg22, reg23, 
        reg24, reg25, reg26, reg27; //, reg28, reg29, reg30, reg31;

    // 2097152 * 512 bit = 134,217,728 -> 128 MB is half of each HBM bank (256 MB)
    for (int iter_num = 0; iter_num < 128; iter_num++) {

        for (int idx = 0; idx < 2097152 * 2; idx++) {
        #pragma HLS pipeline II = 1

            // printf("%d\t", idx);
            reg0 = table_HBM0[idx];
            reg1 = table_HBM1[idx];
            reg2 = table_HBM2[idx];
            reg3 = table_HBM3[idx];
            reg4 = table_HBM4[idx];
            reg5 = table_HBM5[idx];
            reg6 = table_HBM6[idx];
            reg7 = table_HBM7[idx];
            reg8 = table_HBM8[idx];
            reg9 = table_HBM9[idx];
            reg10 = table_HBM10[idx];
            reg11 = table_HBM11[idx];
            reg12 = table_HBM12[idx];
            reg13 = table_HBM13[idx];
            reg14 = table_HBM14[idx];
            reg15 = table_HBM15[idx];
            reg16 = table_HBM16[idx];
            reg17 = table_HBM17[idx];
            reg18 = table_HBM18[idx];
            reg19 = table_HBM19[idx];
            reg20 = table_HBM20[idx];
            reg21 = table_HBM21[idx];
            reg22 = table_HBM22[idx];
            reg23 = table_HBM23[idx];
            reg24 = table_HBM24[idx];
            reg25 = table_HBM25[idx];
            reg26 = table_HBM26[idx];
            reg27 = table_HBM27[idx];
            // reg28 = table_HBM28[idx];
            // reg29 = table_HBM29[idx];
            // reg30 = table_HBM30[idx];
            // reg31 = table_HBM31[idx];
        }
    }

    out_PLRAM[0] = (float) reg0.PQ_code_A_0;
    out_PLRAM[1] = (float) reg1.PQ_code_A_0;
    out_PLRAM[2] = (float) reg2.PQ_code_A_0;
    out_PLRAM[3] = (float) reg3.PQ_code_A_0;
    out_PLRAM[4] = (float) reg4.PQ_code_A_0;
    out_PLRAM[5] = (float) reg5.PQ_code_A_0;
    out_PLRAM[6] = (float) reg6.PQ_code_A_0;
    out_PLRAM[7] = (float) reg7.PQ_code_A_0;
    out_PLRAM[8] = (float) reg8.PQ_code_A_0;
    out_PLRAM[9] = (float) reg9.PQ_code_A_0;
    out_PLRAM[10] = (float) reg10.PQ_code_A_0;
    out_PLRAM[11] = (float) reg11.PQ_code_A_0;
    out_PLRAM[12] = (float) reg12.PQ_code_A_0;
    out_PLRAM[13] = (float) reg13.PQ_code_A_0;
    out_PLRAM[14] = (float) reg14.PQ_code_A_0;
    out_PLRAM[15] = (float) reg15.PQ_code_A_0;
    out_PLRAM[16] = (float) reg16.PQ_code_A_0;
    out_PLRAM[17] = (float) reg17.PQ_code_A_0;
    out_PLRAM[18] = (float) reg18.PQ_code_A_0;
    out_PLRAM[19] = (float) reg19.PQ_code_A_0;
    out_PLRAM[20] = (float) reg20.PQ_code_A_0;
    out_PLRAM[21] = (float) reg21.PQ_code_A_0;
    out_PLRAM[22] = (float) reg22.PQ_code_A_0;
    out_PLRAM[23] = (float) reg23.PQ_code_A_0;
    out_PLRAM[24] = (float) reg24.PQ_code_A_0;
    out_PLRAM[25] = (float) reg25.PQ_code_A_0;
    out_PLRAM[26] = (float) reg26.PQ_code_A_0;
    out_PLRAM[27] = (float) reg27.PQ_code_A_0;
    // out_PLRAM[28] = (float) reg28.PQ_code_A_0;
    // out_PLRAM[29] = (float) reg29.PQ_code_A_0;
    // out_PLRAM[30] = (float) reg30.PQ_code_A_0;
    // out_PLRAM[31] = (float) reg31.PQ_code_A_0;
}
