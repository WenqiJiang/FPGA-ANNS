#include <stdio.h>

#include "constants.hpp"
#include "types.hpp"

extern "C" {
void vadd(  
    const float* HBM_in0, 
    const float* HBM_in1, 
    const float* HBM_in2, 
    const float* HBM_in3, 
    const float* HBM_in4, 
    const float* HBM_in5, 
    const float* HBM_in6, 
    const float* HBM_in7, 
    const float* HBM_in8, 
    const float* HBM_in9, 
    // const float* HBM_in10, 
    // const float* HBM_in11, 
    // const float* HBM_in12, 
    // const float* HBM_in13, 
    // const float* HBM_in14, 
    // const float* HBM_in15, 
    // const float* HBM_in16, 
    // const float* HBM_in17, 
    // const float* HBM_in18, 
    // const float* HBM_in19, 
    // const float* HBM_in20, 
    // HBM21: assigned for HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid
    const float* HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid, 
    // HBM22: query vectors
    float* HBM_query_vectors,
    // HBM23: center vector table (Vector_quantizer)
    float* HBM_vector_quantizer,
    // HBM24: PQ quantizer
    float* HBM_product_quantizer,
    // HBM25: OPQ Matrix
    float* HBM_OPQ_matrix,
    // HBM26: output (vector_ID, distance)
    float* HBM_out
    // const float* HBM_in22, const float* HBM_in23, 
    // const float* HBM_in24, const float* HBM_in25, 
    // const float* HBM_in26, const float* HBM_in27, 
    // const float* HBM_in28, const float* HBM_in29, 
    // const float* HBM_in30, const float* HBM_in31, 
    // const float* table_DDR0, const float* table_DDR1, 
    )
{
#pragma HLS INTERFACE m_axi port=HBM_in0  offset=slave bundle=gmem0
#pragma HLS INTERFACE m_axi port=HBM_in1  offset=slave bundle=gmem1
#pragma HLS INTERFACE m_axi port=HBM_in2  offset=slave bundle=gmem2
#pragma HLS INTERFACE m_axi port=HBM_in3  offset=slave bundle=gmem3
#pragma HLS INTERFACE m_axi port=HBM_in4  offset=slave bundle=gmem4
#pragma HLS INTERFACE m_axi port=HBM_in5  offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=HBM_in6  offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=HBM_in7  offset=slave bundle=gmem7
#pragma HLS INTERFACE m_axi port=HBM_in8  offset=slave bundle=gmem8
#pragma HLS INTERFACE m_axi port=HBM_in9  offset=slave bundle=gmem9
// #pragma HLS INTERFACE m_axi port=HBM_in10  offset=slave bundle=gmem10
// #pragma HLS INTERFACE m_axi port=HBM_in11  offset=slave bundle=gmem11
// #pragma HLS INTERFACE m_axi port=HBM_in12  offset=slave bundle=gmem12
// #pragma HLS INTERFACE m_axi port=HBM_in13  offset=slave bundle=gmem13
// #pragma HLS INTERFACE m_axi port=HBM_in14  offset=slave bundle=gmem14
// #pragma HLS INTERFACE m_axi port=HBM_in15  offset=slave bundle=gmem15
// #pragma HLS INTERFACE m_axi port=HBM_in16  offset=slave bundle=gmem16
// #pragma HLS INTERFACE m_axi port=HBM_in17  offset=slave bundle=gmem17
// #pragma HLS INTERFACE m_axi port=HBM_in18  offset=slave bundle=gmem18
// #pragma HLS INTERFACE m_axi port=HBM_in19  offset=slave bundle=gmem19
// #pragma HLS INTERFACE m_axi port=HBM_in20  offset=slave bundle=gmem20
#pragma HLS INTERFACE m_axi port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  offset=slave bundle=gmem21
#pragma HLS INTERFACE m_axi port=HBM_query_vectors  offset=slave bundle=gmem22
#pragma HLS INTERFACE m_axi port=HBM_vector_quantizer  offset=slave bundle=gmem23
#pragma HLS INTERFACE m_axi port=HBM_product_quantizer  offset=slave bundle=gmem24
#pragma HLS INTERFACE m_axi port=HBM_OPQ_matrix  offset=slave bundle=gmem25
// #pragma HLS INTERFACE m_axi port=HBM_in26  offset=slave bundle=gmem26
// #pragma HLS INTERFACE m_axi port=HBM_in27  offset=slave bundle=gmem27
// #pragma HLS INTERFACE m_axi port=HBM_in28  offset=slave bundle=gmem28
// #pragma HLS INTERFACE m_axi port=HBM_in29  offset=slave bundle=gmem29
// #pragma HLS INTERFACE m_axi port=HBM_in30  offset=slave bundle=gmem30
// #pragma HLS INTERFACE m_axi port=HBM_in31  offset=slave bundle=gmem31

// #pragma HLS INTERFACE m_axi port=table_DDR0  offset=slave bundle=gmem32
// #pragma HLS INTERFACE m_axi port=table_DDR1  offset=slave bundle=gmem33

// PLRAM
#pragma HLS INTERFACE m_axi port=HBM_out offset=slave bundle=gmem34

#pragma HLS INTERFACE s_axilite port=HBM_in0  
#pragma HLS INTERFACE s_axilite port=HBM_in1  
#pragma HLS INTERFACE s_axilite port=HBM_in2  
#pragma HLS INTERFACE s_axilite port=HBM_in3  
#pragma HLS INTERFACE s_axilite port=HBM_in4  
#pragma HLS INTERFACE s_axilite port=HBM_in5  
#pragma HLS INTERFACE s_axilite port=HBM_in6  
#pragma HLS INTERFACE s_axilite port=HBM_in7  
#pragma HLS INTERFACE s_axilite port=HBM_in8  
// #pragma HLS INTERFACE s_axilite port=HBM_in9  
// #pragma HLS INTERFACE s_axilite port=HBM_in10  
// #pragma HLS INTERFACE s_axilite port=HBM_in11  
// #pragma HLS INTERFACE s_axilite port=HBM_in12  
// #pragma HLS INTERFACE s_axilite port=HBM_in13  
// #pragma HLS INTERFACE s_axilite port=HBM_in14  
// #pragma HLS INTERFACE s_axilite port=HBM_in15  
// #pragma HLS INTERFACE s_axilite port=HBM_in16  
// #pragma HLS INTERFACE s_axilite port=HBM_in17  
// #pragma HLS INTERFACE s_axilite port=HBM_in18  
// #pragma HLS INTERFACE s_axilite port=HBM_in19  
// #pragma HLS INTERFACE s_axilite port=HBM_in20  
#pragma HLS INTERFACE s_axilite port=HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid  
#pragma HLS INTERFACE s_axilite port=HBM_query_vectors  
#pragma HLS INTERFACE s_axilite port=HBM_vector_quantizer  
#pragma HLS INTERFACE s_axilite port=HBM_product_quantizer  
#pragma HLS INTERFACE s_axilite port=HBM_OPQ_matrix  
// #pragma HLS INTERFACE s_axilite port=HBM_in26  
// #pragma HLS INTERFACE s_axilite port=HBM_in27  
// #pragma HLS INTERFACE s_axilite port=HBM_in28  
// #pragma HLS INTERFACE s_axilite port=HBM_in29  
// #pragma HLS INTERFACE s_axilite port=HBM_in30  
// #pragma HLS INTERFACE s_axilite port=HBM_in31  

// #pragma HLS INTERFACE s_axilite port=table_DDR0  
// #pragma HLS INTERFACE s_axilite port=table_DDR1  

#pragma HLS INTERFACE s_axilite port=HBM_out 

#pragma HLS INTERFACE s_axilite port=return 
    
	float result = HBM_in0[0] + HBM_in1[0] + HBM_in2[0] + HBM_in3[0] + HBM_in4[0]
		+ HBM_in5[0] + HBM_in6[0] + HBM_in7[0] + HBM_in8[0] + HBM_in9[0];
	result += HBM_info_start_addr_and_scanned_entries_every_cell_and_last_element_valid[0];
	result +=  HBM_query_vectors[0] +  HBM_product_quantizer[0] +  HBM_OPQ_matrix[0];

	HBM_out[0] =  result;
}
}