# Generates the constants given AXI WIDTH
# python axi_constants.py --file_name "tmp" --output_file_dir "./tmp_out/" --num_PLRAM 4 

import argparse 

import numpy as np

parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='tmp')
parser.add_argument('--output_file_dir', type=str, default='tmp_out/') 
parser.add_argument('--AXI_WIDTH_DDR', type=int, default=32)
parser.add_argument('--AXI_WIDTH_HBM', type=int, default=32)
parser.add_argument('--AXI_WIDTH_PLRAM', type=int, default=32)
parser.add_argument('--int_size', type=int, default=32)
parser.add_argument('--num_PLRAM', type=int, default=4)
parser.add_argument('--num_DDR', type=int, default=2)
parser.add_argument('--num_HBM', type=int, default=32)

FLAGS, unparsed = parser.parse_known_args()
int_per_PLRAM = int(FLAGS.AXI_WIDTH_PLRAM / FLAGS.int_size)
int_per_DDR = int(FLAGS.AXI_WIDTH_DDR / FLAGS.int_size)
int_per_HBM = int(FLAGS.AXI_WIDTH_HBM / FLAGS.int_size)

########## Cartesian, detached ############
# data_size_table_size_PLRAM = [(8, 10000), (8, 10000), (8, 10000), (8, 10000)]
# data_size_PLRAM = []
# table_size_PLRAM = []
# for ds, ts in data_size_table_size_PLRAM:
#     data_size_PLRAM.append(ds)
#     table_size_PLRAM.append(ts)

# data_size_table_size_HBM = [(8, 10000), (8, 10000), (8, 10000), (8, 10000), (8, 10000), (8, 10000), \
#     (8, 10000), (8, 10000), (8, 20000), (8, 30000), (8, 100000), (8, 100000), \
#     (8, 100000), (8, 100000), (8, 100000), (8, 100000), (8, 100000), (8, 100000), \
#     (8, 100000), (8, 100000), (12, 300000), (8, 500000), (8, 500000), (8, 1000000), \
#     (8, 1000000), (8, 1000000), (8, 1000000), (16, 500000), (12, 1000000), \
#     (12, 1000000), (12, 1000000), (16, 1000000)]

# data_size_HBM = []
# table_size_HBM = []
# for ds, ts in data_size_table_size_HBM:
#     data_size_HBM.append(ds)
#     table_size_HBM.append(ts)

# data_size_DDR = []
# table_size_DDR = []
# data_size_table_size_DDR = [(16, 10000000), (16, 10000000)]
# for ds, ts in data_size_table_size_DDR:
#     data_size_DDR.append(ds)
#     table_size_DDR.append(ts)


########### original ############
# data_size_table_size_PLRAM = [] 
# data_size_PLRAM = []
# table_size_PLRAM = []

# data_size_HBM = [4] * 16 + [8] * 28 + [16] * 1
# table_size_HBM = [100] * 4 + [500] * 2 + [1000] * 10 + [3000] * 1 + [10000] * 15 \
#      + [20000] * 1 + [30000] * 1 + [100000] * 10 + [500000] * 1

# data_size_DDR =  [16] * 1 + [32] * 1
# table_size_DDR = [1000000] * 1 + [10000000] * 1

# 98 original 
# table_size_all = [100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 500, 500, 500, 500, 500, 500, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 1000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 15000, 15000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 100000, 100000, 150000, 150000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 1000000, 1000000, 5000000, 10000000, 100000000]
# data_size_all = [4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 32, 32]

# data_size_PLRAM = data_size_all[0:16]
# table_size_PLRAM = table_size_all[0:16]

# data_size_HBM = data_size_all[16:-4]
# table_size_HBM = table_size_all[16:-4]

# data_size_DDR = data_size_all[-4:]
# table_size_DDR = table_size_all[-4:]

# 98 -> 84
# data_size_PLRAM = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]
# table_size_PLRAM = [5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 15000, 15000]

# data_size_HBM = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16]
# table_size_HBM = [50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 150000, 150000, 250000, 250000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 1000000, 1000000]

# data_size_DDR =  [12, 16, 32, 32]
# table_size_DDR = [5000000, 5000000, 10000000, 100000000]

# 84 padded 876 -> 880
data_size_PLRAM = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]
table_size_PLRAM = [5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 5000, 15000, 15000]

