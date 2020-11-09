
Ì
v++_link_vadd.sw_emu$9d81c91e-b6f0-4f3e-b4ad-38ee57a04ce42]U/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/.tlog/v++_link_vadd.sw_emu.xtl 2VN/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.sw_emu.xclbin.link_summary 2WQ/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.sw_emu.xclbin.link_summary.pb Q/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.sw_emu.xclbin.link_summary.pb"Thu Oct 29 23:10:17 2020(Êµ¥³×.bÊ
$d0f4099a-d695-4e92-bbce-3317f7e4b672v++J/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/link.steps.log"³/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t sw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.sw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.sw_emu.xclbin xclbin/vadd.sw_emu.xo *-t*sw_emu*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.sw_emu/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.sw_emu.xclbin*xclbin/vadd.sw_emu.xo2Ø
2/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/design.cfg¡platform=xilinx_u280_xdma_201920_3
profile_kernel=data:all:all:all
kernel_frequency=140
debug=1

[connectivity]
nk=vadd:1:vadd_1
# slr=vadd_1:SLR0
sp=vadd_1.table_HBM0:HBM[0]
sp=vadd_1.table_HBM1:HBM[1]
sp=vadd_1.table_HBM2:HBM[2]
sp=vadd_1.table_HBM3:HBM[3]
sp=vadd_1.table_HBM4:HBM[4]
sp=vadd_1.table_HBM5:HBM[5]
sp=vadd_1.table_HBM6:HBM[6]
sp=vadd_1.table_HBM7:HBM[7]
sp=vadd_1.table_HBM8:HBM[8]
sp=vadd_1.table_HBM9:HBM[9]
sp=vadd_1.table_HBM10:HBM[10]
sp=vadd_1.table_HBM11:HBM[11]
sp=vadd_1.table_HBM12:HBM[12]
sp=vadd_1.table_HBM13:HBM[13]
sp=vadd_1.table_HBM14:HBM[14]
sp=vadd_1.table_HBM15:HBM[15]
sp=vadd_1.table_HBM16:HBM[16]
sp=vadd_1.table_HBM17:HBM[17]
sp=vadd_1.table_HBM18:HBM[18]
sp=vadd_1.table_HBM19:HBM[19]
sp=vadd_1.table_HBM20:HBM[20]
sp=vadd_1.table_HBM21:HBM[21]
sp=vadd_1.table_HBM22:HBM[22]
sp=vadd_1.table_HBM23:HBM[23]
sp=vadd_1.table_HBM24:HBM[24]
sp=vadd_1.table_HBM25:HBM[25]
sp=vadd_1.table_HBM26:HBM[26]
sp=vadd_1.table_HBM27:HBM[27]
sp=vadd_1.table_HBM28:HBM[28]
sp=vadd_1.table_HBM29:HBM[29]
sp=vadd_1.table_HBM30:HBM[30]
sp=vadd_1.table_HBM31:HBM[31]
# sp=vadd_1.table_DDR0:DDR[0]
# sp=vadd_1.table_DDR1:DDR[1]
sp=vadd_1.out_PLRAM:PLRAM[0]

