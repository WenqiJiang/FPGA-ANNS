open_project bitonic_sort_16_fixed_scan_per_query 
open_solution xcu280-fsvh2892-2L-e  
add_files -cflags "-std=c++11" vadd.cpp 
set_top vadd 
set_part xcu280-fsvh2892-2L-e 
config_interface -m_axi_addr64
csynth_design
exit
