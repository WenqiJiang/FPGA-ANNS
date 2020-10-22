# Copy the line for several times, replace the string you asked as other numbers

# python replicate_str.py --file_name "tmp" --input_file_dir "./tmp_in/" --output_file_dir "./tmp_out/" --replaced_num 1 --split_by_empty_line 0 --start 0 --total_num 15

import argparse 
parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='embedding_size_bytes')
parser.add_argument('--input_file_dir', type=str, default='inputs/')
parser.add_argument('--output_file_dir', type=str, default='outputs/') 
# NOTE! PREFERABLE TO REPLACE 1, SINCE 0 MAY MASS UP WITH LOOP COUNTERS!
parser.add_argument('--replaced_num', type=str, default='1')
parser.add_argument('--split_by_empty_line', type=int, default=0)
parser.add_argument('--start', type=int, default=0)
parser.add_argument('--total_num', type=int, default=32 * 8)

FLAGS, unparsed = parser.parse_known_args()
# print(FLAGS.split_by_empty_line)

if __name__ == "__main__":
    
    with open (FLAGS.input_file_dir + FLAGS.file_name,'r') as f:
        input_line = f.read()

        with open (FLAGS.output_file_dir + FLAGS.file_name,'w+') as f:

            for i in range(FLAGS.total_num):
                out_str = input_line.replace(FLAGS.replaced_num, str(FLAGS.start + i))
                if FLAGS.split_by_empty_line:
                    out_str = out_str + '\n'
                f.write(out_str)