[vivado] 
#param=compiler.userPreSysLinkTcl=$(PWD)/tcl/plram.tcl 
param=route.enableGlobalHoldIter=true
param=project.writeIntermediateCheckpoints=true
# prop=run.impl_1.STEPS.PLACE_DESIGN.ARGS.DIRECTIVE=SSI_SpreadLogic_high
# prop=run.impl_1.{STEPS.PLACE_DESIGN.ARGS.MORE OPTIONS}={-post_place_opt}
prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.IS_ENABLED}=true 
# prop=run.impl_1.STEPS.PHYS_OPT_DESIGN.ARGS.DIRECTIVE=ExploreWithHoldFix
# prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-fanout_opt -critical_cell_opt -rewire -slr_crossing_opt -tns_cleanup -hold_fix -sll_reg_hold_fix -retime}
prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-slr_crossing_opt -tns_cleanup}
#prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-hold_fix -slr_crossing_opt}
prop=run.impl_1.STEPS.ROUTE_DESIGN.ARGS.DIRECTIVE=AlternateCLBRouting
#prop=run.impl_1.{STEPS.PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-hold_fix}
prop=run.impl_1.{STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED}=true 
prop=run.impl_1.{STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-critical_cell_opt -rewire -hold_fix -sll_reg_hold_fix -retime}
#prop=run.impl_1.{STEPS.POST_ROUTE_PHYS_OPT_DESIGN.ARGS.MORE OPTIONS}={-critical_cell_opt -rewire -slr_crossing_opt -tns_cleanup -hold_fix -sll_reg_hold_fix -retime}
"Thu Oct 29 23:10:17 2020(Ìµ¥³×.r(
$d0f4099a-d695-4e92-bbce-3317f7e4b672"Thu Oct 29 23:10:26 2020(þø¥³×.ZŽ
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BR
Pvadd.sw_emuA/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.sw_emu.xclbinJ´
Gvadd=/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/xclbin/vadd.sw_emu.xoa/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Thu Oct 29 23:10:26 2020(ãù¥³×.bŸ
$d27f78c8-54a5-49f0-bf3c-c4627b96527a	regiongenY/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_regiongen.log"¡/opt/Xilinx/Vitis/2019.2/bin/../runtime/bin/regiongen_new -v -m /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml -t alg -o xcl_top*-v*-m*O/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*-t*alg*-o*xcl_top"Thu Oct 29 23:10:26 2020(åù¥³×.r(
$d27f78c8-54a5-49f0-bf3c-c4627b96527a"Thu Oct 29 23:10:27 2020(¼‚¦³×.r(
$d27f78c8-54a5-49f0-bf3c-c4627b96527a"Thu Oct 29 23:10:27 2020(É‚¦³×.b‘

$3c7e5c75-2039-4678-8101-e25f15111fcegccX/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd/vadd_kernel_gcc.log"Ð/opt/Xilinx/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin/gcc -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /usr/include/x86_64-linux-gnu -std=c++11 -g -I /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/src -g -fPIC -g -c -DHLS_STREAM_THREAD_SAFE -MD -MT obj/vadd.o -MP -MF obj/vadd.Cd /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp -o obj/vadd.o*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*/usr/include/x86_64-linux-gnu*
-std=c++11*-g*-I*+/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/src*-g*-fPIC*-g*-c*-DHLS_STREAM_THREAD_SAFE*-MD*-MT*
obj/vadd.o*-MP*-MF*obj/vadd.Cd*a/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp*-o*
obj/vadd.o"Thu Oct 29 23:10:27 2020(Ë‚¦³×.r(
$3c7e5c75-2039-4678-8101-e25f15111fce"Thu Oct 29 23:10:28 2020(¨¦³×.r(
$3c7e5c75-2039-4678-8101-e25f15111fce"Thu Oct 29 23:10:28 2020(¯¦³×.bŠ
$d6e13a9d-8e77-4fdf-911d-f6434033218aarP/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd/vadd_ar.log"à/opt/Xilinx/Vivado/2019.2/tps/lnx64/binutils-2.26/bin/ar -cr /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o*-cr*S/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a*O/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o"Thu Oct 29 23:10:28 2020(±¦³×.r(
$d6e13a9d-8e77-4fdf-911d-f6434033218a"Thu Oct 29 23:10:29 2020(™‘¦³×.r(
$d6e13a9d-8e77-4fdf-911d-f6434033218a"Thu Oct 29 23:10:29 2020(£‘¦³×.bä
$f95a4c55-5d9c-4c23-b88a-2173b608e474g++[/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xcl_top_gpp.log"ä/usr/bin/env PATH=/usr/bin:/bin g++ -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -fPIC -g -DHLS_STREAM_THREAD_SAFE -std=c++11 -fpermissive -c -MD -MT obj/xcl_top.o -MP -MF obj/xcl_top.CXXd xcl_top.cpp -o obj/xcl_top.o*PATH=/usr/bin:/bin*g++*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*6/opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-fPIC*-g*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-fpermissive*-c*-MD*-MT*obj/xcl_top.o*-MP*-MF*obj/xcl_top.CXXd*xcl_top.cpp*-o*obj/xcl_top.o"Thu Oct 29 23:10:29 2020(¦‘¦³×.r(
$f95a4c55-5d9c-4c23-b88a-2173b608e474"Thu Oct 29 23:10:30 2020(é˜¦³×.r(
$f95a4c55-5d9c-4c23-b88a-2173b608e474"Thu Oct 29 23:10:30 2020(ï˜¦³×.b®
$fbe8d7bc-ad9e-4440-9152-ef65f0df31cag++W/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_top_gpp.log"É/usr/bin/env PATH=/usr/bin:/bin g++ -fPIC -DHLS_STREAM_THREAD_SAFE -std=c++11 -Wall -shared -Wl,--whole-archive,-soname,vadd.sw_emu.so -o vadd.sw_emu.so vadd/vadd.csim_cu.a obj/xcl_top.o -Wl,--no-whole-archive -Wl,--as-needed -L /opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o -lhlsmathsim -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -lgmp -lmpfr -lIp_floating_point_v7_0_bitacc_cmodel -Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1 -lIp_xfft_v9_1_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0 -lgmp -lIp_fir_compiler_v7_2_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim -lhlsmc++-GCC46*PATH=/usr/bin:/bin*g++*-fPIC*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-Wall*-shared**-Wl,--whole-archive,-soname,vadd.sw_emu.so*-o*vadd.sw_emu.so*vadd/vadd.csim_cu.a*obj/xcl_top.o*-Wl,--no-whole-archive*-Wl,--as-needed*-L*,/opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o*-lhlsmathsim*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-lgmp*-lmpfr*&-lIp_floating_point_v7_0_bitacc_cmodel*@-Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1*-lIp_xfft_v9_1_bitacc_cmodel*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0*-lgmp*$-lIp_fir_compiler_v7_2_bitacc_cmodel*-L*//opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim*-lhlsmc++-GCC46"Thu Oct 29 23:10:30 2020(ñ˜¦³×.r(
$fbe8d7bc-ad9e-4440-9152-ef65f0df31ca"Thu Oct 29 23:10:30 2020(Î™¦³×.r(
$fbe8d7bc-ad9e-4440-9152-ef65f0df31ca"Thu Oct 29 23:10:30 2020(Ø™¦³×.jY
S/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd %"Thu Oct 29 23:10:30 2020(‰š¦³×.b°
$a23170a4-358d-420d-8563-b5147989dc1b
xclbinutilZ/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xclbinutil.log"—/opt/xilinx/xrt/bin/xclbinutil --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.so --force --key-value SYS:mode:sw_emu --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml --add-section DEBUG_DATA:RAW:/dev/null --output /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--add-section*\BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.so*--force*--key-value*SYS:mode:sw_emu*--add-section*lCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd*--add-section*iBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd*--add-section*eEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*--add-section*DEBUG_DATA:RAW:/dev/null*--output*R/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Thu Oct 29 23:10:30 2020(Šš¦³×.r(
$a23170a4-358d-420d-8563-b5147989dc1b"Thu Oct 29 23:10:30 2020(°š¦³×.r(
$a23170a4-358d-420d-8563-b5147989dc1b"Thu Oct 29 23:10:30 2020(µš¦³×.b„
$58ece16f-d3bf-4b95-a2fb-49481f01dd38
xclbinutilW/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin.info"ˆ/opt/xilinx/xrt/bin/xclbinutil --quiet --info --input /mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--quiet*--info*--input*R/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Thu Oct 29 23:10:30 2020(·š¦³×.r(
$58ece16f-d3bf-4b95-a2fb-49481f01dd38"Thu Oct 29 23:10:30 2020(×š¦³×.r(
$58ece16f-d3bf-4b95-a2fb-49481f01dd38"Thu Oct 29 23:10:30 2020(“›¦³×.jj
d/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/reports/link/system_estimate_vadd.sw_emu.xtxt "Thu Oct 29 23:10:30 2020(àœ¦³×.jl
f/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/reports/link/v++_link_vadd.sw_emu_guidance.html "Thu Oct 29 23:10:30 2020(âœ¦³×.j]
W/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/v++_link_vadd.sw_emu_guidance.pb "Thu Oct 29 23:10:31 2020(ïŸ¦³×.jT
N/mnt/scratch/wenqi/FPGA-ANNS/fifth_test/_x.sw_emu/vadd/logs/optraceViewer.html ""Thu Oct 29 23:10:31 2020(÷Ÿ¦³×.r(
$d0f4099a-d695-4e92-bbce-3317f7e4b672