# pad the first element from 8 -> 12
data_size_HBM = [12, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16]
table_size_HBM = [50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 50000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 150000, 150000, 250000, 250000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 500000, 1000000, 1000000]

data_size_DDR =  [12, 16, 32, 32]
table_size_DDR = [5000000, 5000000, 10000000, 100000000]

# original 47 -> 48
# data_size_PLRAM = [4] * 8
# table_size_PLRAM = [100] * 4 + [500] * 2 + [1000] * 2

# data_size_HBM = [4] * 8 + [8] * 28 + [16] * 2
# table_size_HBM = [1000] * 8 + [3000] * 1 + [10000] * 15 \
#      + [20000] * 1 + [30000] * 1 + [100000] * 10 + [500000] * 1 + [1000000] * 1 

# data_size_DDR = [16] * 2
# table_size_DDR = [10000000] * 2

# 47 -> 42 table, algorithm generated
# table_size_PLRAM=[1000, 1000, 1000, 1000, 3000, 10000, 10000, 10000]
# data_size_PLRAM = [4, 4, 4, 4, 8, 8, 8, 8]

# table_size_HBM=[10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 10000, 20000, 30000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 100000, 500000, 500000, 500000, 1000000]
# data_size_HBM = [8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 16, 16]

# table_size_DDR=[10000000, 10000000]
# data_size_DDR = [16, 16]


print("Total vector length: {}".format(np.sum(data_size_PLRAM + data_size_HBM + data_size_DDR)))

if __name__ == "__main__":

    total_num_PLRAM = len(data_size_PLRAM)
    total_num_HBM = len(data_size_HBM)
    total_num_DDR = len(data_size_DDR)

    out_str = ""

    if (total_num_PLRAM + total_num_HBM + total_num_DDR) % int_per_DDR == 0:
        padded_access_idx_size = (total_num_PLRAM + total_num_HBM + total_num_DDR)
        axi_padded_access_idx_size = int(padded_access_idx_size / int_per_DDR)
    else:
        padded_access_idx_size = int(int((total_num_PLRAM + total_num_HBM + total_num_DDR) / int_per_DDR + 1) * int_per_DDR)
        axi_padded_access_idx_size = int(padded_access_idx_size / int_per_DDR)
    out_str += """
#define AXI_WIDTH_PLRAM {}
#define AXI_WIDTH_HBM {}
#define AXI_WIDTH_DDR {}

#define INT_BITS {}
#define INTS_PER_AXI_PLRAM {}
#define INTS_PER_AXI_HBM {}
#define INTS_PER_AXI_DDR {}

#define PLRAM_BANK_NUM {}
#define HBM_BANK_NUM {}
#define DDR_BANK {}

#define TABLE_NUM {}

// #define ACCESS_IDX_SIZE {}
// #define PADDED_ACCESS_IDX_SIZE {}
// #define AXI_PADDED_ACCESS_IDX_SIZE {}
""".format(FLAGS.AXI_WIDTH_PLRAM, FLAGS.AXI_WIDTH_HBM, FLAGS.AXI_WIDTH_DDR, 
    FLAGS.int_size, int(FLAGS.AXI_WIDTH_PLRAM / FLAGS.int_size), 
    int(FLAGS.AXI_WIDTH_HBM / FLAGS.int_size), int(FLAGS.AXI_WIDTH_DDR / FLAGS.int_size),
    FLAGS.num_PLRAM, FLAGS.num_HBM, FLAGS.num_DDR, 
    total_num_PLRAM + total_num_HBM + total_num_DDR, 
    total_num_PLRAM + total_num_HBM + total_num_DDR,
    padded_access_idx_size, axi_padded_access_idx_size)

    out_str += """
#define TABLE_NUM_HBM {}
#define TABLE_NUM_DDR {}
#define TABLE_NUM_PLRAM {}
""".format(len(data_size_HBM), len(data_size_DDR), len(data_size_PLRAM))


