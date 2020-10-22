import argparse 

import numpy as np

parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='tmp')
parser.add_argument('--output_file_dir', type=str, default='tmp_out/') 
parser.add_argument('--PE_NUM', type=int, default=128) 
parser.add_argument('--ROW_PER_PE', type=int, default=4) 
parser.add_argument('--D_TYPE', type=str, default="short") 
parser.add_argument('--W_TYPE', type=int, default=4, help="how many ints per FLAGS.W_TYPE")

FLAGS, unparsed = parser.parse_known_args()

if __name__ == "__main__":

    out_str = ""

    if FLAGS.W_TYPE == 4 and FLAGS.D_TYPE == "int" and FLAGS.ROW_PER_PE == 8:
        for i in range(int(FLAGS.PE_NUM)):
            out_str += \
"""
        reg{1}.range(31, 0) = s_result_PE{0}.read() + 1;
        reg{1}.range(63, 32) = s_result_PE{0}.read() + 1;
        reg{1}.range(95, 64) = s_result_PE{0}.read() + 1;
        reg{1}.range(127, 96) = s_result_PE{0}.read() + 1;

        reg{2}.range(31, 0) = s_result_PE{0}.read() + 1;
        reg{2}.range(63, 32) = s_result_PE{0}.read() + 1;
        reg{2}.range(95, 64) = s_result_PE{0}.read() + 1;
        reg{2}.range(127, 96) = s_result_PE{0}.read() + 1;

        s_result_all.write(reg{1});
        s_result_all.write(reg{2});
""".format(i, 2 * i, 2 * i + 1)
    elif FLAGS.W_TYPE == 4 and FLAGS.D_TYPE == "int" and FLAGS.ROW_PER_PE == 4:
        for i in range(int(FLAGS.PE_NUM)):
            out_str += \
"""
        reg{1}.range(31, 0) = s_result_PE{0}.read() + 1;
        reg{1}.range(63, 32) = s_result_PE{0}.read() + 1;
        reg{1}.range(95, 64) = s_result_PE{0}.read() + 1;
        reg{1}.range(127, 96) = s_result_PE{0}.read() + 1;

        s_result_all.write(reg{1});
""".format(i, i)
    elif FLAGS.W_TYPE == 8 and FLAGS.D_TYPE == "short" and FLAGS.ROW_PER_PE == 8:
        for i in range(int(FLAGS.PE_NUM)):
            out_str += \
"""
        reg{0}.range(15, 0) = s_result_PE{0}.read() + 1;
        reg{0}.range(31, 16) = s_result_PE{0}.read() + 1;
        reg{0}.range(47, 32) = s_result_PE{0}.read() + 1;
        reg{0}.range(63, 48) = s_result_PE{0}.read() + 1;
        reg{0}.range(79, 64) = s_result_PE{0}.read() + 1;
        reg{0}.range(95, 80) = s_result_PE{0}.read() + 1;
        reg{0}.range(111, 96) = s_result_PE{0}.read() + 1;
        reg{0}.range(127, 112) = s_result_PE{0}.read() + 1;

        s_result_all.write(reg{0});
""".format(i)
    elif FLAGS.W_TYPE == 4 and FLAGS.D_TYPE == "short" and FLAGS.ROW_PER_PE == 4:
        for i in range(int(FLAGS.PE_NUM)):
            out_str += \
"""
        reg{1}.range(15, 0) = s_result_PE{0}.read() + 1;
        reg{1}.range(31, 16) = s_result_PE{0}.read() + 1;
        reg{1}.range(47, 32) = s_result_PE{0}.read() + 1;
        reg{1}.range(63, 48) = s_result_PE{0}.read() + 1;

        s_result_item0.write(reg{1});

        reg{2}.range(15, 0) = s_result_PE{0}.read() + 1;
        reg{2}.range(31, 16) = s_result_PE{0}.read() + 1;
        reg{2}.range(47, 32) = s_result_PE{0}.read() + 1;
        reg{2}.range(63, 48) = s_result_PE{0}.read() + 1;

        s_result_item1.write(reg{2});
""".format(i, 2 * i, 2 * i + 1)

    # write output
    with open (FLAGS.output_file_dir + FLAGS.file_name,'w+') as f:
        f.write(out_str)