import argparse 

import numpy as np

parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='tmp')
parser.add_argument('--output_file_dir', type=str, default='tmp_out/') 
parser.add_argument('--PE_NUM', type=int, default=128) 
parser.add_argument('--D_TYPE', type=str, default="short") 
parser.add_argument('--W_TYPE', type=int, default=8, help="how many ints per FLAGS.W_TYPE")

FLAGS, unparsed = parser.parse_known_args()

if __name__ == "__main__":

    out_str = ""
    if FLAGS.W_TYPE == 2 and FLAGS.D_TYPE == "int":
        for i in range(int(FLAGS.PE_NUM / FLAGS.W_TYPE)):
            out_str += \
"""
        reg{0}.range(31, 0) = s_result_PE{1}.read() + 1;
        reg{0}.range(63, 32) = s_result_PE{2}.read() + 1;
        s_result_all.write(reg{0});
""".format(i, i * FLAGS.W_TYPE, i * FLAGS.W_TYPE + 1)
    elif FLAGS.W_TYPE == 4 and FLAGS.D_TYPE == "int":
        for i in range(int(FLAGS.PE_NUM / FLAGS.W_TYPE)):
            out_str += \
"""
        reg{0}.range(31, 0) = s_result_PE{1}.read() + 1;
        reg{0}.range(63, 32) = s_result_PE{2}.read() + 1;
        reg{0}.range(95, 64) = s_result_PE{3}.read() + 1;
        reg{0}.range(127, 96) = s_result_PE{4}.read() + 1;
        s_result_all.write(reg{0});
""".format(i, i * FLAGS.W_TYPE, i * FLAGS.W_TYPE + 1, i * FLAGS.W_TYPE + 2, i * FLAGS.W_TYPE + 3)
    elif FLAGS.W_TYPE == 8 and FLAGS.D_TYPE == "short":
        for i in range(int(FLAGS.PE_NUM / FLAGS.W_TYPE)):
            out_str += \
"""
        reg{0}.range(15, 0) = s_result_PE{1}.read() + 1;
        reg{0}.range(31, 16) = s_result_PE{2}.read() + 1;
        reg{0}.range(47, 32) = s_result_PE{3}.read() + 1;
        reg{0}.range(63, 48) = s_result_PE{4}.read() + 1;
        reg{0}.range(79, 64) = s_result_PE{5}.read() + 1;
        reg{0}.range(95, 80) = s_result_PE{6}.read() + 1;
        reg{0}.range(111, 96) = s_result_PE{7}.read() + 1;
        reg{0}.range(127, 112) = s_result_PE{8}.read() + 1;
        s_result_all.write(reg{0});
""".format(i, i * FLAGS.W_TYPE, i * FLAGS.W_TYPE + 1, i * FLAGS.W_TYPE + 2, i * FLAGS.W_TYPE + 3, \
    i * FLAGS.W_TYPE + 4, i * FLAGS.W_TYPE + 5, i * FLAGS.W_TYPE + 6, i * FLAGS.W_TYPE + 7)

    # write output
    with open (FLAGS.output_file_dir + FLAGS.file_name,'w+') as f:
        f.write(out_str)