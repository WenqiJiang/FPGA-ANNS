#include "vadd.hpp"

extern "C" {
//////////////////////////////   TEMPLATE START  //////////////////////////////
void vadd(  
    const int *table0,
    const int *access_idx,   
    int *out
    )
//////////////////////////////   TEMPLATE END  //////////////////////////////
{
//////////////////////////////   TEMPLATE START  //////////////////////////////
#pragma HLS INTERFACE m_axi port=table0 offset=slave bundle=gmem
//////////////////////////////   TEMPLATE END  //////////////////////////////
#pragma HLS INTERFACE m_axi port=access_idx offset=slave bundle=gmem32
#pragma HLS INTERFACE m_axi port=out offset=slave bundle=gmem33
// control
//////////////////////////////   TEMPLATE START  //////////////////////////////
#pragma HLS INTERFACE s_axilite port=table0  bundle=control
//////////////////////////////   TEMPLATE END  //////////////////////////////
#pragma HLS INTERFACE s_axilite port=access_idx  bundle=control
#pragma HLS INTERFACE s_axilite port=out bundle=control
#pragma HLS INTERFACE s_axilite port=return bundle=control

//////////////////////////////   TEMPLATE START  //////////////////////////////
    int embedding_buffer0[BATCH_SIZE * DATA_SIZE0];
//////////////////////////////   TEMPLATE END  //////////////////////////////
    int vout_buffer[BATCH_SIZE];  // Local Memory to store result

    for (int i = 0; i < BATCH_NUM; i++) {
        // #pragma HLS DATAFLOW

        // load data
//////////////////////////////   TEMPLATE START  //////////////////////////////
        load_embeddings(
            table0, 
            access_idx, i * BATCH_SIZE * TABLE_NUM,
            embedding_buffer0
            );
//////////////////////////////   TEMPLATE END  //////////////////////////////

        // compute
//////////////////////////////   TEMPLATE START  //////////////////////////////
        reduction_add_all(
            embedding_buffer0,
            vout_buffer);
//////////////////////////////   TEMPLATE END  //////////////////////////////

        // write output
        write_results(vout_buffer, out, i * BATCH_SIZE); 
    }
}

void load_single_embedding(
    int idx_buffer[BATCH_SIZE], const int* table_DRAM,
    int* embedding_buffer, int data_size) {
#pragma HLS function_instantiate variable=data_size
#pragma HLS INLINE off

    for (int i = 0; i < BATCH_SIZE;  i++) {
        int BRAM_base_addr = i * data_size;
        int DRAM_base_addr = idx_buffer[i] * data_size;
        for (int j = 0; j < data_size; j++) {
            embedding_buffer[BRAM_base_addr + j] = table_DRAM[DRAM_base_addr + j];
        }
    }
}

//////////////////////////////   TEMPLATE START  //////////////////////////////
void load_embeddings(
    const int* table0, 
    const int* access_idx, const int start_idx, 
    int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]
    ) {
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    int idx_buffer0[BATCH_SIZE];
//////////////////////////////   TEMPLATE END  //////////////////////////////

    int idx_buffer_all[BATCH_SIZE * TABLE_NUM];

    for (int i = 0; i < BATCH_SIZE * TABLE_NUM; i++) {
        idx_buffer_all[i] = access_idx[start_idx + i];
    }

    for (int i = 0; i < BATCH_SIZE; i++) {
//////////////////////////////   TEMPLATE START  //////////////////////////////
        idx_buffer0[i] = idx_buffer_all[i * TABLE_NUM + 0]; 
//////////////////////////////   TEMPLATE END  //////////////////////////////
    }
    
    
//////////////////////////////   TEMPLATE START  //////////////////////////////
    load_single_embedding(idx_buffer0, table0, embedding_buffer0, DATA_SIZE0);
//////////////////////////////   TEMPLATE END  //////////////////////////////
}

void reduction_add_single(
    int* embedding_buffer, int data_size, int result_buffer[BATCH_SIZE])  {
#pragma HLS function_instantiate variable=data_size

    for (int i = 0; i < BATCH_SIZE; i++) {
    // NOTE: UNROLL FACTOR === BATCH_SIZE!
    #pragma HLS UNROLL factor=32 
    
        int result = 0;

        for (int j = 0; j < data_size; j++) {
#pragma HLS resource variable=result core=AddSub_DSP
            result += embedding_buffer[i * data_size + j];
        }

        result_buffer[i] = result;
    }
}

//////////////////////////////   TEMPLATE START  //////////////////////////////
void reduction_add_all(
    int embedding_buffer0[BATCH_SIZE * DATA_SIZE0], 
    int vout_buffer[BATCH_SIZE]) {
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    int result_buffer0[BATCH_SIZE]; 
//////////////////////////////   TEMPLATE END  //////////////////////////////

//////////////////////////////   TEMPLATE START  //////////////////////////////
    reduction_add_single(embedding_buffer0, DATA_SIZE0, result_buffer0);
//////////////////////////////   TEMPLATE END  //////////////////////////////

    for (int i = 0; i < BATCH_SIZE; i++) {
        int result = 0;
#pragma HLS resource variable=result core=AddSub_DSP 
//////////////////////////////   TEMPLATE START  //////////////////////////////
        result += result_buffer0[i];
//////////////////////////////   TEMPLATE END  //////////////////////////////
        vout_buffer[i] = result;
    }
 }

void write_results(
    int vout_buffer[BATCH_SIZE], 
    int* out, int start_idx) {

    write: for (int i = 0 ; i < BATCH_SIZE ; i++){
        out[i + start_idx] = vout_buffer[i];
    }
}

}
