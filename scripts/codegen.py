# This script automatically generate code according to the template and the replaced strings
# the segments are highlighted by keywords:
# //////////////////////////////   TEMPLATE START  ////////////////////////////// 
# //////////////////////////////   TEMPLATE END  //////////////////////////////  
# process of codegen:
# 1. extract all templates segments
# 2. generate alternative code according to the segments
# 3. replace the src file by the alternative segments -> this script

import os
import pathlib

from shutil import rmtree
from os import walk, listdir
from os.path import isfile, join

from extract_template_segments import get_segments

if __name__ == "__main__":

    os.system("rm -rf src_out/*")
    os.system("cp -r src_in/* src_out")

    file_names = []
    src_path = "./src_out/" # don't add another slash in the end!
    for (dirpath, dirnames, filenames) in walk(src_path):
        for filename in filenames:
            # filename[0] = path+name
            # filename[1] = filename only
            file_names.append((os.path.join(dirpath, filename), filename))

    print("All scanned files include:")
    for path_file_name, file_name in file_names:
        print(path_file_name, '\t', file_name)

    # only keep the files that has template changes
    old_template_path = "./old_template_segments"
    new_template_path = "./new_template_segments"
    all_new_template_path_files = [f for f in listdir(new_template_path) if isfile(join(new_template_path, f))]
    modified_file_names = set()
    for f in all_new_template_path_files:
        # file name and new_template_path id splitted by "_"
        tmp = f.split("_")
        assert len(tmp) == 2
        modified_file_names.add(tmp[0]) 

    print("These files will be modified:")
    for file_name in modified_file_names:
        print(file_name) 

    for path_file_name, file_name in file_names:
        if file_name in modified_file_names:
            new_template_path_files = [f for f in all_new_template_path_files if f[:len(file_name)]==file_name]
            new_template_path_files = sorted(new_template_path_files) # start from the first change
 
            content = ""
            with open(path_file_name, "r") as src_f:
                content = src_f.read()

            with open(path_file_name, "w") as src_f:

                for t in new_template_path_files:
                    new_str = ""
                    old_str = ""
                    with open(os.path.join(new_template_path, t), "r") as tmp_f:
                        new_str = tmp_f.read()
                    with open(os.path.join(old_template_path, t), "r") as tmp_f:
                        old_str = tmp_f.read()
                    # print(old_str, new_str)
                    # print(content.find(old_str))
                    content = content.replace(old_str, new_str)
                    # print("content:", content)

                src_f.write(content)

                
    print("Code generation completed")


