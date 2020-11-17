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

    float_struct fs;

    hls::stream<float_struct> s_struct;
#pragma HLS stream variable=s_struct depth=4
#pragma HLS RESOURCE variable=s_struct core=FIFO_SRL

    hls::stream<float> s_result;
#pragma HLS stream variable=s_result depth=4
#pragma HLS RESOURCE variable=s_result core=FIFO_SRL

    init_array<ARRAY_LEN>(&fs, table_DDR0);

    feed_struct<LOOP_NUM>(fs, s_struct);

    reduction<LOOP_NUM>(s_struct, s_result);

    write_result<LOOP_NUM>(s_result, out_PLRAM);
}

template<const int total_len>
void init_array(float_struct* fs, const float* data_source) {

    fs->items_0 = data_source[0];
    fs->items_1 = data_source[1];
    fs->items_2 = data_source[2];
    fs->items_3 = data_source[3];
    fs->items_4 = data_source[4];
    fs->items_5 = data_source[5];
    fs->items_6 = data_source[6];
    fs->items_7 = data_source[7];
    fs->items_8 = data_source[8];
    fs->items_9 = data_source[9];
    fs->items_10 = data_source[10];
    fs->items_11 = data_source[11];
    fs->items_12 = data_source[12];
    fs->items_13 = data_source[13];
    fs->items_14 = data_source[14];
    fs->items_15 = data_source[15];
}

template<const int total_len>
void feed_struct(float_struct fs, hls::stream<float_struct>& s_struct) {
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        s_struct.write(fs);
    }
}

template<const int total_len>
void reduction(hls::stream<float_struct>& s_struct, hls::stream<float>& s_result) {
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1

        float_struct local_fc = s_struct.read();
#pragma HLS data_pack variable=local_fc

//  AS LONG AS WE ARE USING DATA_PACK, WE GET:

// INFO: [HLS 200-10] Starting hardware synthesis ...
// INFO: [HLS 200-10] Synthesizing 'vadd' ...
// WARNING: [SYN 201-103] Legalizing function name 'init_array<16>5' to 'init_array_16_5'.
// WARNING: [SYN 201-103] Legalizing function name 'feed_struct<1024>' to 'feed_struct_1024_s'.
// WARNING: [SYN 201-103] Legalizing function name 'reduction<1024>' to 'reduction_1024_s'.
// WARNING: [SYN 201-103] Legalizing function name 'write_result<1024>' to 'write_result_1024_s'.
// WARNING: [SYN 201-303] memory assignment of 'FIFO_SRL': conflicting assignments between 'FIFO_SRL' and 'FIFO'.
// WARNING: [SYN 201-303] memory assignment of 'FIFO_SRL': conflicting assignments between 'FIFO_SRL' and 'FIFO'.
// WARNING: [SYN 201-303] memory assignment of 'FIFO_SRL': conflicting assignments between 'FIFO_SRL' and 'FIFO'.
// WARNING: [SYN 201-303] memory assignment of 'FIFO_SRL': conflicting assignments between 'FIFO_SRL' and 'FIFO'.
// WARNING: [SYN 201-303] memory assignment of 'FIFO_SRL': conflicting assignments between 'FIFO_SRL' and 'FIFO'.
// WARNING: [SYN 201-303] memory assignment of 'FIFO_SRL': conflicting assignments between 'FIFO_SRL' and 'FIFO'.
// WARNING: [SYN 201-303] memory assignment of 'FIFO_SRL': conflicting assignments between 'FIFO_SRL' and 'FIFO'.
// Synthesis failed.
//     while executing
// "source vadd.tcl"
//     ("uplevel" body line 1)
//     invoked from within
// "uplevel \#0 [list source $arg] "

        float result = 
            local_fc.items_0 + local_fc.items_1 + 
            local_fc.items_2 + local_fc.items_3 + 
            local_fc.items_4 + local_fc.items_5 + 
            local_fc.items_6 + local_fc.items_7 + 
            local_fc.items_8 + local_fc.items_9 + 
            local_fc.items_10 + local_fc.items_11 + 
            local_fc.items_12 + local_fc.items_13 + 
            local_fc.items_14 + local_fc.items_15;
        
        s_result.write(result);
    }
}

template<const int total_len>
void write_result(hls::stream<float>& s_result, float* output) {
    for (int i = 0; i < total_len; i++) {
    #pragma HLS pipeline II=1
        output[i] = s_result.read();
    }
}