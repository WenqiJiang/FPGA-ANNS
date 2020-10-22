# e.g., host input:    
    # embedding1Ext.obj = embedding1.data();
    # embedding1Ext.param = 0;
    # embedding1Ext.flags = 
# NOTE! the "bank[1];" should be removed from input string
# axi input:
    # #pragma HLS INTERFACE m_axi port=table0  offset=slave bundle=gmem
# NOTE! shouldn't be "gmem0" in the end, the 0 should be removed
# this script will automatically generate it

# total embedding num: 64, want to use bank0 to bank31

# output:
#     embedding0Ext.obj = embedding0.data();
#     embedding0Ext.param = 0;
#     embedding0Ext.flags = bank[0];

#     ...

#     embedding31Ext.obj = embedding31.data();
#     embedding31Ext.param = 0;
#     embedding31Ext.flags = bank[31];

#     embedding32Ext.obj = embedding32.data();
#     embedding32Ext.param = 0;
#     embedding32Ext.flags = bank[0];

#     ...

# python bank.py --file_name "tmp" --input_file_dir "./tmp_in/" --output_file_dir "./tmp_out/" --replaced_num 1 --split_by_empty_line 0 --total_num 47 --in_plram=0 --in_hbm=46 --option=host
import argparse 
parser = argparse.ArgumentParser()

parser.add_argument('--file_name', type=str, default='host_bank')
parser.add_argument('--input_file_dir', type=str, default='inputs/')
parser.add_argument('--output_file_dir', type=str, default='outputs/')
parser.add_argument('--replaced_num', type=str, default='1')
parser.add_argument('--split_by_empty_line', type=int, default=0)
parser.add_argument('--total_num', type=int, default=47)
parser.add_argument('--in_plram', type=int, default=0)
parser.add_argument('--in_hbm', type=int, default=46)
parser.add_argument('--option', type=str, default="host") # host / axi / cfg

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
            if out_str[-1] == "\n":
                out_str = out_str[:-1]
            # PLRAM 34 ~ 39
            if FLAGS.option == "host":
                out_str += "bank[{}];\n".format(i % 6 + 34) 
            elif FLAGS.option == 'axi':
                out_str += "{}\n".format(i % 6 + 34) 
            count += 1

        for i in range(FLAGS.in_hbm):
            out_str += input_str.replace(str(FLAGS.replaced_num), str(count))
            if out_str[-1] == "\n":
                out_str = out_str[:-1]
            # HBM 0 ~ 31
            if FLAGS.option == "host":
                out_str += "bank[{}];\n".format(i % 32 + 0) 
            elif FLAGS.option == 'axi':
                out_str += "{}\n".format(i % 32 + 0) 
            count += 1

        for i in range(FLAGS.total_num - FLAGS.in_hbm - FLAGS.in_plram):
            out_str += input_str.replace(str(FLAGS.replaced_num), str(count))
            if out_str[-1] == "\n":
                out_str = out_str[:-1]
            # DDR 32 ~ 33
            if FLAGS.option == "host":
                out_str += "bank[{}];\n".format(i % 2 + 32) 
            elif FLAGS.option == 'axi':
                out_str += "{}\n".format(i % 2 + 32) 
            count += 1

        f.write(out_str)