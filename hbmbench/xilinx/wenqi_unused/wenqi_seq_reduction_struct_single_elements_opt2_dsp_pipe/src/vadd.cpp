
#include <ap_int.h>

#define REPEAT_NUM 16
#define DATA_NUM (1024*1024)

struct PQ_codes{
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
};

typedef struct {
    float items_0;
    float items_1;
} two_floats;

// using data_t = ap_uint<512>;
typedef PQ_codes data_t;

#include <cstdio>
#include <cstring>
#include <cassert>
#include <hls_stream.h>

template<class T>
T HLS_REG(T in){
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    return in;
}

float SUM_4(float in0, float in1, float in2, float in3){
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register

    float tmp = in0 + in1 + in2 + in3;
#pragma HLS resource variable=tmp core=FAddSub_fulldsp 
    return tmp;
}

float SUM_2(float in0, float in1){
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register

    float tmp = in0 + in1;
#pragma HLS resource variable=tmp core=FAddSub_fulldsp 
    return tmp;
}

two_floats extract_2_0(data_t* in) {
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    two_floats tmp;
    tmp.items_0 = in->items_0;
    tmp.items_1 = in->items_1;

    return tmp;
}

two_floats extract_2_1(data_t* in) {
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    two_floats tmp;
    tmp.items_0 = in->items_2;
    tmp.items_1 = in->items_3;

    return tmp;
}
two_floats extract_2_2(data_t* in) {
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    two_floats tmp;
    tmp.items_0 = in->items_4;
    tmp.items_1 = in->items_5;

    return tmp;
}
two_floats extract_2_3(data_t* in) {
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    two_floats tmp;
    tmp.items_0 = in->items_6;
    tmp.items_1 = in->items_7;

    return tmp;
}

two_floats extract_2_4(data_t* in) {
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    two_floats tmp;
    tmp.items_0 = in->items_8;
    tmp.items_1 = in->items_9;

    return tmp;
}
two_floats extract_2_5(data_t* in) {
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    two_floats tmp;
    tmp.items_0 = in->items_10;
    tmp.items_1 = in->items_11;

    return tmp;
}
two_floats extract_2_6(data_t* in) {
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    two_floats tmp;
    tmp.items_0 = in->items_12;
    tmp.items_1 = in->items_13;

    return tmp;
}

two_floats extract_2_7(data_t* in) {
#pragma HLS pipeline II=1
#pragma HLS inline off
#pragma HLS interface port=return register
    two_floats tmp;
    tmp.items_0 = in->items_14;
    tmp.items_1 = in->items_15;

    return tmp;
}


void read(const data_t *src, hls::stream<float>& dest) {
    for (int r = 0; r < REPEAT_NUM; r++) {
#pragma HLS loop_flatten off
        for (int i = 0; i < DATA_NUM; i++) {
#pragma HLS pipeline II=1
            data_t temp = src[i];
            data_t temp_delayed = HLS_REG(HLS_REG(temp));
            // data_t temp_delayed_cp0 = temp_delayed;
            // data_t temp_delayed_cp1 = temp_delayed;
            // data_t temp_delayed_cp2 = temp_delayed;
            // data_t temp_delayed_cp3 = temp_delayed;
            // data_t temp_delayed_cp4 = temp_delayed;
            // data_t temp_delayed_cp5 = temp_delayed;
            // data_t temp_delayed_cp6 = temp_delayed;
            // data_t temp_delayed_cp7 = temp_delayed;

            two_floats partial_in0 = extract_2_0(&temp_delayed);
            two_floats partial_in1 = extract_2_1(&temp_delayed);
            two_floats partial_in2 = extract_2_2(&temp_delayed);
            two_floats partial_in3 = extract_2_3(&temp_delayed);
            two_floats partial_in4 = extract_2_4(&temp_delayed);
            two_floats partial_in5 = extract_2_5(&temp_delayed);
            two_floats partial_in6 = extract_2_6(&temp_delayed);
            two_floats partial_in7 = extract_2_7(&temp_delayed);

            float partial_result0_0 = SUM_2(partial_in0.items_0, partial_in0.items_1);
            float partial_result0_1 = SUM_2(partial_in1.items_0, partial_in1.items_1);
            float partial_result0_2 = SUM_2(partial_in2.items_0, partial_in2.items_1);
            float partial_result0_3 = SUM_2(partial_in3.items_0, partial_in3.items_1);
            float partial_result0_4 = SUM_2(partial_in4.items_0, partial_in4.items_1);
            float partial_result0_5 = SUM_2(partial_in5.items_0, partial_in5.items_1);
            float partial_result0_6 = SUM_2(partial_in6.items_0, partial_in6.items_1);
            float partial_result0_7 = SUM_2(partial_in7.items_0, partial_in7.items_1);

            float partial_result1_0 = SUM_2(partial_result0_0, partial_result0_1);
            float partial_result1_1 = SUM_2(partial_result0_2, partial_result0_3);
            float partial_result1_2 = SUM_2(partial_result0_4, partial_result0_5);
            float partial_result1_3 = SUM_2(partial_result0_6, partial_result0_7);

            float partial_result2_0 = SUM_2(partial_result1_0, partial_result1_1);
            float partial_result2_1 = SUM_2(partial_result1_2, partial_result1_3);

            float result = SUM_2(partial_result2_0, partial_result2_1);

            dest.write(result);
        }
    }
}

