# This script generate template replcaement according to the extracted template segments
# the segments are highlighted by keywords:
# //////////////////////////////   TEMPLATE START  ////////////////////////////// 
# //////////////////////////////   TEMPLATE END  //////////////////////////////  
# process of codegen:
# 1. extract all templates segments
# 2. generate alternative code according to the segments -> this script
# 3. replace the src file by the alternative segments

import os

import numpy as np

total_table_num = 128
num_on_PLRAM = 6
num_on_HBM = 114
num_on_DRAM = 8 

assert num_on_DRAM + num_on_HBM + num_on_PLRAM == total_table_num 

data_sizes = [4] * 32 + [8] * 32 + [16] * 32 + [32] * 32
data_sizes = np.array(data_sizes, dtype=int)
table_sizes = [100] * 6 + [1000] * 26 + [10000] * 32 + [100000] * 64
table_sizes = np.array(table_sizes, dtype=int)

assert data_sizes.shape[0] == total_table_num
assert table_sizes.shape[0] == total_table_num

np.save("./data_sizes", data_sizes)
np.save("./table_sizes", table_sizes)


if __name__ == "__main__":
    
    count = 0
    ################### constants.hpp #################### 

    cmd = 'python generate_constants.py --file_name "constants.hpp_0" ' + \
        '--input_file_dir "./old_template_segments/" --output_file_dir "./new_template_segments/" '
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    ################### design.cfg ###################

    cmd = 'python generate_connectivity.py --file_name "design.cfg_0" ' + \
        '--input_file_dir "./old_template_segments/" --output_file_dir "./new_template_segments/" ' + \
        '--replaced_num 0 --total_num {} --in_plram {} --in_hbm {}'.format(total_table_num, num_on_PLRAM, num_on_HBM)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    ################### host.cpp ###################
    # replicate
    cmd = 'python replicate_str.py --file_name "host.cpp_0" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num
        )
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "host.cpp_1" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num
        )
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "host.cpp_2" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 1 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "host.cpp_3" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 1 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "host.cpp_6" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "host.cpp_7" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "host.cpp_8" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 15 --split_by_empty_line 0 --start {} --total_num 1'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "host.cpp_9" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 16 --split_by_empty_line 0 --start {} --total_num 1'.format(
            total_table_num + 1)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    # expand
    cmd = 'python expand_function.py --file_name "host.cpp_4" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "embedding0Ext" ' + \
        '--replaced_num_array 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 4 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python expand_function.py --file_name "host.cpp_10" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "buffer_embedding1" ' + \
        '--replaced_num_array 1 --split_by_empty_line 1 ' + \
        '--split_line_every_n 4 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1
    # bank

    cmd = 'python bank.py --file_name "host.cpp_5" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 1 --split_by_empty_line 0 ' + \
        '--total_num {} --in_plram={} --in_hbm={} --option=host'.format(
            total_table_num, num_on_PLRAM, num_on_HBM)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    ################### vadd.cpp ###################
    # replicate

    cmd = 'python replicate_str.py --file_name "vadd.cpp_2" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "vadd.cpp_3" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "vadd.cpp_7" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "vadd.cpp_8" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "vadd.cpp_9" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "vadd.cpp_11" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "vadd.cpp_12" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python replicate_str.py --file_name "vadd.cpp_13" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 --start 0 --total_num {}'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    # expand
    cmd = 'python expand_function.py --file_name "vadd.cpp_0" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "const int *table0" ' + \
        '--replaced_num_array 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 3 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python expand_function.py --file_name "vadd.cpp_4" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "table0" "embedding_buffer0" ' + \
        '--replaced_num_array 0 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 4 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python expand_function.py --file_name "vadd.cpp_5" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "embedding_buffer0" ' + \
        '--replaced_num_array 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 4 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python expand_function.py --file_name "vadd.cpp_6" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "const int* table0" "int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]" ' + \
        '--replaced_num_array 0 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 4 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python expand_function.py --file_name "vadd.cpp_10" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]" ' + \
        '--replaced_num_array 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 4 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    # bank 
    cmd = 'python bank.py --file_name "vadd.cpp_1" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_num 0 --split_by_empty_line 0 ' + \
        '--total_num {} --in_plram={} --in_hbm={} --option=axi'.format(
            total_table_num, num_on_PLRAM, num_on_HBM)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    ################### vadd.hpp ###################
    # expand
    cmd = 'python expand_function.py --file_name "vadd.hpp_0" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "const int *table0" ' + \
        '--replaced_num_array 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 3 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python expand_function.py --file_name "vadd.hpp_1" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "const int* table0" "int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]" ' + \
        '--replaced_num_array 0 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 4 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1

    cmd = 'python expand_function.py --file_name "vadd.hpp_2" --input_file_dir "./old_template_segments/" ' + \
        '--output_file_dir "./new_template_segments/" --replaced_str_array "int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]" ' + \
        '--replaced_num_array 0 --split_by_empty_line 1 ' + \
        '--split_line_every_n 4 --start 0 --total_num {} --deliminator ","'.format(
            total_table_num)
    os.system(cmd)
    print("{}: {}".format(count, cmd[:90]))
    count += 1