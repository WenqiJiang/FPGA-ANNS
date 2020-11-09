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
    
    hls::stream<float> s_output_0;
    hls::stream<float> s_output_1;
    hls::stream<float> s_output_2;
    hls::stream<float> s_output_3;
    hls::stream<float> s_output_4;
    hls::stream<float> s_output_5;
    hls::stream<float> s_output_6;
    hls::stream<float> s_output_7;
    hls::stream<float> s_output_8;
    hls::stream<float> s_output_9;
    hls::stream<float> s_output_10;
    hls::stream<float> s_output_11;
    hls::stream<float> s_output_12;
    hls::stream<float> s_output_13;
    hls::stream<float> s_output_14;
    hls::stream<float> s_output_15;
    hls::stream<float> s_output_16;
    hls::stream<float> s_output_17;
    hls::stream<float> s_output_18;
    hls::stream<float> s_output_19;
    hls::stream<float> s_output_20;
    hls::stream<float> s_output_21;
    hls::stream<float> s_output_22;
    hls::stream<float> s_output_23;
    hls::stream<float> s_output_24;
    hls::stream<float> s_output_25;
    hls::stream<float> s_output_26;
    hls::stream<float> s_output_27;
    // hls::stream<float> s_output_28;
    // hls::stream<float> s_output_29;
    // hls::stream<float> s_output_30;
    // hls::stream<float> s_output_31;

#pragma HLS stream variable=s_output_0 depth=8
#pragma HLS stream variable=s_output_1 depth=8
#pragma HLS stream variable=s_output_2 depth=8
#pragma HLS stream variable=s_output_3 depth=8
#pragma HLS stream variable=s_output_4 depth=8
#pragma HLS stream variable=s_output_5 depth=8
#pragma HLS stream variable=s_output_6 depth=8
#pragma HLS stream variable=s_output_7 depth=8
#pragma HLS stream variable=s_output_8 depth=8
#pragma HLS stream variable=s_output_9 depth=8
#pragma HLS stream variable=s_output_10 depth=8
#pragma HLS stream variable=s_output_11 depth=8
#pragma HLS stream variable=s_output_12 depth=8
#pragma HLS stream variable=s_output_13 depth=8
#pragma HLS stream variable=s_output_14 depth=8
#pragma HLS stream variable=s_output_15 depth=8
#pragma HLS stream variable=s_output_16 depth=8
#pragma HLS stream variable=s_output_17 depth=8
#pragma HLS stream variable=s_output_18 depth=8
#pragma HLS stream variable=s_output_19 depth=8
#pragma HLS stream variable=s_output_20 depth=8
#pragma HLS stream variable=s_output_21 depth=8
#pragma HLS stream variable=s_output_22 depth=8
#pragma HLS stream variable=s_output_23 depth=8
#pragma HLS stream variable=s_output_24 depth=8
#pragma HLS stream variable=s_output_25 depth=8
#pragma HLS stream variable=s_output_26 depth=8
#pragma HLS stream variable=s_output_27 depth=8
// #pragma HLS stream variable=s_output_28 depth=8
// #pragma HLS stream variable=s_output_29 depth=8
// #pragma HLS stream variable=s_output_30 depth=8
// #pragma HLS stream variable=s_output_31 depth=8

    load_HBM(table_HBM0, s_output_0);
    load_HBM(table_HBM1, s_output_1);
    load_HBM(table_HBM2, s_output_2);
    load_HBM(table_HBM3, s_output_3);
    load_HBM(table_HBM4, s_output_4);
    load_HBM(table_HBM5, s_output_5);
    load_HBM(table_HBM6, s_output_6);
    load_HBM(table_HBM7, s_output_7);
    load_HBM(table_HBM8, s_output_8);
    load_HBM(table_HBM9, s_output_9);
    load_HBM(table_HBM10, s_output_10);
    load_HBM(table_HBM11, s_output_11);
    load_HBM(table_HBM12, s_output_12);
    load_HBM(table_HBM13, s_output_13);
    load_HBM(table_HBM14, s_output_14);
    load_HBM(table_HBM15, s_output_15);
    load_HBM(table_HBM16, s_output_16);
    load_HBM(table_HBM17, s_output_17);
    load_HBM(table_HBM18, s_output_18);
    load_HBM(table_HBM19, s_output_19);
    load_HBM(table_HBM20, s_output_20);
    load_HBM(table_HBM21, s_output_21);
    load_HBM(table_HBM22, s_output_22);
    load_HBM(table_HBM23, s_output_23);
    load_HBM(table_HBM24, s_output_24);
    load_HBM(table_HBM25, s_output_25);
    load_HBM(table_HBM26, s_output_26);
    load_HBM(table_HBM27, s_output_27);
    // load_HBM(table_HBM28, s_output_28);
    // load_HBM(table_HBM29, s_output_29);
    // load_HBM(table_HBM30, s_output_30);
    // load_HBM(table_HBM31, s_output_31);

    // write_results<28>(s_output, out_PLRAM);
    write_results(
        s_output_0, s_output_1, s_output_2, s_output_3, 
        s_output_4, s_output_5, s_output_6, s_output_7, 
        s_output_8, s_output_9, s_output_10, s_output_11, 
        s_output_12, s_output_13, s_output_14, s_output_15, 
        s_output_16, s_output_17, s_output_18, s_output_19, 
        s_output_20, s_output_21, s_output_22, s_output_23, 
        s_output_24, s_output_25, s_output_26, s_output_27, 
        // s_output_28, s_output_29, s_output_30, s_output_31,
        out_PLRAM);
}

