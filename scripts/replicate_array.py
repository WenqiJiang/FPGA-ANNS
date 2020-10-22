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

# python replicate_array.py --file_name "tmp" --input_file_dir "./tmp_in/" --output_file_dir "./tmp_out/" --replaced_str_array HBM_embedding1 33 --replaced_num_array 1 33 --split_by_empty_line 0 --start_array 0 32 --total_num 32

import argparse 
parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='embedding_size_bytes')
parser.add_argument('--input_file_dir', type=str, default='inputs/')
parser.add_argument('--output_file_dir', type=str, default='outputs/') 
# NOTE! PREFERABLE TO REPLACE 1, SINCE 0 MAY MASS UP WITH LOOP COUNTERS!
parser.add_argument('--replaced_str_array', nargs='+', default="embedding0Ext")
parser.add_argument('--replaced_num_array', nargs='+', default=0)
parser.add_argument('--split_by_empty_line', type=int, default=0)
parser.add_argument('--start_array', nargs='+', default=0)
parser.add_argument('--total_num', type=int, default=32 * 8)

FLAGS, unparsed = parser.parse_known_args()
# print(FLAGS.split_by_empty_line)

if __name__ == "__main__":
    
    input_line = ""
    with open (FLAGS.input_file_dir + FLAGS.file_name,'r') as f:
        input_line = f.read()
    # print(input_line)

    replaced_array = []
    if type(FLAGS.replaced_str_array) == str:
        replaced_array = [(FLAGS.replaced_str_array, FLAGS.replaced_num_array, FLAGS.start_array)]
    else:
        assert len(FLAGS.replaced_num_array) == len(FLAGS.replaced_str_array) and \
            len(FLAGS.replaced_num_array) == len(FLAGS.start_array)
        for i in range(len(FLAGS.replaced_num_array)):
            replaced_array.append((FLAGS.replaced_str_array[i], FLAGS.replaced_num_array[i], int(FLAGS.start_array[i])))
    
    with open (FLAGS.output_file_dir + FLAGS.file_name, 'w+') as f:

        for i in range(FLAGS.total_num):
            out_str = input_line
            for old_str, old_int, start in replaced_array:
                # print(old_str, old_int, start)
                # print(type(out_str), type(str(old_int)), type(str(start + i)))
                new_str = old_str.replace(str(old_int), str(start + i))
                # out_str = out_str.replace(str(old_int), str(start + i))
                out_str = out_str.replace(old_str, new_str)

            if FLAGS.split_by_empty_line:
                out_str = out_str + '\n'

            f.write(out_str)
