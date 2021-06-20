open_project hls_test
set_top vadd
add_files src/vadd.cpp -cflags "-std=c++0x"
# add_files src/krnl_udf_selection.h
# add_files src/types.h
# add_files src/hbm_column.hpp
add_files -tb test_bench.cpp -cflags "-std=c++0x -Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xcu280-fsvh2892-2l-e}
# create_clock -period 10 -name default
# csim_design -argv {1024 u,s 4000 u,s 1 1 1}
# csim_design
csynth_design
cosim_design
# export_design -format ip_catalog
