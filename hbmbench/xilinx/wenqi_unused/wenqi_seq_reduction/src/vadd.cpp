
#include <ap_int.h>

struct PQ_codes{
    float items[16];
// #pragma HLS array_partition variable=items complete
    // unsigned char PQ_code_A_0;
    // unsigned char PQ_code_A_1;
    // unsigned char PQ_code_A_2;
    // unsigned char PQ_code_A_3;
    // unsigned char PQ_code_A_4;
    // unsigned char PQ_code_A_5;
    // unsigned char PQ_code_A_6;
    // unsigned char PQ_code_A_7;
    // unsigned char PQ_code_A_8;
    // unsigned char PQ_code_A_9;
    // unsigned char PQ_code_A_10;
    // unsigned char PQ_code_A_11;
    // unsigned char PQ_code_A_12;
    // unsigned char PQ_code_A_13;
    // unsigned char PQ_code_A_14;
    // unsigned char PQ_code_A_15;

    // unsigned char PQ_code_B_0;
    // unsigned char PQ_code_B_1;
    // unsigned char PQ_code_B_2;
    // unsigned char PQ_code_B_3;
    // unsigned char PQ_code_B_4;
    // unsigned char PQ_code_B_5;
    // unsigned char PQ_code_B_6;
    // unsigned char PQ_code_B_7;
    // unsigned char PQ_code_B_8;
    // unsigned char PQ_code_B_9;
    // unsigned char PQ_code_B_10;
    // unsigned char PQ_code_B_11;
    // unsigned char PQ_code_B_12;
    // unsigned char PQ_code_B_13;
    // unsigned char PQ_code_B_14;
    // unsigned char PQ_code_B_15;

    // unsigned char PQ_code_C_0;
    // unsigned char PQ_code_C_1;
    // unsigned char PQ_code_C_2;
    // unsigned char PQ_code_C_3;
    // unsigned char PQ_code_C_4;
    // unsigned char PQ_code_C_5;
    // unsigned char PQ_code_C_6;
    // unsigned char PQ_code_C_7;
    // unsigned char PQ_code_C_8;
    // unsigned char PQ_code_C_9;
    // unsigned char PQ_code_C_10;
    // unsigned char PQ_code_C_11;
    // unsigned char PQ_code_C_12;
    // unsigned char PQ_code_C_13;
    // unsigned char PQ_code_C_14;
    // unsigned char PQ_code_C_15;

    // unsigned char PQ_code_D_0;
    // unsigned char PQ_code_D_1;
    // unsigned char PQ_code_D_2;
    // unsigned char PQ_code_D_3;
    // unsigned char PQ_code_D_4;
    // unsigned char PQ_code_D_5;
    // unsigned char PQ_code_D_6;
    // unsigned char PQ_code_D_7;
    // unsigned char PQ_code_D_8;
    // unsigned char PQ_code_D_9;
    // unsigned char PQ_code_D_10;
    // unsigned char PQ_code_D_11;
    // unsigned char PQ_code_D_12;
    // unsigned char PQ_code_D_13;
    // unsigned char PQ_code_D_14;
    // unsigned char PQ_code_D_15;
};

// using data_t = ap_uint<512>;
typedef PQ_codes data_t;

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


void read(bool enable, const data_t *src, hls::stream<float>& dest, int repeat_num, int data_num) {
	if (enable) {
		for (int r = 0; r < repeat_num; r++) {
#pragma HLS loop_flatten off
			for (int i = 0; i < data_num; i++) {
#pragma HLS pipeline II=1
				data_t temp = src[i];
				data_t temp_delayed = HLS_REG(HLS_REG(temp));
                float result = 
                    temp_delayed.items[0] + temp_delayed.items[1] + temp_delayed.items[2] +  
                    temp_delayed.items[3] + temp_delayed.items[4] + temp_delayed.items[5] +  
                    temp_delayed.items[6] + temp_delayed.items[7] + temp_delayed.items[8] +  
                    temp_delayed.items[9] + temp_delayed.items[10] + temp_delayed.items[11] +  
                    temp_delayed.items[12] + temp_delayed.items[13] + temp_delayed.items[14] +  
                    temp_delayed.items[15];  
				dest.write(result);
			}
		}
	}
	else{
		for (int r = 0; r < repeat_num; r++) {
#pragma HLS loop_flatten off
			for (int i = 0; i < data_num; i++) {
#pragma HLS pipeline II=1
				dest.write((float)i);
			}			
		}
	}
}

