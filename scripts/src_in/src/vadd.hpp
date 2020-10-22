#include "constants.hpp"

extern "C" {
    
    // Top-level function
//////////////////////////////   TEMPLATE START  //////////////////////////////
    void vadd(
        const int *table0,
        const int *access_idx, int *out);
//////////////////////////////   TEMPLATE END  //////////////////////////////

    // load
    void load_single_embedding(
        int idx_buffer[BATCH_SIZE], const int* table_DRAM,
        int* embedding_buffer, int data_size);

//////////////////////////////   TEMPLATE START  //////////////////////////////
    void load_embeddings(
        const int* table0,
        const int* access_idx, const int start_idx, 
        int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]
        );
//////////////////////////////   TEMPLATE END  //////////////////////////////

    // compute
    void reduction_add_single(
        int* embedding_buffer, int data_size, int result_buffer[BATCH_SIZE]);

//////////////////////////////   TEMPLATE START  //////////////////////////////
    void reduction_add_all(
        int embedding_buffer0[BATCH_SIZE * DATA_SIZE0], 
        int vout_buffer[BATCH_SIZE]);
//////////////////////////////   TEMPLATE END  //////////////////////////////

    // write output
    void write_results(int vout_buffer[BATCH_SIZE], 
        int* out, int start_idx);
}