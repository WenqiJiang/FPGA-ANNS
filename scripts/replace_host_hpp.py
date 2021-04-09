from shutil import copyfile
from os import listdir
from os.path import isfile, join

mypath = "../"
dir_lv1 = [mypath + f for f in listdir(mypath) if not isfile(join(mypath, f))] 

dir_lv2 = []
for d in dir_lv1:
    dir_lv2 += [d + "/" + f for f in listdir(d) if not isfile(d + "/" + f)]

dir_lv3 = []
for d in dir_lv2:
    dir_lv3 += [d + "/" + f for f in listdir(d) if not isfile(d + "/" + f)]

dir_lv4 = []
for d in dir_lv3:
    dir_lv4 += [d + "/" + f for f in listdir(d) if not isfile(d + "/" + f)]

all_dir = dir_lv1 + dir_lv2 + dir_lv3 + dir_lv4

target_dir = [f for f in all_dir if f[-4:] == "/src"]

target_files = []
for d in target_dir:
    target_files += [d + "/" + f for f in listdir(d) if f == "host.hpp"]

for fname in target_files:
    fin = open(fname, "rt")
    contents = fin.read()
    contents = contents.replace("<CL/cl2.hpp>", '"cl2.hpp"')
    fin.close()

    fin = open(fname, "wt")
    fin.write(contents)
    fin.close()