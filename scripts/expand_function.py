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

# python expand_function.py --file_name "tmp" --input_file_dir "./tmp_in/" --output_file_dir "./tmp_out/" \
#     --replaced_str_array "const ap_int<AXI_DATA_WIDTH> *table0" --replaced_num_array 0 --split_by_empty_line 1 \
#     --split_line_every_n 2 --start 0 --total_num 32 --deliminator "," 

import argparse 
parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='cl_mem_ext_ptr_t')
parser.add_argument('--input_file_dir', type=str, default='inputs/')
parser.add_argument('--output_file_dir', type=str, default='outputs/')
# usage: python expand_function.py --replaced_str_array embedding0Ext other_var0 --replaced_num_array 0 0 
parser.add_argument('--replaced_str_array', nargs='+', default="embedding0Ext")
parser.add_argument('--replaced_num_array', nargs='+', default=0)
parser.add_argument('--split_by_empty_line', type=int, default=1)
# need detect indentation
parser.add_argument('--split_line_every_n', type=int, default=4, help="after n variables, split line")
parser.add_argument('--start', type=int, default=0)
parser.add_argument('--total_num', type=int, default=32 * 8)
parser.add_argument('--deliminator', type=str, default=',')

FLAGS, unparsed = parser.parse_known_args()

if __name__ == "__main__":
    # e.g. 
    # replace_str: "const int* table0" replace_int: 0
    # replace_str: "int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]" replace_int: 0
    # Therefore, the input array of tuple should be:
    # [("const int* table0", 0), ("int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]", 0)]

    with open (FLAGS.input_file_dir + FLAGS.file_name,'r') as f:

        input_str = f.read()
        output_str = input_str

        # add indentation is split by empty lines
        indent = 0
        if FLAGS.split_by_empty_line:
            while True:
                if input_str[indent] == ' ':
                    indent += 1
                else:
                    break
        indent += 4 # start from the second line, 4 more spaces

        replaced_array = []
        if type(FLAGS.replaced_str_array) == str:
            replaced_array = [(FLAGS.replaced_str_array, FLAGS.replaced_num_array)]
        else:
            assert len(FLAGS.replaced_num_array) == len(FLAGS.replaced_str_array)
            for i in range(len(FLAGS.replaced_num_array)):
                replaced_array.append((FLAGS.replaced_str_array[i], FLAGS.replaced_num_array[i]))

        for old_str, old_int in replaced_array:
            new_str = ""
            for i in range(FLAGS.total_num):
                if FLAGS.split_by_empty_line and i % FLAGS.split_line_every_n == 0 and i != 0:
                    new_str += '\n'
                    new_str += ' ' * indent

                new_str += old_str.replace(str(old_int), str(FLAGS.start + i))
                if i != FLAGS.total_num - 1:
                    if FLAGS.deliminator == ',':
                        new_str += ', '
                    elif FLAGS.deliminator == '+':
                        new_str += ' + '
                    else:
                        raise("Unknown deliminator")
            output_str = output_str.replace(old_str, new_str)

        with open (FLAGS.output_file_dir + FLAGS.file_name, 'w+') as f:
            f.write(output_str)