####################   HBM   #################### 

    out_str += """
/////////////////////////   HBM   ///////////////////////// 
// alignment of tables to HBM: 
// table 0 ~ {0} -> HBM 0 ~ {0}
// table {1} ~ {2} -> HBM 0 ~ {0}

""".format(FLAGS.num_HBM - 1, FLAGS.num_HBM, FLAGS.num_HBM * 2 - 1)

    max_size_HBM = 0
    padded_size_HBM = []
    for i, ds in enumerate(data_size_HBM):
        out_str += "#define DATA_SIZE_HBM_{} {}\n".format(i, ds)

        if ds % int_per_HBM != 0:
            padded_size = (int(ds / int_per_HBM) + 1) * int_per_HBM
        else:
            padded_size = ds
        padded_size_HBM.append(padded_size)
        out_str += "#define PADDED_SIZE_HBM_{} {}\n".format(i, padded_size)
        out_str += "#define AXI_PADDED_SIZE_HBM_{} {}\n".format(i, int(padded_size / int_per_HBM))

        out_str += "#define TABLE_SIZE_HBM_{} {}\n".format(i, table_size_HBM[i]) 
        if padded_size > max_size_HBM:
            max_size_HBM = padded_size
    out_str += "\n#define BURST_SIZE_HBM {}\n\n".format(max_size_HBM)

    # to prevent out-of-memory error, each table is padded, 
    # table memory size = padded_size * table_size + max_size_HBM
    base_addr_HBM = [0] * FLAGS.num_HBM
    vector_size_HBM = [0] * FLAGS.num_HBM
    if total_num_HBM % FLAGS.num_HBM == 0:
        round_num_HBM = int(total_num_HBM / FLAGS.num_HBM)
    else:
        round_num_HBM = int(total_num_HBM / FLAGS.num_HBM) + 1 
    if total_num_HBM % FLAGS.num_HBM == 0:
        iter = round_num_HBM
    else:
        iter = round_num_HBM - 1
    for i in range(iter):
        for j in range(FLAGS.num_HBM):
            table_id = i * FLAGS.num_HBM + j
            out_str += "#define ADDR_AXI_HBM_{} {}\n".format(
                table_id, base_addr_HBM[j]) 
            base_addr_HBM[j] += \
                (int(padded_size_HBM[table_id]/ int_per_HBM) * table_size_HBM[table_id]) 
            vector_size_HBM[j] += padded_size_HBM[table_id]
    # last round
    for j in range(total_num_HBM % FLAGS.num_HBM):
            table_id = (round_num_HBM - 1) * FLAGS.num_HBM + j
            out_str += "#define ADDR_AXI_HBM_{} {}\n".format(
                table_id, base_addr_HBM[j]) 
            base_addr_HBM[j] += \
                (int(padded_size_HBM[table_id]/ int_per_HBM) * table_size_HBM[table_id])
            vector_size_HBM[j] += padded_size_HBM[table_id]
    # rounds
    out_str += "\n"
    if total_num_HBM % FLAGS.num_HBM == 0:
        for i in range(FLAGS.num_HBM):
            out_str += "#define HBM_BANK{}_ROUND {}\n".format(i, round_num_HBM)
    else:
        for i in range(0, total_num_HBM % FLAGS.num_HBM):
            out_str += "#define HBM_BANK{}_ROUND {}\n".format(i, round_num_HBM)
        for i in range(total_num_HBM % FLAGS.num_HBM, FLAGS.num_HBM):
            out_str += "#define HBM_BANK{}_ROUND {}\n".format(i, round_num_HBM - 1)
    # bank total size
    out_str += "\n"
    for i in range(FLAGS.num_HBM):
        out_str += "#define HBM_BANK{}_SIZE {}\n".format(i, base_addr_HBM[i])
    out_str += "\n"
    for i in range(FLAGS.num_HBM):
        out_str += "#define VECTOR_SIZE_HBM_BANK_{} {}\n".format(i, vector_size_HBM[i])

    start_vec_idx = 0  # HBM0 -> 0, HBM1 -> 8, HBM2 -> 16, ...
    out_str += "\n"
    for i in range(FLAGS.num_HBM):
        out_str += "#define VECTOR_START_IDX_HBM_BANK_{} {}\n".format(i, start_vec_idx)
        start_vec_idx += vector_size_HBM[i] 

