# Copy the line for several times, replace the string you asked as other numbers

# python generate_connectivity.py --file_name "tmp" --input_file_dir "./tmp_in/" --output_file_dir "./tmp_out/" --replaced_num 0 --total_num 47 --in_plram 0 --in_hbm 46

import argparse 
parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='embedding_size_bytes')
parser.add_argument('--input_file_dir', type=str, default='inputs/')
parser.add_argument('--output_file_dir', type=str, default='outputs/')
# store 46 of 47 tables in 
# NOTE: sample template: sp=vadd_1.table0:
parser.add_argument('--replaced_num', type=str, default='0')
parser.add_argument('--total_num', type=int, default=47) 
parser.add_argument('--in_plram', type=int, default=0)
parser.add_argument('--in_hbm', type=int, default=46)

FLAGS, unparsed = parser.parse_known_args()

if __name__ == "__main__":

    input_str = ""
    with open (FLAGS.input_file_dir + FLAGS.file_name,'r') as f:
        input_str = f.read()

    with open (FLAGS.output_file_dir + FLAGS.file_name,'w+') as f:
        
        count = 0
        out_str = ""
        
        for i in range(FLAGS.in_plram):
            out_str += input_str.replace(str(FLAGS.replaced_num), str(count))
            out_str += "PLRAM[{}]\n".format(i % 6) 
            count += 1

        for i in range(FLAGS.in_hbm):
            out_str += input_str.replace(str(FLAGS.replaced_num), str(count))
            out_str += "HBM[{}]\n".format(i % 32) 
            count += 1

        for i in range(FLAGS.total_num - FLAGS.in_hbm - FLAGS.in_plram):
            out_str += input_str.replace(str(FLAGS.replaced_num), str(count))
            out_str += "DDR[{}]\n".format(i % 2) 
            count += 1

        f.write(out_str)
