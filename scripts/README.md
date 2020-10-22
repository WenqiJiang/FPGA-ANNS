# Commonly Used Script

## replicate_array.py

python replicate_array.py --file_name "tmp" --input_file_dir "./tmp_in/" --output_file_dir "./tmp_out/" --replaced_str_array HBM_embedding1 33 --replaced_num_array 1 33 --split_by_empty_line 0 --start_array 0 32 --total_num 32

# ------ FROM --------
#     for (int i = 0 ; i < TABLE_SIZE_HBM_33 ; i++) {
#         for (int j = 0; j < DATA_SIZE_HBM_33; j++) {
# #ifdef DEBUG
#         HBM_embedding1[i * PADDED_SIZE_HBM_33 + j + ADDR_AXI_HBM_33] = i * TABLE_NUM_HBM + 33;
# #else
#         HBM_embedding1[i * PADDED_SIZE_HBM_33 + j + ADDR_AXI_HBM_33] = rand() % 23;
# #endif
#         }
#     }

# ------ TO -------

#     for (int i = 0 ; i < TABLE_SIZE_HBM_32 ; i++) {
#         for (int j = 0; j < DATA_SIZE_HBM_32; j++) {
# #ifdef DEBUG
#         HBM_embedding0[i * PADDED_SIZE_HBM_32 + j + ADDR_AXI_HBM_32] = i * TABLE_NUM_HBM + 32;
# #else
#         HBM_embedding0[i * PADDED_SIZE_HBM_32 + j + ADDR_AXI_HBM_32] = rand() % 23;
# #endif
#         }
#     }
#     for (int i = 0 ; i < TABLE_SIZE_HBM_33 ; i++) {
#         for (int j = 0; j < DATA_SIZE_HBM_33; j++) {
# #ifdef DEBUG
#         HBM_embedding1[i * PADDED_SIZE_HBM_33 + j + ADDR_AXI_HBM_33] = i * TABLE_NUM_HBM + 33;
# #else
#         HBM_embedding1[i * PADDED_SIZE_HBM_33 + j + ADDR_AXI_HBM_33] = rand() % 23;
# #endif
#         }
#     }
#     for (int i = 0 ; i < TABLE_SIZE_HBM_34 ; i++) {
#         for (int j = 0; j < DATA_SIZE_HBM_34; j++) {
# #ifdef DEBUG
#         HBM_embedding2[i * PADDED_SIZE_HBM_34 + j + ADDR_AXI_HBM_34] = i * TABLE_NUM_HBM + 34;
# #else
#         HBM_embedding2[i * PADDED_SIZE_HBM_34 + j + ADDR_AXI_HBM_34] = rand() % 23;
# #endif
#         }
#     }

## expand_function.py

python expand_function.py --file_name "tmp" --input_file_dir "./tmp_in/" --output_file_dir "./tmp_out/" \
    --replaced_str_array "const ap_int<AXI_DATA_WIDTH> *table0" --replaced_num_array 0 --split_by_empty_line 1 \
    --split_line_every_n 2 --start 0 --total_num 32 --deliminator ","
    
# e.g. CONVERT:
# void load_embeddings(
#         const int* table0,
#         int idx_buffer[BATCH_SIZE], 
#         int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]);

# TO:
#     void load_embeddings(
#         const int* table0, const int* table1, const int* table2,
#         const int* table3, const int* table4, const int* table5,
#         const int* table6, const int* table7, const int* table8,
#         const int* table9, const int* table10, const int* table11,
#         const int* table12, const int* table13, const int* table14,
#         int idx_buffer[BATCH_SIZE], 
#         int embedding_buffer0[BATCH_SIZE * DATA_SIZE0], 
#         int embedding_buffer1[BATCH_SIZE * DATA_SIZE1], 
#         int embedding_buffer2[BATCH_SIZE * DATA_SIZE2], 
#         int embedding_buffer3[BATCH_SIZE * DATA_SIZE3], 
#         int embedding_buffer4[BATCH_SIZE * DATA_SIZE4], 
#         int embedding_buffer5[BATCH_SIZE * DATA_SIZE5], 
#         int embedding_buffer6[BATCH_SIZE * DATA_SIZE6], 
#         int embedding_buffer7[BATCH_SIZE * DATA_SIZE7], 
#         int embedding_buffer8[BATCH_SIZE * DATA_SIZE8], 
#         int embedding_buffer9[BATCH_SIZE * DATA_SIZE9], 
#         int embedding_buffer10[BATCH_SIZE * DATA_SIZE10], 
#         int embedding_buffer11[BATCH_SIZE * DATA_SIZE11], 
#         int embedding_buffer12[BATCH_SIZE * DATA_SIZE12], 
#         int embedding_buffer13[BATCH_SIZE * DATA_SIZE13], 
#         int embedding_buffer14[BATCH_SIZE * DATA_SIZE14]);

