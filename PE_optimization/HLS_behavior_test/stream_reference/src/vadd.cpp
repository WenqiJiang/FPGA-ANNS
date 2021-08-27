//////// WENQI: this behavior is not supported ////////

#include "vadd.hpp"

template<const int iter_num, const int stream_num>
void stream_gen(
    hls::stream<int> (&s_gen)[stream_num]) {

    for (int i = 0; i < iter_num; i++) {
        for (int s = 0; s < stream_num; s++) {
#pragma HLS UNROLL
            s_gen[s].write(i);
        }
    }
}

template<const int iter_num, const int stream_num>
void merge_streams(
    hls::stream<int> (&s_in)[stream_num],
    hls::stream<int> &s_out) {

    for (int i = 0; i < iter_num; i++) {
        for (int s = 0; s < stream_num; s++) {
            s_out.write(s_in[s].read());
        }
    }
}


template<const int iter_num>
void consume_stream(
    hls::stream<int> &s_out) {

    for (int i = 0; i < iter_num; i++) {
        s_out.read();
    }
}

void vadd(  
    const float* table_HBM0, const float* table_HBM1, 
    // const t_axi* table_HBM2, const t_axi* table_HBM3, 
    // const t_axi* table_HBM4, const t_axi* table_HBM5, 
    // const t_axi* table_HBM6, const t_axi* table_HBM7, 
    // const t_axi* table_HBM8, const t_axi* table_HBM9, 
    // const t_axi* table_HBM10, const t_axi* table_HBM11, 
    // const t_axi* table_HBM12, const t_axi* table_HBM13, 
    // const t_axi* table_HBM14, const t_axi* table_HBM15, 
    // const t_axi* table_HBM16, const t_axi* table_HBM17, 
    // const t_axi* table_HBM18, const t_axi* table_HBM19, 
    // const t_axi* table_HBM20, const t_axi* table_HBM21, 
    // const t_axi* table_HBM22, const t_axi* table_HBM23, 
    // const t_axi* table_HBM24, const t_axi* table_HBM25, 
    // const t_axi* table_HBM26, const t_axi* table_HBM27, 
    float out_HBM[QUERY_NUM * NLIST]
    // const t_axi* table_HBM28, const t_axi* table_HBM29, 
    // const t_axi* table_HBM30, const t_axi* table_HBM31, 
    // const t_axi* table_DDR0, const t_axi* table_DDR1,
    )
{
#pragma HLS INTERFACE m_axi port=table_HBM0  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=table_HBM1  offset=slave bundle=gmem1
// #pragma HLS INTERFACE m_axi port=table_HBM2  offset=slave bundle=gmem2
// #pragma HLS INTERFACE m_axi port=table_HBM3  offset=slave bundle=gmem3
// #pragma HLS INTERFACE m_axi port=table_HBM4  offset=slave bundle=gmem4
// #pragma HLS INTERFACE m_axi port=table_HBM5  offset=slave bundle=gmem5
// #pragma HLS INTERFACE m_axi port=table_HBM6  offset=slave bundle=gmem6
// #pragma HLS INTERFACE m_axi port=table_HBM7  offset=slave bundle=gmem7
// #pragma HLS INTERFACE m_axi port=table_HBM8  offset=slave bundle=gmem8
// #pragma HLS INTERFACE m_axi port=table_HBM9  offset=slave bundle=gmem9
// #pragma HLS INTERFACE m_axi port=table_HBM10  offset=slave bundle=gmem10
// #pragma HLS INTERFACE m_axi port=table_HBM11  offset=slave bundle=gmem11
// #pragma HLS INTERFACE m_axi port=table_HBM12  offset=slave bundle=gmem12
// #pragma HLS INTERFACE m_axi port=table_HBM13  offset=slave bundle=gmem13
// #pragma HLS INTERFACE m_axi port=table_HBM14  offset=slave bundle=gmem14
// #pragma HLS INTERFACE m_axi port=table_HBM15  offset=slave bundle=gmem15
// #pragma HLS INTERFACE m_axi port=table_HBM16  offset=slave bundle=gmem16
// #pragma HLS INTERFACE m_axi port=table_HBM17  offset=slave bundle=gmem17
// #pragma HLS INTERFACE m_axi port=table_HBM18  offset=slave bundle=gmem18
// #pragma HLS INTERFACE m_axi port=table_HBM19  offset=slave bundle=gmem19
// #pragma HLS INTERFACE m_axi port=table_HBM20  offset=slave bundle=gmem20
// #pragma HLS INTERFACE m_axi port=table_HBM21  offset=slave bundle=gmem21
// #pragma HLS INTERFACE m_axi port=table_HBM22  offset=slave bundle=gmem22
// #pragma HLS INTERFACE m_axi port=table_HBM23  offset=slave bundle=gmem23
// #pragma HLS INTERFACE m_axi port=table_HBM24  offset=slave bundle=gmem24
// #pragma HLS INTERFACE m_axi port=table_HBM25  offset=slave bundle=gmem25
// #pragma HLS INTERFACE m_axi port=table_HBM26  offset=slave bundle=gmem26
// #pragma HLS INTERFACE m_axi port=table_HBM27  offset=slave bundle=gmem27
// #pragma HLS INTERFACE m_axi port=table_HBM28  offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=table_HBM29  offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=table_HBM30  offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=table_HBM31  offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=out_HBM offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=table_HBM0  bundle=control
#pragma HLS INTERFACE s_axilite port=table_HBM1  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM2  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM3  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM4  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM5  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM6  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM7  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM8  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM9  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM10  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM11  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM12  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM13  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM14  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM15  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM16  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM17  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM18  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM19  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM20  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM21  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM22  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM23  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM24  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM25  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM26  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM27  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM28  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM29  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM30  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_HBM31  bundle=control

// #pragma HLS INTERFACE s_axilite port=table_DDR0  bundle=control
// #pragma HLS INTERFACE s_axilite port=table_DDR1  bundle=control

#pragma HLS INTERFACE s_axilite port=out_HBM bundle=control

#pragma HLS INTERFACE s_axilite port=return bundle=control

    ////// ap_uint<64> 2 ports //////
    // bram_ap_uint_64_2ports<16>(table_HBM0, out_HBM);

    // bram_ap_uint_64_2ports<1024>(table_HBM0, out_HBM);

    // bram_ap_uint_64_2ports<1025>(table_HBM0, out_HBM);

    // bram_ap_uint_64_2ports<2048>(table_HBM0, out_HBM);


    ////// ap_uint<64> 1 port //////
    // bram_ap_uint_64_1port<16>(table_HBM0, out_HBM);

    // bram_ap_uint_64_1port<512>(table_HBM0, out_HBM);

    // bram_ap_uint_64_1port<513>(table_HBM0, out_HBM);

    // bram_ap_uint_64_1port<1024>(table_HBM0, out_HBM);


    ////// float 2 ports //////
    // bram_float_2ports<16>(table_HBM0, out_HBM);

    // bram_float_2ports<1024>(table_HBM0, out_HBM);

    // bram_float_2ports<1025>(table_HBM0, out_HBM);

    // bram_float_2ports<2048>(table_HBM0, out_HBM);

    ////// float 1 port //////
    // bram_float_1port<16>(table_HBM0, out_HBM);

    // bram_float_1port<512>(table_HBM0, out_HBM);

    // bram_float_1port<513>(table_HBM0, out_HBM);
    hls::stream<int> s_gen[4];
#pragma HLS stream variable=s_gen depth=8
#pragma HLS array_partition variable=s_gen complete

    hls::stream<int> s_intermediate[2];
#pragma HLS stream variable=s_intermediate depth=8
#pragma HLS array_partition variable=s_intermediate complete

    hls::stream<int> s_result;
#pragma HLS stream variable=s_result depth=8

    stream_gen<1000, 4>(s_gen);
    
    //////// WENQI: this behavior is not supported ////////
    hls::stream<int> start_pointer[2] = (s_gen[0]);
    merge_streams<1000, 2>(
        start_pointer,
        s_intermediate[0]);

    merge_streams<1000, 2>(
        &(s_gen[2]),
        s_intermediate[1]);

    merge_streams<2000, 2>(
        s_intermediate,
        s_result);
    
    consume_stream<4000>(s_result);
}
