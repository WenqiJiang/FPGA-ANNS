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

print(len(target_dir))

# remove src dir
src = "../integrated_accelerator/entire-node-systolic-computation-without-FIFO-type-assignment/src"
target_dir.remove("../integrated_accelerator/entire-node-systolic-computation-without-FIFO-type-assignment/src")

for t in target_dir:
    copyfile(src + "/cl2.hpp", t + "/cl2.hpp")
    copyfile(src + "/opencl.hpp", t + "/opencl.hpp")