####################   DDR   #################### 

    out_str += """
/////////////////////////   DDR   ///////////////////////// 
// alignment of tables to DDR: 
// table 0 ~ {0} -> DDR 0 ~ {0}
// table {1} ~ {2} -> DDR 0 ~ {0}

""".format(FLAGS.num_DDR - 1, FLAGS.num_DDR, FLAGS.num_DDR * 2 - 1)

    max_size_DDR = 0
    padded_size_DDR = []
    for i, ds in enumerate(data_size_DDR):
        out_str += "#define DATA_SIZE_DDR_{} {}\n".format(i, ds)

        if ds % int_per_DDR != 0:
            padded_size = (int(ds / int_per_DDR) + 1) * int_per_DDR
        else:
            padded_size = ds
        padded_size_DDR.append(padded_size)
        out_str += "#define PADDED_SIZE_DDR_{} {}\n".format(i, padded_size)
        out_str += "#define AXI_PADDED_SIZE_DDR_{} {}\n".format(i, int(padded_size / int_per_DDR))

        out_str += "#define TABLE_SIZE_DDR_{} {}\n".format(i, table_size_DDR[i]) 
        if padded_size > max_size_DDR:
            max_size_DDR = padded_size
    out_str += "\n#define BURST_SIZE_DDR {}\n\n".format(max_size_DDR)

    # to prevent out-of-memory error, each table is padded, 
    # table memory size = padded_size * table_size + max_size_DDR
    base_addr_DDR = [0] * FLAGS.num_DDR
    vector_size_DDR = [0] * FLAGS.num_DDR
    if total_num_DDR % FLAGS.num_DDR == 0:
        round_num_DDR = int(total_num_DDR / FLAGS.num_DDR)
    else:
        round_num_DDR = int(total_num_DDR / FLAGS.num_DDR) + 1 
    if total_num_DDR % FLAGS.num_DDR == 0:
        iter = round_num_DDR
    else:
        iter = round_num_DDR - 1
    for i in range(iter):
        for j in range(FLAGS.num_DDR):
            table_id = i * FLAGS.num_DDR + j
            out_str += "#define ADDR_AXI_DDR_{} {}\n".format(
                table_id, base_addr_DDR[j]) 
            base_addr_DDR[j] += \
                (int(padded_size_DDR[table_id]/ int_per_DDR) * table_size_DDR[table_id])
            vector_size_DDR[j] += padded_size_DDR[table_id] 
    # last round
    for j in range(total_num_DDR % FLAGS.num_DDR):
            table_id = (round_num_DDR - 1) * FLAGS.num_DDR + j
            out_str += "#define ADDR_AXI_DDR_{} {}\n".format(
                table_id, base_addr_DDR[j])
            base_addr_DDR[j] += \
                (int(padded_size_DDR[table_id]/ int_per_DDR) * table_size_DDR[table_id])
            vector_size_DDR[j] += padded_size_DDR[table_id] 
    # rounds
    out_str += "\n"
    if total_num_DDR % FLAGS.num_DDR == 0:
        for i in range(FLAGS.num_DDR):
            out_str += "#define DDR_BANK{}_ROUND {}\n".format(i, round_num_DDR)
    else:
        for i in range(0, total_num_DDR % FLAGS.num_DDR):
            out_str += "#define DDR_BANK{}_ROUND {}\n".format(i, round_num_DDR)
        for i in range(total_num_DDR % FLAGS.num_DDR, FLAGS.num_DDR):
            out_str += "#define DDR_BANK{}_ROUND {}\n".format(i, round_num_DDR - 1)
    # bank total size
    out_str += "\n"
    for i in range(FLAGS.num_DDR):
        out_str += "#define DDR_BANK{}_SIZE {}\n".format(i, base_addr_DDR[i])
    out_str += "\n"
    for i in range(FLAGS.num_DDR):
        out_str += "#define VECTOR_SIZE_DDR_BANK_{} {}\n".format(i, vector_size_DDR[i])
    
    out_str += "\n"
    for i in range(FLAGS.num_DDR):
        out_str += "#define VECTOR_START_IDX_DDR_BANK_{} {}\n".format(i, start_vec_idx)
        start_vec_idx += vector_size_DDR[i]  

