
#include <ap_int.h>

#define REPEAT_NUM 16
#define DATA_NUM (1024*1024)

typedef struct {
    float items_0;
    float items_1;
    float items_2;
    float items_3;
    float items_4;
    float items_5;
    float items_6;
    float items_7;
    float items_8;
    float items_9;
    float items_10;
    float items_11;
    float items_12;
    float items_13;
    float items_14;
    float items_15;
} PQ_codes;

using data_t = ap_uint<512>;

PQ_codes ap_uint512_to_struct(ap_uint<512> in) {
#pragma HLS pipeline
#pragma HLS inline off
#pragma HLS interface port=return register
  PQ_codes out;

  out.items_0 = in.range(31, 0);
  out.items_1 = in.range(63, 32);
  out.items_2 = in.range(95, 64);
  out.items_3 = in.range(127, 96);
  out.items_4 = in.range(159, 128);
  out.items_5 = in.range(191, 160);
  out.items_6 = in.range(223, 192);
  out.items_7 = in.range(255, 224);
  out.items_8 = in.range(287, 256);
  out.items_9 = in.range(319, 288);
  out.items_10 = in.range(351, 320);
  out.items_11 = in.range(383, 352);
  out.items_12 = in.range(415, 384);
  out.items_13 = in.range(447, 416);
  out.items_14 = in.range(479, 448);
  out.items_15 = in.range(511, 480);

  return out;
}

ap_uint<512> struct_to_ap_uint512(PQ_codes in) {
#pragma HLS pipeline
#pragma HLS inline off
#pragma HLS interface port=return register
  ap_uint<512> out;

  out.range(31, 0) = in.items_0;
  out.range(63, 32) = in.items_1;
  out.range(95, 64) = in.items_2;
  out.range(127, 96) = in.items_3;
  out.range(159, 128) = in.items_4;
  out.range(191, 160) = in.items_5;
  out.range(223, 192) = in.items_6;
  out.range(255, 224) = in.items_7;
  out.range(287, 256) = in.items_8;
  out.range(319, 288) = in.items_9;
  out.range(351, 320) = in.items_10;
  out.range(383, 352) = in.items_11;
  out.range(415, 384) = in.items_12;
  out.range(447, 416) = in.items_13;
  out.range(479, 448) = in.items_14;
  out.range(511, 480) = in.items_15;

  return out;
}


#include <cstdio>
#include <cstring>
#include <cassert>
#include <hls_stream.h>

template<class T>
T HLS_REG(T in){
#pragma HLS pipeline
#pragma HLS inline off
#pragma HLS interface port=return register
    return in;
}


void read(const data_t *src, hls::stream<PQ_codes>& dest) {
    for (int r = 0; r < REPEAT_NUM; r++) {
#pragma HLS loop_flatten off
        for (int i = 0; i < DATA_NUM; i++) {
#pragma HLS pipeline II=1
				data_t temp = src[i];
				PQ_codes temp_delayed = ap_uint512_to_struct(temp);
				dest.write(temp_delayed);
        }
    }
}

void reduction(hls::stream<PQ_codes>& s_struct, hls::stream<float>& s_result) {
    for (int r = 0; r < REPEAT_NUM; r++) {
#pragma HLS loop_flatten off
        for (int i = 0; i < DATA_NUM; i++) {
#pragma HLS pipeline II=1

        PQ_codes local_fc = s_struct.read();
        float result = 
            local_fc.items_0 + local_fc.items_1 + 
            local_fc.items_2 + local_fc.items_3 + 
            local_fc.items_4 + local_fc.items_5 + 
            local_fc.items_6 + local_fc.items_7 + 
            local_fc.items_8 + local_fc.items_9 + 
            local_fc.items_10 + local_fc.items_11 + 
            local_fc.items_12 + local_fc.items_13 + 
            local_fc.items_14 + local_fc.items_15;
#pragma HLS resource variable=result core=FAddSub_fulldsp

        s_result.write(result);
        }
    }
}

