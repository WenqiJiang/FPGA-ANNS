# This script automatically extract template segments
# the segments are highlighted by keywords:
# //////////////////////////////   TEMPLATE START  ////////////////////////////// 
# //////////////////////////////   TEMPLATE END  //////////////////////////////  
# process of codegen:
# 1. extract all templates segments -> this script
# 2. generate alternative code according to the segments
# 3. replace the src file by the alternative segments

# Common error: cannot touch xxx...
# Solution: just run this script twice

import os
import pathlib

from shutil import rmtree
from os import walk

def get_segments(file_name):
    """
    Given a file name, return all of the segments as a list of strings
    """

    template_seg = []
    # NOTE! make sure that there's no space after the tokens
    if file_name[-len("design.cfg"):] == "design.cfg":
        start_token = "# //////////////////////////////   TEMPLATE START  //////////////////////////////\n"
        end_token =   "\n# //////////////////////////////   TEMPLATE END  //////////////////////////////\n"
    else:
        start_token = "//////////////////////////////   TEMPLATE START  //////////////////////////////\n"
        end_token =   "//////////////////////////////   TEMPLATE END  //////////////////////////////\n"

    print(file_name)
    with open(file_name, "r") as f:
        content = f.read()

        # doesn't contain a template segment
        if  content.find(end_token) == -1:
            return []

        split_content = content.split(end_token)
        # only keep the content after START token and before END token
        # the last piece after the last END token is discarded
        for sp in split_content[:-1]:
            futher_split = sp.split(start_token)
            assert len(futher_split) == 2
            template_seg.append(futher_split[1])

    return template_seg

if __name__ == "__main__":

    file_names = []
    src_path = "./src_in/" # don't add another slash in the end!
    for (dirpath, dirnames, filenames) in walk(src_path):
        for filename in filenames:
            # filename[0] = path+name
            # filename[1] = filename only
            file_names.append((os.path.join(dirpath, filename), filename))

    print("All scanned files include:")
    for path_file_name, file_name in file_names:
        print(path_file_name, '\t', file_name)

    if os.path.exists('old_template_segments'):
        rmtree("old_template_segments")
    else:
        os.mkdir('old_template_segments')

    if os.path.exists('new_template_segments'):
        rmtree("new_template_segments")
    else:
        os.mkdir('new_template_segments')

    for path_file_name, file_name in file_names:
        template_seg = get_segments(path_file_name)

        if template_seg:
            print("file name: {}".format(path_file_name))
            template_path = "old_template_segments"
            # dir = file_name[:len(file_name)]
            # # remove "./" at the begining of the dir
            # if dir[0] == '.':
            #     dir = dir[1:]
            # if dir[0] == '/':
            #     dir = dir [1:]
            # template_path = os.path.join("old_template_segments", dir)
            # pathlib.Path(template_path).mkdir(parents=True, exist_ok=True)

            for i, seg in enumerate(template_seg):
                print("segment {}:\n{}".format(i, seg))
                seg_path = os.path.join(template_path, "{}_{}".format(file_name, i))
                os.system("touch {}".format(seg_path))
                with open(seg_path, "w+") as f:
                    f.write(seg)

