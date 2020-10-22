# Generates HBM, DDR, PLRAM size 
# python cartesian.py --file_name "tmp" --output_file_dir "./tmp_out/" --num_PLRAM 4

import argparse 

import numpy as np

parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='tmp')
parser.add_argument('--output_file_dir', type=str, default='tmp_out/') 
parser.add_argument('--num_PLRAM', type=int, default=4)
parser.add_argument('--PLRAM_size', type=int, default=512 * 1024)
parser.add_argument('--HBM_size', type=int, default=256 * 1024 * 1024)
parser.add_argument('--num_DDR', type=int, default=2)
parser.add_argument('--num_HBM', type=int, default=32)
parser.add_argument('--int_size', type=int, default=4)

FLAGS, unparsed = parser.parse_known_args()

# data_size_table_size = [(4, 1000)] * 5 + [(8, 3000)] * 1 

# detach the large 1024-bit into 2
data_sizes = [4] * 16 + [8] * 28 + [16] * 2 + [16] * 2
table_sizes = [100] * 4 + [500] * 2 + [1000] * 10 + [3000] * 1 + [10000] * 15 \
     + [20000] * 1 + [30000] * 1 + [100000] * 10 + [500000] * 1 + [1000000] * 1 + [10000000] * 2

# data_sizes = [4] * 16 + [8] * 28 + [16] * 2 + [32] * 1 
# table_sizes = [100] * 4 + [500] * 2 + [1000] * 10 + [3000] * 1 + [10000] * 15 \
#      + [20000] * 1 + [30000] * 1 + [100000] * 10 + [500000] * 1 + [1000000] * 1 + [10000000] * 1
# pad another table in DRAM
# data_sizes.append(8)
# table_sizes.append(1000)
# for ds, ts in data_size_table_size_:
#     data_size_.append(ds)
#     table_size_.append(ts)
assert len(data_sizes) == len(table_sizes)
total_num = len(data_sizes)

data_size_table_size = []
for i in range(len(data_sizes)):
    data_size_table_size.append((data_sizes[i], table_sizes[i]))

# data_size_table_size.sort(key=lambda (a,b):a*b, reverse=False)

# find the largest stuff that can fit in PLRAM
last_plram_idx = 0
for i in range(total_num- 1):
    if data_sizes[i] * table_sizes[i] * FLAGS.int_size < FLAGS.PLRAM_size and \
        data_sizes[i + 1] * table_sizes[i + 1] * FLAGS.int_size >= FLAGS.PLRAM_size:
        last_plram_idx = i
        break
print(last_plram_idx)

plram_data_size_table_size = data_size_table_size[i + 1 - FLAGS.num_PLRAM :i + 1]
rest_data_size_table_size = data_size_table_size[0: i + 1 - FLAGS.num_PLRAM] + data_size_table_size[i + 1: ]
# how many groups of cartesian product
cartesian_num = total_num - FLAGS.num_PLRAM - FLAGS.num_DDR - FLAGS.num_HBM
cartesian_set_pre = rest_data_size_table_size[: 2 * cartesian_num]
no_cartesian_data_size_table_size = rest_data_size_table_size[2 * cartesian_num:]

cartesian_set_post = []
for i in range(cartesian_num):
    cartesian_set_post.append((
        cartesian_set_pre[i][0] + cartesian_set_pre[2 * cartesian_num - 1 - i][0],
        cartesian_set_pre[i][1] * cartesian_set_pre[2 * cartesian_num - 1 - i][1]))

set_plram = plram_data_size_table_size

rest = cartesian_set_post + no_cartesian_data_size_table_size
rest.sort(key=(lambda x : x[0] * x[1]), reverse=False)
set_hbm = rest[:-2]
set_ddr = rest[-2:]
# set_hbm = cartesian_set_post + no_cartesian_data_size_table_size[:-2] 
# set_ddr = no_cartesian_data_size_table_size[-2:]


print("PLRAM:{} \nHBM: {}\nDDR: {}".format(set_plram, set_hbm, set_ddr))


for ds, ts in set_hbm:
    print("{}\t{}\t{}".format(ds, ts, ds * ts * FLAGS.int_size / (1024 ** 2)))
    assert ds * ts * FLAGS.int_size <= FLAGS.HBM_size, (ds, ts)


origin_size =np.sum([d*t for d, t in data_size_table_size]) * FLAGS.int_size
total_size = (np.sum([d*t for d, t in set_plram]) + \
    np.sum([d*t for d, t in set_hbm]) + \
    np.sum([d*t for d, t in set_ddr])) * FLAGS.int_size
print("origin_size: {}\nnow: {}".format(origin_size, total_size))
print("origin_size: {}\nnow: {}".format(origin_size / (1024**3), total_size / (1024**3)))
print("ratio: {}".format(total_size / origin_size))
