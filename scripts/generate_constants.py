# Copy the line for several times, replace the string you asked as other numbers

# python generate_constants.py --file_name "tmp" --input_file_dir "./tmp_in/" --output_file_dir "./tmp_out/" 

import argparse 

import numpy as np

parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='embedding_size_bytes')
parser.add_argument('--input_file_dir', type=str, default='inputs/')
parser.add_argument('--output_file_dir', type=str, default='outputs/') 

FLAGS, unparsed = parser.parse_known_args()

data_sizes = np.load("./data_sizes.npy")
table_sizes = np.load("./table_sizes.npy")

# ORIGINAL
# data_sizes = [4] * 16 + [8] * 28 + [16] * 2 + [32] * 1
# table_sizes = [100] * 4 + [500] * 2 + [1000] * 10 + [3000] * 1 + [10000] * 15 \
#      + [20000] * 1 + [30000] * 1 + [100000] * 10 + [500000] * 1 + [1000000] * 1 + [10000000] * 1

# CARTESIAN (large entries are cut)
# data_sizes = [8] * 18 + [12] * 12+ [16] * 2+ [32] * 1
# table_sizes = [10000] * 33

# CARTESIAN
# Top 28:	33 tables remaining	820.0M params	Memory Access: 0.70	Storage: 3.32
# [[8, 10000], [8, 10000], [8, 10000], [8, 10000], [8, 20000], [8, 30000], [8, 100000], [8, 100000], [8, 100000], [8, 100000], [8, 100000], [8, 100000], [8, 100000], [8, 100000], [8, 100000], [8, 100000], [8, 1000000], [8, 1000000], [16, 500000], [12, 1000000], [12, 1000000], [12, 1000000], [12, 1000000], [16, 1000000], [12, 3000000], [12, 5000000], [12, 5000000], [12, 10000000], [12, 10000000], [12, 10000000], [12, 10000000], [12, 10000000], [32, 10000000]]


assert len(data_sizes) == len(table_sizes)
total_num = len(data_sizes)

if __name__ == "__main__":

    with open (FLAGS.output_file_dir + FLAGS.file_name,'w+') as f:

        out_str = ""
        for i, data_size in enumerate(data_sizes):
            out_str += "#define DATA_SIZE{} {}\n".format(i, data_size)
        
        out_str += "\n"
        for i, table_size in enumerate(table_sizes):
            out_str += "#define TABLE_SIZE{} {}\n".format(i, table_size)

        out_str += "\n"
        out_str += "#define TABLE_NUM {}\n".format(total_num)

        f.write(out_str)