void padding(hls::stream<float>& s_float, hls::stream<data_t>& s_result) {
    for (int r = 0; r < REPEAT_NUM; r++) {
#pragma HLS loop_flatten off
        for (int i = 0; i < DATA_NUM; i++) {
#pragma HLS pipeline II=1

        float temp = s_float.read();
        data_t result;

        result.range(31, 0) = temp;
        result.range(63, 32) = temp;
        result.range(95, 64) = temp;
        result.range(127, 96) = temp;
        result.range(159, 128) = temp;
        result.range(191, 160) = temp;
        result.range(223, 192) = temp;
        result.range(255, 224) = temp;
        result.range(287, 256) = temp;
        result.range(319, 288) = temp;
        result.range(351, 320) = temp;
        result.range(383, 352) = temp;
        result.range(415, 384) = temp;
        result.range(447, 416) = temp;
        result.range(479, 448) = temp;
        result.range(511, 480) = temp;

        s_result.write(result);
        }
    }
}

void write(hls::stream<data_t>& src, data_t *dest) {
    for (int r = 0; r < REPEAT_NUM; r++) {
#pragma HLS loop_flatten off
        for (int i = 0; i < DATA_NUM; i++) {
#pragma HLS pipeline II=1
				data_t temp = src.read();
        data_t temp_delayed = HLS_REG(HLS_REG(temp));
				dest[i] = temp_delayed;
        }
    }
}