####################   PLRAM   #################### 

    if len(data_size_PLRAM) > 0:
        out_str += """
/////////////////////////   PLRAM   ///////////////////////// 
// alignment of tables to PLRAM: 
// table 0 ~ {0} -> PLRAM 0 ~ {0}
// table {1} ~ {2} -> PLRAM 0 ~ {0}

""".format(FLAGS.num_PLRAM - 1, FLAGS.num_PLRAM, FLAGS.num_PLRAM * 2 - 1)

        max_size_PLRAM = 0
        padded_size_PLRAM = []
        for i, ds in enumerate(data_size_PLRAM):
            out_str += "#define DATA_SIZE_PLRAM_{} {}\n".format(i, ds)

            if ds % int_per_PLRAM != 0:
                padded_size = (int(ds / int_per_PLRAM) + 1) * int_per_PLRAM
            else:
                padded_size = ds
            padded_size_PLRAM.append(padded_size)
            out_str += "#define PADDED_SIZE_PLRAM_{} {}\n".format(i, padded_size)
            out_str += "#define AXI_PADDED_SIZE_PLRAM_{} {}\n".format(i, int(padded_size / int_per_PLRAM))

            out_str += "#define TABLE_SIZE_PLRAM_{} {}\n".format(i, table_size_PLRAM[i]) 
            if padded_size > max_size_PLRAM:
                max_size_PLRAM = padded_size
        out_str += "\n#define BURST_SIZE_PLRAM {}\n\n".format(max_size_PLRAM)

        # to prevent out-of-memory error, each table is padded, 
        # table memory size = padded_size * table_size + max_size_PLRAM
        base_addr_PLRAM = [0] * FLAGS.num_PLRAM
        vector_size_PLRAM = [0] * FLAGS.num_PLRAM
        if total_num_PLRAM % FLAGS.num_PLRAM == 0:
            round_num_PLRAM = int(total_num_PLRAM / FLAGS.num_PLRAM)
        else:
            round_num_PLRAM = int(total_num_PLRAM / FLAGS.num_PLRAM) + 1 
        if total_num_PLRAM % FLAGS.num_PLRAM == 0:
            iter = round_num_PLRAM
        else:
            iter = round_num_PLRAM - 1
        for i in range(iter):
            for j in range(FLAGS.num_PLRAM):
                table_id = i * FLAGS.num_PLRAM + j
                out_str += "#define ADDR_AXI_PLRAM_{} {}\n".format(
                    table_id, base_addr_PLRAM[j]) 
                base_addr_PLRAM[j] += \
                    (int(padded_size_PLRAM[table_id]/ int_per_PLRAM) * table_size_PLRAM[table_id]) 
                vector_size_PLRAM[j] += padded_size_PLRAM[table_id] 
        # last round
        for j in range(total_num_PLRAM % FLAGS.num_PLRAM):
                table_id = (round_num_PLRAM - 1) * FLAGS.num_PLRAM + j
                out_str += "#define ADDR_AXI_PLRAM_{} {}\n".format(
                    table_id, base_addr_PLRAM[j])
                base_addr_PLRAM[j] += \
                    (int(padded_size_PLRAM[table_id]/ int_per_PLRAM) * table_size_PLRAM[table_id]) 
                vector_size_PLRAM[j] += padded_size_PLRAM[table_id] 
        # rounds
        out_str += "\n"
        if total_num_PLRAM % FLAGS.num_PLRAM == 0:
            for i in range(FLAGS.num_PLRAM):
                out_str += "#define PLRAM_BANK{}_ROUND {}\n".format(i, round_num_PLRAM)
        else:
            for i in range(0, total_num_PLRAM % FLAGS.num_PLRAM):
                out_str += "#define PLRAM_BANK{}_ROUND {}\n".format(i, round_num_PLRAM)
            for i in range(total_num_PLRAM % FLAGS.num_PLRAM, FLAGS.num_PLRAM):
                out_str += "#define PLRAM_BANK{}_ROUND {}\n".format(i, round_num_PLRAM - 1)
        # bank total size
        out_str += "\n"
        for i in range(FLAGS.num_PLRAM):
            out_str += "#define PLRAM_BANK{}_SIZE {}\n".format(i, base_addr_PLRAM[i])
        out_str += "\n"
        for i in range(FLAGS.num_PLRAM):
            out_str += "#define VECTOR_SIZE_PLRAM_BANK_{} {}\n".format(i, vector_size_PLRAM[i])

        out_str += "\n"
        for i in range(FLAGS.num_PLRAM):
            out_str += "#define VECTOR_START_IDX_PLRAM_BANK_{} {}\n".format(i, start_vec_idx)
            start_vec_idx += vector_size_PLRAM[i]  



    # write output
    with open (FLAGS.output_file_dir + FLAGS.file_name,'w+') as f:
        f.write(out_str)