void write(bool enable, hls::stream<float>& src, data_t *dest, int repeat_num, int data_num) {
	if (enable) {
		for (int r = 0; r < repeat_num; r++) {
#pragma HLS loop_flatten off
			for (int i = 0; i < data_num; i++) {
#pragma HLS pipeline II=1
				float temp = src.read();
				float temp_delayed = HLS_REG(HLS_REG(temp));
                data_t result;
                for (int n = 0; n < 16; n++) {
                #pragma HLS unroll
                    result.items[n] = temp_delayed;
                }
				dest[i] = result;
			}
		}
	}
	else{
		float dummy;
		for (int r = 0; r < repeat_num; r++) {
#pragma HLS loop_flatten off
			for (int i = 0; i < data_num; i++) {
#pragma HLS pipeline II=1
				float temp = src.read();
				dummy = HLS_REG(HLS_REG(temp));
			}
		}
		if( dummy == 0 ){ //never happens
            data_t dummy_result;
            for (int n = 0; n < 16; n++) {
            #pragma HLS unroll
                dummy_result.items[n] = 0;
            }
			dest[0] = dummy_result;
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
  data_t *out29, // Write-Only Vector
  int repeat_num,
  int data_num, //bytes
  bool run_write,
  bool run_read
) {
// Here Vitis kernel contains one s_axilite interface which will be used by host application to configure the kernel.
// Here bundle control is defined which is s_axilite interface and associated with all the arguments (in1, in2, out_r and data_num),
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

#pragma HLS INTERFACE s_axilite port = repeat_num bundle = control
#pragma HLS INTERFACE s_axilite port = data_num bundle = control
#pragma HLS INTERFACE s_axilite port = run_write bundle = control
#pragma HLS INTERFACE s_axilite port = run_read bundle = control
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

  read(run_read, in0, fifo0, repeat_num, data_num);
  read(run_read, in1, fifo1, repeat_num, data_num);
  read(run_read, in2, fifo2, repeat_num, data_num);
  read(run_read, in3, fifo3, repeat_num, data_num);
  read(run_read, in4, fifo4, repeat_num, data_num);
  read(run_read, in5, fifo5, repeat_num, data_num);
  read(run_read, in6, fifo6, repeat_num, data_num);
  read(run_read, in7, fifo7, repeat_num, data_num);
  read(run_read, in8, fifo8, repeat_num, data_num);
  read(run_read, in9, fifo9, repeat_num, data_num);
  read(run_read, in10, fifo10, repeat_num, data_num);
  read(run_read, in11, fifo11, repeat_num, data_num);
  read(run_read, in12, fifo12, repeat_num, data_num);
  read(run_read, in13, fifo13, repeat_num, data_num);
  read(run_read, in14, fifo14, repeat_num, data_num);
  read(run_read, in15, fifo15, repeat_num, data_num);
  read(run_read, in16, fifo16, repeat_num, data_num);
  read(run_read, in17, fifo17, repeat_num, data_num);
  read(run_read, in18, fifo18, repeat_num, data_num);
  read(run_read, in19, fifo19, repeat_num, data_num);
  read(run_read, in20, fifo20, repeat_num, data_num);
  read(run_read, in21, fifo21, repeat_num, data_num);
  read(run_read, in22, fifo22, repeat_num, data_num);
  read(run_read, in23, fifo23, repeat_num, data_num);
  read(run_read, in24, fifo24, repeat_num, data_num);
  read(run_read, in25, fifo25, repeat_num, data_num);
  read(run_read, in26, fifo26, repeat_num, data_num);
  read(run_read, in27, fifo27, repeat_num, data_num);
  read(run_read, in28, fifo28, repeat_num, data_num);
  read(run_read, in29, fifo29, repeat_num, data_num);

  write(run_write, fifo0, out0, repeat_num, data_num);
  write(run_write, fifo1, out1, repeat_num, data_num);
  write(run_write, fifo2, out2, repeat_num, data_num);
  write(run_write, fifo3, out3, repeat_num, data_num);
  write(run_write, fifo4, out4, repeat_num, data_num);
  write(run_write, fifo5, out5, repeat_num, data_num);
  write(run_write, fifo6, out6, repeat_num, data_num);
  write(run_write, fifo7, out7, repeat_num, data_num);
  write(run_write, fifo8, out8, repeat_num, data_num);
  write(run_write, fifo9, out9, repeat_num, data_num);
  write(run_write, fifo10, out10, repeat_num, data_num);
  write(run_write, fifo11, out11, repeat_num, data_num);
  write(run_write, fifo12, out12, repeat_num, data_num);
  write(run_write, fifo13, out13, repeat_num, data_num);
  write(run_write, fifo14, out14, repeat_num, data_num);
  write(run_write, fifo15, out15, repeat_num, data_num);
  write(run_write, fifo16, out16, repeat_num, data_num);
  write(run_write, fifo17, out17, repeat_num, data_num);
  write(run_write, fifo18, out18, repeat_num, data_num);
  write(run_write, fifo19, out19, repeat_num, data_num);
  write(run_write, fifo20, out20, repeat_num, data_num);
  write(run_write, fifo21, out21, repeat_num, data_num);
  write(run_write, fifo22, out22, repeat_num, data_num);
  write(run_write, fifo23, out23, repeat_num, data_num);
  write(run_write, fifo24, out24, repeat_num, data_num);
  write(run_write, fifo25, out25, repeat_num, data_num);
  write(run_write, fifo26, out26, repeat_num, data_num);
  write(run_write, fifo27, out27, repeat_num, data_num);
  write(run_write, fifo28, out28, repeat_num, data_num);
  write(run_write, fifo29, out29, repeat_num, data_num);

}
#ifndef HLS
} // end of extern C
#endif