#ifndef HLS
extern "C" {
#endif

void vadd(
  const data_t *in0, // Read-Only Vector
  const data_t *in1, // Read-Only Vector
  const data_t *in2, // Read-Only Vector
  const data_t *in3, // Read-Only Vector
  const data_t *in4, // Read-Only Vector
  const data_t *in5, // Read-Only Vector
  const data_t *in6, // Read-Only Vector
  const data_t *in7, // Read-Only Vector
  const data_t *in8, // Read-Only Vector
  const data_t *in9, // Read-Only Vector
  const data_t *in10, // Read-Only Vector
  const data_t *in11, // Read-Only Vector
  const data_t *in12, // Read-Only Vector
  const data_t *in13, // Read-Only Vector
  const data_t *in14, // Read-Only Vector
  const data_t *in15, // Read-Only Vector
  const data_t *in16, // Read-Only Vector
  const data_t *in17, // Read-Only Vector
  const data_t *in18, // Read-Only Vector
  const data_t *in19, // Read-Only Vector
  const data_t *in20, // Read-Only Vector
  const data_t *in21, // Read-Only Vector
  const data_t *in22, // Read-Only Vector
  const data_t *in23, // Read-Only Vector
  const data_t *in24, // Read-Only Vector
  const data_t *in25, // Read-Only Vector
  const data_t *in26, // Read-Only Vector
  const data_t *in27, // Read-Only Vector
  const data_t *in28, // Read-Only Vector
  const data_t *in29, // Read-Only Vector
  data_t *out0, // Write-Only Vector
  data_t *out1, // Write-Only Vector
  data_t *out2, // Write-Only Vector
  data_t *out3, // Write-Only Vector
  data_t *out4, // Write-Only Vector
  data_t *out5, // Write-Only Vector
  data_t *out6, // Write-Only Vector
  data_t *out7, // Write-Only Vector
  data_t *out8, // Write-Only Vector
  data_t *out9, // Write-Only Vector
  data_t *out10, // Write-Only Vector
  data_t *out11, // Write-Only Vector
  data_t *out12, // Write-Only Vector
  data_t *out13, // Write-Only Vector
  data_t *out14, // Write-Only Vector
  data_t *out15, // Write-Only Vector
  data_t *out16, // Write-Only Vector
  data_t *out17, // Write-Only Vector
  data_t *out18, // Write-Only Vector
  data_t *out19, // Write-Only Vector
  data_t *out20, // Write-Only Vector
  data_t *out21, // Write-Only Vector
  data_t *out22, // Write-Only Vector
  data_t *out23, // Write-Only Vector
  data_t *out24, // Write-Only Vector
  data_t *out25, // Write-Only Vector
  data_t *out26, // Write-Only Vector
  data_t *out27, // Write-Only Vector
  data_t *out28, // Write-Only Vector
  data_t *out29 // Write-Only Vector
) {
// Here Vitis kernel contains one s_axilite interface which will be used by host application to configure the kernel.
// Here bundle control is defined which is s_axilite interface and associated with all the arguments (in1, in2, out_r and DATA_NUM),
// control interface must also be associated with "return".
// All the global memory access arguments must be associated to one m_axi(AXI Master Interface). Here all three arguments(in1, in2, out_r) are
// associated to bundle gmem which means that a AXI master interface named "gmem" will be created in Kernel and all these variables will be
// accessing global memory through this interface.
// Multiple interfaces can also be created based on the requirements. For example when multiple memory accessing arguments need access to
// global memory simultaneously, user can create multiple master interfaces and can connect to different arguments.

#pragma HLS INTERFACE m_axi port = in0 offset = slave bundle = hbm0  
#pragma HLS INTERFACE m_axi port = in1 offset = slave bundle = hbm1  
#pragma HLS INTERFACE m_axi port = in2 offset = slave bundle = hbm2  
#pragma HLS INTERFACE m_axi port = in3 offset = slave bundle = hbm3  
#pragma HLS INTERFACE m_axi port = in4 offset = slave bundle = hbm4  
#pragma HLS INTERFACE m_axi port = in5 offset = slave bundle = hbm5  
#pragma HLS INTERFACE m_axi port = in6 offset = slave bundle = hbm6  
#pragma HLS INTERFACE m_axi port = in7 offset = slave bundle = hbm7  
#pragma HLS INTERFACE m_axi port = in8 offset = slave bundle = hbm8  
#pragma HLS INTERFACE m_axi port = in9 offset = slave bundle = hbm9  
#pragma HLS INTERFACE m_axi port = in10 offset = slave bundle = hbm10  
#pragma HLS INTERFACE m_axi port = in11 offset = slave bundle = hbm11  
#pragma HLS INTERFACE m_axi port = in12 offset = slave bundle = hbm12  
#pragma HLS INTERFACE m_axi port = in13 offset = slave bundle = hbm13  
#pragma HLS INTERFACE m_axi port = in14 offset = slave bundle = hbm14  
#pragma HLS INTERFACE m_axi port = in15 offset = slave bundle = hbm15  
#pragma HLS INTERFACE m_axi port = in16 offset = slave bundle = hbm16  
#pragma HLS INTERFACE m_axi port = in17 offset = slave bundle = hbm17  
#pragma HLS INTERFACE m_axi port = in18 offset = slave bundle = hbm18  
#pragma HLS INTERFACE m_axi port = in19 offset = slave bundle = hbm19  
#pragma HLS INTERFACE m_axi port = in20 offset = slave bundle = hbm20  
#pragma HLS INTERFACE m_axi port = in21 offset = slave bundle = hbm21  
#pragma HLS INTERFACE m_axi port = in22 offset = slave bundle = hbm22  
#pragma HLS INTERFACE m_axi port = in23 offset = slave bundle = hbm23  
#pragma HLS INTERFACE m_axi port = in24 offset = slave bundle = hbm24  
#pragma HLS INTERFACE m_axi port = in25 offset = slave bundle = hbm25  
#pragma HLS INTERFACE m_axi port = in26 offset = slave bundle = hbm26  
#pragma HLS INTERFACE m_axi port = in27 offset = slave bundle = hbm27  
#pragma HLS INTERFACE m_axi port = in28 offset = slave bundle = hbm28  
#pragma HLS INTERFACE m_axi port = in29 offset = slave bundle = hbm29  

#pragma HLS INTERFACE m_axi port = out0 offset = slave bundle = hbm0 
#pragma HLS INTERFACE m_axi port = out1 offset = slave bundle = hbm1 
#pragma HLS INTERFACE m_axi port = out2 offset = slave bundle = hbm2 
#pragma HLS INTERFACE m_axi port = out3 offset = slave bundle = hbm3 
#pragma HLS INTERFACE m_axi port = out4 offset = slave bundle = hbm4 
#pragma HLS INTERFACE m_axi port = out5 offset = slave bundle = hbm5 
#pragma HLS INTERFACE m_axi port = out6 offset = slave bundle = hbm6 
#pragma HLS INTERFACE m_axi port = out7 offset = slave bundle = hbm7 
#pragma HLS INTERFACE m_axi port = out8 offset = slave bundle = hbm8 
#pragma HLS INTERFACE m_axi port = out9 offset = slave bundle = hbm9 
#pragma HLS INTERFACE m_axi port = out10 offset = slave bundle = hbm10 
#pragma HLS INTERFACE m_axi port = out11 offset = slave bundle = hbm11 
#pragma HLS INTERFACE m_axi port = out12 offset = slave bundle = hbm12 
#pragma HLS INTERFACE m_axi port = out13 offset = slave bundle = hbm13 
#pragma HLS INTERFACE m_axi port = out14 offset = slave bundle = hbm14 
#pragma HLS INTERFACE m_axi port = out15 offset = slave bundle = hbm15 
#pragma HLS INTERFACE m_axi port = out16 offset = slave bundle = hbm16 
#pragma HLS INTERFACE m_axi port = out17 offset = slave bundle = hbm17 
#pragma HLS INTERFACE m_axi port = out18 offset = slave bundle = hbm18 
#pragma HLS INTERFACE m_axi port = out19 offset = slave bundle = hbm19 
#pragma HLS INTERFACE m_axi port = out20 offset = slave bundle = hbm20 
#pragma HLS INTERFACE m_axi port = out21 offset = slave bundle = hbm21 
#pragma HLS INTERFACE m_axi port = out22 offset = slave bundle = hbm22 
#pragma HLS INTERFACE m_axi port = out23 offset = slave bundle = hbm23 
#pragma HLS INTERFACE m_axi port = out24 offset = slave bundle = hbm24 
#pragma HLS INTERFACE m_axi port = out25 offset = slave bundle = hbm25 
#pragma HLS INTERFACE m_axi port = out26 offset = slave bundle = hbm26 
#pragma HLS INTERFACE m_axi port = out27 offset = slave bundle = hbm27 
#pragma HLS INTERFACE m_axi port = out28 offset = slave bundle = hbm28 
#pragma HLS INTERFACE m_axi port = out29 offset = slave bundle = hbm29 

// #pragma HLS INTERFACE s_axilite port = REPEAT_NUM bundle = control
// #pragma HLS INTERFACE s_axilite port = DATA_NUM bundle = control
// #pragma HLS INTERFACE s_axilite port = run_write bundle = control
// #pragma HLS INTERFACE s_axilite port = run_read bundle = control
#pragma HLS INTERFACE s_axilite port = return bundle = control

#pragma HLS dataflow

  hls::stream<PQ_codes> s_struct0;   
  hls::stream<PQ_codes> s_struct1;   
  hls::stream<PQ_codes> s_struct2;   
  hls::stream<PQ_codes> s_struct3;   
  hls::stream<PQ_codes> s_struct4;   
  hls::stream<PQ_codes> s_struct5;   
  hls::stream<PQ_codes> s_struct6;   
  hls::stream<PQ_codes> s_struct7;   
  hls::stream<PQ_codes> s_struct8;   
  hls::stream<PQ_codes> s_struct9;   
  hls::stream<PQ_codes> s_struct10;   
  hls::stream<PQ_codes> s_struct11;   
  hls::stream<PQ_codes> s_struct12;   
  hls::stream<PQ_codes> s_struct13;   
  hls::stream<PQ_codes> s_struct14;   
  hls::stream<PQ_codes> s_struct15;   
  hls::stream<PQ_codes> s_struct16;   
  hls::stream<PQ_codes> s_struct17;   
  hls::stream<PQ_codes> s_struct18;   
  hls::stream<PQ_codes> s_struct19;   
  hls::stream<PQ_codes> s_struct20;   
  hls::stream<PQ_codes> s_struct21;   
  hls::stream<PQ_codes> s_struct22;   
  hls::stream<PQ_codes> s_struct23;   
  hls::stream<PQ_codes> s_struct24;   
  hls::stream<PQ_codes> s_struct25;   
  hls::stream<PQ_codes> s_struct26;   
  hls::stream<PQ_codes> s_struct27;   
  hls::stream<PQ_codes> s_struct28;   
  hls::stream<PQ_codes> s_struct29;   

#pragma HLS STREAM variable=s_struct0  depth=2 dim=1
#pragma HLS STREAM variable=s_struct1  depth=2 dim=1
#pragma HLS STREAM variable=s_struct2  depth=2 dim=1
#pragma HLS STREAM variable=s_struct3  depth=2 dim=1
#pragma HLS STREAM variable=s_struct4  depth=2 dim=1
#pragma HLS STREAM variable=s_struct5  depth=2 dim=1
#pragma HLS STREAM variable=s_struct6  depth=2 dim=1
#pragma HLS STREAM variable=s_struct7  depth=2 dim=1
#pragma HLS STREAM variable=s_struct8  depth=2 dim=1
#pragma HLS STREAM variable=s_struct9  depth=2 dim=1
#pragma HLS STREAM variable=s_struct10  depth=2 dim=1
#pragma HLS STREAM variable=s_struct11  depth=2 dim=1
#pragma HLS STREAM variable=s_struct12  depth=2 dim=1
#pragma HLS STREAM variable=s_struct13  depth=2 dim=1
#pragma HLS STREAM variable=s_struct14  depth=2 dim=1
#pragma HLS STREAM variable=s_struct15  depth=2 dim=1
#pragma HLS STREAM variable=s_struct16  depth=2 dim=1
#pragma HLS STREAM variable=s_struct17  depth=2 dim=1
#pragma HLS STREAM variable=s_struct18  depth=2 dim=1
#pragma HLS STREAM variable=s_struct19  depth=2 dim=1
#pragma HLS STREAM variable=s_struct20  depth=2 dim=1
#pragma HLS STREAM variable=s_struct21  depth=2 dim=1
#pragma HLS STREAM variable=s_struct22  depth=2 dim=1
#pragma HLS STREAM variable=s_struct23  depth=2 dim=1
#pragma HLS STREAM variable=s_struct24  depth=2 dim=1
#pragma HLS STREAM variable=s_struct25  depth=2 dim=1
#pragma HLS STREAM variable=s_struct26  depth=2 dim=1
#pragma HLS STREAM variable=s_struct27  depth=2 dim=1
#pragma HLS STREAM variable=s_struct28  depth=2 dim=1
#pragma HLS STREAM variable=s_struct29  depth=2 dim=1
#pragma HLS RESOURCE variable=s_struct0 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct1 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct2 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct3 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct4 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct5 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct6 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct7 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct8 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct9 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct10 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct11 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct12 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct13 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct14 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct15 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct16 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct17 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct18 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct19 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct20 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct21 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct22 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct23 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct24 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct25 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct26 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct27 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct28 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_struct29 core=FIFO_SRL


  hls::stream<float> s_float_result0;   
  hls::stream<float> s_float_result1;   
  hls::stream<float> s_float_result2;   
  hls::stream<float> s_float_result3;   
  hls::stream<float> s_float_result4;   
  hls::stream<float> s_float_result5;   
  hls::stream<float> s_float_result6;   
  hls::stream<float> s_float_result7;   
  hls::stream<float> s_float_result8;   
  hls::stream<float> s_float_result9;   
  hls::stream<float> s_float_result10;   
  hls::stream<float> s_float_result11;   
  hls::stream<float> s_float_result12;   
  hls::stream<float> s_float_result13;   
  hls::stream<float> s_float_result14;   
  hls::stream<float> s_float_result15;   
  hls::stream<float> s_float_result16;   
  hls::stream<float> s_float_result17;   
  hls::stream<float> s_float_result18;   
  hls::stream<float> s_float_result19;   
  hls::stream<float> s_float_result20;   
  hls::stream<float> s_float_result21;   
  hls::stream<float> s_float_result22;   
  hls::stream<float> s_float_result23;   
  hls::stream<float> s_float_result24;   
  hls::stream<float> s_float_result25;   
  hls::stream<float> s_float_result26;   
  hls::stream<float> s_float_result27;   
  hls::stream<float> s_float_result28;   
  hls::stream<float> s_float_result29;   

#pragma HLS STREAM variable=s_float_result0  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result1  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result2  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result3  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result4  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result5  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result6  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result7  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result8  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result9  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result10  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result11  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result12  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result13  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result14  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result15  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result16  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result17  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result18  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result19  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result20  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result21  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result22  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result23  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result24  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result25  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result26  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result27  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result28  depth=2 dim=1
#pragma HLS STREAM variable=s_float_result29  depth=2 dim=1
#pragma HLS RESOURCE variable=s_float_result0 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result1 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result2 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result3 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result4 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result5 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result6 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result7 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result8 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result9 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result10 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result11 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result12 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result13 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result14 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result15 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result16 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result17 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result18 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result19 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result20 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result21 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result22 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result23 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result24 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result25 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result26 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result27 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result28 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_float_result29 core=FIFO_SRL


  hls::stream<data_t> s_padded_result0;   
  hls::stream<data_t> s_padded_result1;   
  hls::stream<data_t> s_padded_result2;   
  hls::stream<data_t> s_padded_result3;   
  hls::stream<data_t> s_padded_result4;   
  hls::stream<data_t> s_padded_result5;   
  hls::stream<data_t> s_padded_result6;   
  hls::stream<data_t> s_padded_result7;   
  hls::stream<data_t> s_padded_result8;   
  hls::stream<data_t> s_padded_result9;   
  hls::stream<data_t> s_padded_result10;   
  hls::stream<data_t> s_padded_result11;   
  hls::stream<data_t> s_padded_result12;   
  hls::stream<data_t> s_padded_result13;   
  hls::stream<data_t> s_padded_result14;   
  hls::stream<data_t> s_padded_result15;   
  hls::stream<data_t> s_padded_result16;   
  hls::stream<data_t> s_padded_result17;   
  hls::stream<data_t> s_padded_result18;   
  hls::stream<data_t> s_padded_result19;   
  hls::stream<data_t> s_padded_result20;   
  hls::stream<data_t> s_padded_result21;   
  hls::stream<data_t> s_padded_result22;   
  hls::stream<data_t> s_padded_result23;   
  hls::stream<data_t> s_padded_result24;   
  hls::stream<data_t> s_padded_result25;   
  hls::stream<data_t> s_padded_result26;   
  hls::stream<data_t> s_padded_result27;   
  hls::stream<data_t> s_padded_result28;   
  hls::stream<data_t> s_padded_result29;   

#pragma HLS STREAM variable=s_padded_result0  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result1  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result2  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result3  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result4  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result5  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result6  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result7  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result8  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result9  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result10  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result11  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result12  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result13  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result14  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result15  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result16  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result17  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result18  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result19  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result20  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result21  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result22  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result23  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result24  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result25  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result26  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result27  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result28  depth=2 dim=1
#pragma HLS STREAM variable=s_padded_result29  depth=2 dim=1
#pragma HLS RESOURCE variable=s_padded_result0 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result1 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result2 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result3 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result4 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result5 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result6 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result7 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result8 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result9 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result10 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result11 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result12 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result13 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result14 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result15 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result16 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result17 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result18 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result19 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result20 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result21 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result22 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result23 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result24 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result25 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result26 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result27 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result28 core=FIFO_SRL
#pragma HLS RESOURCE variable=s_padded_result29 core=FIFO_SRL

  read(in0, s_struct0);
  read(in1, s_struct1);
  read(in2, s_struct2);
  read(in3, s_struct3);
  read(in4, s_struct4);
  read(in5, s_struct5);
  read(in6, s_struct6);
  read(in7, s_struct7);
  read(in8, s_struct8);
  read(in9, s_struct9);
  read(in10, s_struct10);
  read(in11, s_struct11);
  read(in12, s_struct12);
  read(in13, s_struct13);
  read(in14, s_struct14);
  read(in15, s_struct15);
  read(in16, s_struct16);
  read(in17, s_struct17);
  read(in18, s_struct18);
  read(in19, s_struct19);
  read(in20, s_struct20);
  read(in21, s_struct21);
  read(in22, s_struct22);
  read(in23, s_struct23);
  read(in24, s_struct24);
  read(in25, s_struct25);
  read(in26, s_struct26);
  read(in27, s_struct27);
  read(in28, s_struct28);
  read(in29, s_struct29);

  reduction(s_struct0, s_float_result0);
  reduction(s_struct1, s_float_result1);
  reduction(s_struct2, s_float_result2);
  reduction(s_struct3, s_float_result3);
  reduction(s_struct4, s_float_result4);
  reduction(s_struct5, s_float_result5);
  reduction(s_struct6, s_float_result6);
  reduction(s_struct7, s_float_result7);
  reduction(s_struct8, s_float_result8);
  reduction(s_struct9, s_float_result9);
  reduction(s_struct10, s_float_result10);
  reduction(s_struct11, s_float_result11);
  reduction(s_struct12, s_float_result12);
  reduction(s_struct13, s_float_result13);
  reduction(s_struct14, s_float_result14);
  reduction(s_struct15, s_float_result15);
  reduction(s_struct16, s_float_result16);
  reduction(s_struct17, s_float_result17);
  reduction(s_struct18, s_float_result18);
  reduction(s_struct19, s_float_result19);
  reduction(s_struct20, s_float_result20);
  reduction(s_struct21, s_float_result21);
  reduction(s_struct22, s_float_result22);
  reduction(s_struct23, s_float_result23);
  reduction(s_struct24, s_float_result24);
  reduction(s_struct25, s_float_result25);
  reduction(s_struct26, s_float_result26);
  reduction(s_struct27, s_float_result27);
  reduction(s_struct28, s_float_result28);
  reduction(s_struct29, s_float_result29);

  padding(s_float_result0, s_padded_result0);
  padding(s_float_result1, s_padded_result1);
  padding(s_float_result2, s_padded_result2);
  padding(s_float_result3, s_padded_result3);
  padding(s_float_result4, s_padded_result4);
  padding(s_float_result5, s_padded_result5);
  padding(s_float_result6, s_padded_result6);
  padding(s_float_result7, s_padded_result7);
  padding(s_float_result8, s_padded_result8);
  padding(s_float_result9, s_padded_result9);
  padding(s_float_result10, s_padded_result10);
  padding(s_float_result11, s_padded_result11);
  padding(s_float_result12, s_padded_result12);
  padding(s_float_result13, s_padded_result13);
  padding(s_float_result14, s_padded_result14);
  padding(s_float_result15, s_padded_result15);
  padding(s_float_result16, s_padded_result16);
  padding(s_float_result17, s_padded_result17);
  padding(s_float_result18, s_padded_result18);
  padding(s_float_result19, s_padded_result19);
  padding(s_float_result20, s_padded_result20);
  padding(s_float_result21, s_padded_result21);
  padding(s_float_result22, s_padded_result22);
  padding(s_float_result23, s_padded_result23);
  padding(s_float_result24, s_padded_result24);
  padding(s_float_result25, s_padded_result25);
  padding(s_float_result26, s_padded_result26);
  padding(s_float_result27, s_padded_result27);
  padding(s_float_result28, s_padded_result28);
  padding(s_float_result29, s_padded_result29);

  write(s_padded_result0, out0);
  write(s_padded_result1, out1);
  write(s_padded_result2, out2);
  write(s_padded_result3, out3);
  write(s_padded_result4, out4);
  write(s_padded_result5, out5);
  write(s_padded_result6, out6);
  write(s_padded_result7, out7);
  write(s_padded_result8, out8);
  write(s_padded_result9, out9);
  write(s_padded_result10, out10);
  write(s_padded_result11, out11);
  write(s_padded_result12, out12);
  write(s_padded_result13, out13);
  write(s_padded_result14, out14);
  write(s_padded_result15, out15);
  write(s_padded_result16, out16);
  write(s_padded_result17, out17);
  write(s_padded_result18, out18);
  write(s_padded_result19, out19);
  write(s_padded_result20, out20);
  write(s_padded_result21, out21);
  write(s_padded_result22, out22);
  write(s_padded_result23, out23);
  write(s_padded_result24, out24);
  write(s_padded_result25, out25);
  write(s_padded_result26, out26);
  write(s_padded_result27, out27);
  write(s_padded_result28, out28);
  write(s_padded_result29, out29);
}
#ifndef HLS
} // end of extern C
#endif