void write(hls::stream<float>& src, data_t *dest) {
    for (int r = 0; r < REPEAT_NUM; r++) {
#pragma HLS loop_flatten off
        for (int i = 0; i < DATA_NUM; i++) {
#pragma HLS pipeline II=1
            float temp = src.read();
            float temp_delayed = HLS_REG(HLS_REG(temp));
            data_t result;
            result.items_0 = temp_delayed;
            result.items_1 = temp_delayed;
            result.items_2 = temp_delayed;
            result.items_3 = temp_delayed;
            result.items_4 = temp_delayed;
            result.items_5 = temp_delayed;
            result.items_6 = temp_delayed;
            result.items_7 = temp_delayed;
            result.items_8 = temp_delayed;
            result.items_9 = temp_delayed;
            result.items_10 = temp_delayed;
            result.items_11 = temp_delayed;
            result.items_12 = temp_delayed;
            result.items_13 = temp_delayed;
            result.items_14 = temp_delayed;
            result.items_15 = temp_delayed;
            dest[i] = result;
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

  hls::stream<float> fifo0 ;   
  hls::stream<float> fifo1 ;   
  hls::stream<float> fifo2 ;   
  hls::stream<float> fifo3 ;   
  hls::stream<float> fifo4 ;   
  hls::stream<float> fifo5 ;   
  hls::stream<float> fifo6 ;   
  hls::stream<float> fifo7 ;   
  hls::stream<float> fifo8 ;   
  hls::stream<float> fifo9 ;   
  hls::stream<float> fifo10 ;   
  hls::stream<float> fifo11 ;   
  hls::stream<float> fifo12 ;   
  hls::stream<float> fifo13 ;   
  hls::stream<float> fifo14 ;   
  hls::stream<float> fifo15 ;   
  hls::stream<float> fifo16 ;   
  hls::stream<float> fifo17 ;   
  hls::stream<float> fifo18 ;   
  hls::stream<float> fifo19 ;   
  hls::stream<float> fifo20 ;   
  hls::stream<float> fifo21 ;   
  hls::stream<float> fifo22 ;   
  hls::stream<float> fifo23 ;   
  hls::stream<float> fifo24 ;   
  hls::stream<float> fifo25 ;   
  hls::stream<float> fifo26 ;   
  hls::stream<float> fifo27 ;   
  hls::stream<float> fifo28 ;   
  hls::stream<float> fifo29 ;   

#pragma HLS STREAM variable=fifo0  depth=2 dim=1
#pragma HLS STREAM variable=fifo1  depth=2 dim=1
#pragma HLS STREAM variable=fifo2  depth=2 dim=1
#pragma HLS STREAM variable=fifo3  depth=2 dim=1
#pragma HLS STREAM variable=fifo4  depth=2 dim=1
#pragma HLS STREAM variable=fifo5  depth=2 dim=1
#pragma HLS STREAM variable=fifo6  depth=2 dim=1
#pragma HLS STREAM variable=fifo7  depth=2 dim=1
#pragma HLS STREAM variable=fifo8  depth=2 dim=1
#pragma HLS STREAM variable=fifo9  depth=2 dim=1
#pragma HLS STREAM variable=fifo10  depth=2 dim=1
#pragma HLS STREAM variable=fifo11  depth=2 dim=1
#pragma HLS STREAM variable=fifo12  depth=2 dim=1
#pragma HLS STREAM variable=fifo13  depth=2 dim=1
#pragma HLS STREAM variable=fifo14  depth=2 dim=1
#pragma HLS STREAM variable=fifo15  depth=2 dim=1
#pragma HLS STREAM variable=fifo16  depth=2 dim=1
#pragma HLS STREAM variable=fifo17  depth=2 dim=1
#pragma HLS STREAM variable=fifo18  depth=2 dim=1
#pragma HLS STREAM variable=fifo19  depth=2 dim=1
#pragma HLS STREAM variable=fifo20  depth=2 dim=1
#pragma HLS STREAM variable=fifo21  depth=2 dim=1
#pragma HLS STREAM variable=fifo22  depth=2 dim=1
#pragma HLS STREAM variable=fifo23  depth=2 dim=1
#pragma HLS STREAM variable=fifo24  depth=2 dim=1
#pragma HLS STREAM variable=fifo25  depth=2 dim=1
#pragma HLS STREAM variable=fifo26  depth=2 dim=1
#pragma HLS STREAM variable=fifo27  depth=2 dim=1
#pragma HLS STREAM variable=fifo28  depth=2 dim=1
#pragma HLS STREAM variable=fifo29  depth=2 dim=1
#pragma HLS RESOURCE variable=fifo0 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo1 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo2 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo3 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo4 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo5 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo6 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo7 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo8 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo9 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo10 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo11 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo12 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo13 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo14 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo15 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo16 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo17 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo18 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo19 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo20 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo21 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo22 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo23 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo24 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo25 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo26 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo27 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo28 core=FIFO_SRL
#pragma HLS RESOURCE variable=fifo29 core=FIFO_SRL

  read(in0, fifo0);
  read(in1, fifo1);
  read(in2, fifo2);
  read(in3, fifo3);
  read(in4, fifo4);
  read(in5, fifo5);
  read(in6, fifo6);
  read(in7, fifo7);
  read(in8, fifo8);
  read(in9, fifo9);
  read(in10, fifo10);
  read(in11, fifo11);
  read(in12, fifo12);
  read(in13, fifo13);
  read(in14, fifo14);
  read(in15, fifo15);
  read(in16, fifo16);
  read(in17, fifo17);
  read(in18, fifo18);
  read(in19, fifo19);
  read(in20, fifo20);
  read(in21, fifo21);
  read(in22, fifo22);
  read(in23, fifo23);
  read(in24, fifo24);
  read(in25, fifo25);
  read(in26, fifo26);
  read(in27, fifo27);
  read(in28, fifo28);
  read(in29, fifo29);

  write(fifo0, out0);
  write(fifo1, out1);
  write(fifo2, out2);
  write(fifo3, out3);
  write(fifo4, out4);
  write(fifo5, out5);
  write(fifo6, out6);
  write(fifo7, out7);
  write(fifo8, out8);
  write(fifo9, out9);
  write(fifo10, out10);
  write(fifo11, out11);
  write(fifo12, out12);
  write(fifo13, out13);
  write(fifo14, out14);
  write(fifo15, out15);
  write(fifo16, out16);
  write(fifo17, out17);
  write(fifo18, out18);
  write(fifo19, out19);
  write(fifo20, out20);
  write(fifo21, out21);
  write(fifo22, out22);
  write(fifo23, out23);
  write(fifo24, out24);
  write(fifo25, out25);
  write(fifo26, out26);
  write(fifo27, out27);
  write(fifo28, out28);
  write(fifo29, out29);

}
#ifndef HLS
} // end of extern C
#endif