void load_HBM(const t_axi* HBM_bank, hls::stream<float> &s_output) {
    // Scan the HBM bank for several rounds, 
    //   then write the last number to FIFO
    t_axi reg; //, reg28, reg29, reg30, reg31;

    // 2097152 * 512 bit = 134,217,728 -> 128 MB is half of each HBM bank (256 MB)
    for (int iter_num = 0; iter_num < 128; iter_num++) {

        for (int idx = 0; idx < 2097152 * 2; idx++) {
        #pragma HLS pipeline II = 1
        
            reg = HBM_bank[idx];
        }
    }

    float out = (float) reg.PQ_code_A_0;
    s_output.write(out);
}

void write_results(
    hls::stream<float> &s_output_0, hls::stream<float> &s_output_1, 
    hls::stream<float> &s_output_2, hls::stream<float> &s_output_3, 
    hls::stream<float> &s_output_4, hls::stream<float> &s_output_5, 
    hls::stream<float> &s_output_6, hls::stream<float> &s_output_7, 
    hls::stream<float> &s_output_8, hls::stream<float> &s_output_9, 
    hls::stream<float> &s_output_10, hls::stream<float> &s_output_11, 
    hls::stream<float> &s_output_12, hls::stream<float> &s_output_13, 
    hls::stream<float> &s_output_14, hls::stream<float> &s_output_15, 
    hls::stream<float> &s_output_16, hls::stream<float> &s_output_17, 
    hls::stream<float> &s_output_18, hls::stream<float> &s_output_19, 
    hls::stream<float> &s_output_20, hls::stream<float> &s_output_21, 
    hls::stream<float> &s_output_22, hls::stream<float> &s_output_23, 
    hls::stream<float> &s_output_24, hls::stream<float> &s_output_25, 
    hls::stream<float> &s_output_26, hls::stream<float> &s_output_27, 
    // hls::stream<float> &s_output_28, hls::stream<float> &s_output_29, 
    // hls::stream<float> &s_output_30, hls::stream<float> &s_output_31,
    float* out_PLRAM) {
    
    out_PLRAM[0] = s_output_0.read();
    out_PLRAM[1] = s_output_1.read();
    out_PLRAM[2] = s_output_2.read();
    out_PLRAM[3] = s_output_3.read();
    out_PLRAM[4] = s_output_4.read();
    out_PLRAM[5] = s_output_5.read();
    out_PLRAM[6] = s_output_6.read();
    out_PLRAM[7] = s_output_7.read();
    out_PLRAM[8] = s_output_8.read();
    out_PLRAM[9] = s_output_9.read();
    out_PLRAM[10] = s_output_10.read();
    out_PLRAM[11] = s_output_11.read();
    out_PLRAM[12] = s_output_12.read();
    out_PLRAM[13] = s_output_13.read();
    out_PLRAM[14] = s_output_14.read();
    out_PLRAM[15] = s_output_15.read();
    out_PLRAM[16] = s_output_16.read();
    out_PLRAM[17] = s_output_17.read();
    out_PLRAM[18] = s_output_18.read();
    out_PLRAM[19] = s_output_19.read();
    out_PLRAM[20] = s_output_20.read();
    out_PLRAM[21] = s_output_21.read();
    out_PLRAM[22] = s_output_22.read();
    out_PLRAM[23] = s_output_23.read();
    out_PLRAM[24] = s_output_24.read();
    out_PLRAM[25] = s_output_25.read();
    out_PLRAM[26] = s_output_26.read();
    out_PLRAM[27] = s_output_27.read();
    // out_PLRAM[28] = s_output_28.read();
    // out_PLRAM[29] = s_output_29.read();
    // out_PLRAM[30] = s_output_30.read();
    // out_PLRAM[31] = s_output_31.read();
}

template<const int stream_num>
void write_results(hls::stream<float> (&s_output)[stream_num],
    float* out_PLRAM) {

    for (int i = 0; i < stream_num; i++) {
        out_PLRAM[i] = s_output[i].read();
    }
}