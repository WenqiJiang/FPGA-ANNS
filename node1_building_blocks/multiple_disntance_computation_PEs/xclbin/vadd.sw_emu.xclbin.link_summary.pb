
⁄
v++_link_vadd.sw_emu$a752fdb1-ee65-41c8-a0b6-bc7c8f43476c2åÉ/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/.tlog/v++_link_vadd.sw_emu.xtl 2Ñ|/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/xclbin/vadd.sw_emu.xclbin.link_summary 2Ö/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/xclbin/vadd.sw_emu.xclbin.link_summary.pb /mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/xclbin/vadd.sw_emu.xclbin.link_summary.pb"Thu Nov  5 15:41:05 2020(áπÍ∆Ÿ.b¢
$3e2ec1b2-54ed-49da-b194-7a1135cda578v++x/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/link.steps.log"≥/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t sw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.sw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.sw_emu.xclbin xclbin/vadd.sw_emu.xo *-t*sw_emu*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.sw_emu/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.sw_emu.xclbin*xclbin/vadd.sw_emu.xo2Ç
`/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/design.cfgùplatform=xilinx_u280_xdma_201920_3
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
sp=vadd_1.table_DDR0:DDR[0]
sp=vadd_1.table_DDR1:DDR[1]
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
"Thu Nov  5 15:41:05 2020(äπÍ∆Ÿ.r(
$3e2ec1b2-54ed-49da-b194-7a1135cda578"Thu Nov  5 15:41:14 2020(ıÄÎ∆Ÿ.Zö
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BÄ
~vadd.sw_emuo/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/xclbin/vadd.sw_emu.xclbinJë
uvaddk/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/xclbin/vadd.sw_emu.xoè/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Thu Nov  5 15:41:14 2020(’ÅÎ∆Ÿ.b™
$1e84272a-73ad-4d8f-81e1-657de3cd4fe6	regiongená/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_regiongen.log"œ/opt/Xilinx/Vitis/2019.2/bin/../runtime/bin/regiongen_new -v -m /mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml -t alg -o xcl_top*-v*-m*}/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*-t*alg*-o*xcl_top"Thu Nov  5 15:41:14 2020(÷ÅÎ∆Ÿ.r(
$1e84272a-73ad-4d8f-81e1-657de3cd4fe6"Thu Nov  5 15:41:15 2020(ïåÎ∆Ÿ.r(
$1e84272a-73ad-4d8f-81e1-657de3cd4fe6"Thu Nov  5 15:41:15 2020(£åÎ∆Ÿ.b˘
$20436b05-7c0f-461a-b0c8-8d57ff166a7fgccÜ/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd/vadd_kernel_gcc.log"¨/opt/Xilinx/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin/gcc -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /usr/include/x86_64-linux-gnu -std=c++11 -g -I /mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/src -g -fPIC -g -c -DHLS_STREAM_THREAD_SAFE -MD -MT obj/vadd.o -MP -MF obj/vadd.Cd /mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp -o obj/vadd.o*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*/usr/include/x86_64-linux-gnu*
-std=c++11*-g*-I*Y/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/src*-g*-fPIC*-g*-c*-DHLS_STREAM_THREAD_SAFE*-MD*-MT*
obj/vadd.o*-MP*-MF*obj/vadd.Cd*è/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp*-o*
obj/vadd.o"Thu Nov  5 15:41:15 2020(•åÎ∆Ÿ.r(
$20436b05-7c0f-461a-b0c8-8d57ff166a7f"Thu Nov  5 15:41:17 2020(±ñÎ∆Ÿ.r(
$20436b05-7c0f-461a-b0c8-8d57ff166a7f"Thu Nov  5 15:41:17 2020(∏ñÎ∆Ÿ.bÒ
$65ac127a-5f63-4e04-a452-5265099e4531ar~/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd/vadd_ar.log"º/opt/Xilinx/Vivado/2019.2/tps/lnx64/binutils-2.26/bin/ar -cr /mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a /mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o*-cr*Å/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a*}/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o"Thu Nov  5 15:41:17 2020(∫ñÎ∆Ÿ.r(
$65ac127a-5f63-4e04-a452-5265099e4531"Thu Nov  5 15:41:17 2020(ÏñÎ∆Ÿ.r(
$65ac127a-5f63-4e04-a452-5265099e4531"Thu Nov  5 15:41:17 2020(ˆñÎ∆Ÿ.bì	
$fa49abd5-1ebb-4101-b3ca-2df46587e03bg++â/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_xcl_top_gpp.log"‰/usr/bin/env PATH=/usr/bin:/bin g++ -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -fPIC -g -DHLS_STREAM_THREAD_SAFE -std=c++11 -fpermissive -c -MD -MT obj/xcl_top.o -MP -MF obj/xcl_top.CXXd xcl_top.cpp -o obj/xcl_top.o*PATH=/usr/bin:/bin*g++*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*6/opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-fPIC*-g*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-fpermissive*-c*-MD*-MT*obj/xcl_top.o*-MP*-MF*obj/xcl_top.CXXd*xcl_top.cpp*-o*obj/xcl_top.o"Thu Nov  5 15:41:17 2020(¯ñÎ∆Ÿ.r(
$fa49abd5-1ebb-4101-b3ca-2df46587e03b"Thu Nov  5 15:41:18 2020(—ûÎ∆Ÿ.r(
$fa49abd5-1ebb-4101-b3ca-2df46587e03b"Thu Nov  5 15:41:18 2020(◊ûÎ∆Ÿ.b›
$7db25c2d-34bc-4ad9-b116-b7c1d463c4afg++Ö/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_top_gpp.log"…/usr/bin/env PATH=/usr/bin:/bin g++ -fPIC -DHLS_STREAM_THREAD_SAFE -std=c++11 -Wall -shared -Wl,--whole-archive,-soname,vadd.sw_emu.so -o vadd.sw_emu.so vadd/vadd.csim_cu.a obj/xcl_top.o -Wl,--no-whole-archive -Wl,--as-needed -L /opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o -lhlsmathsim -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -lgmp -lmpfr -lIp_floating_point_v7_0_bitacc_cmodel -Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1 -lIp_xfft_v9_1_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0 -lgmp -lIp_fir_compiler_v7_2_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim -lhlsmc++-GCC46*PATH=/usr/bin:/bin*g++*-fPIC*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-Wall*-shared**-Wl,--whole-archive,-soname,vadd.sw_emu.so*-o*vadd.sw_emu.so*vadd/vadd.csim_cu.a*obj/xcl_top.o*-Wl,--no-whole-archive*-Wl,--as-needed*-L*,/opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o*-lhlsmathsim*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-lgmp*-lmpfr*&-lIp_floating_point_v7_0_bitacc_cmodel*@-Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1*-lIp_xfft_v9_1_bitacc_cmodel*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0*-lgmp*$-lIp_fir_compiler_v7_2_bitacc_cmodel*-L*//opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim*-lhlsmc++-GCC46"Thu Nov  5 15:41:18 2020(ŸûÎ∆Ÿ.r(
$7db25c2d-34bc-4ad9-b116-b7c1d463c4af"Thu Nov  5 15:41:18 2020(≥üÎ∆Ÿ.r(
$7db25c2d-34bc-4ad9-b116-b7c1d463c4af"Thu Nov  5 15:41:18 2020(æüÎ∆Ÿ.jà
Å/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd %"Thu Nov  5 15:41:18 2020(ÌüÎ∆Ÿ.b∞
$e32a6e65-3dfe-4fd3-a6ee-b7235719157c
xclbinutilà/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_xclbinutil.log"˝/opt/xilinx/xrt/bin/xclbinutil --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.so --force --key-value SYS:mode:sw_emu --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml --add-section DEBUG_DATA:RAW:/dev/null --output /mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--add-section*äBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.so*--force*--key-value*SYS:mode:sw_emu*--add-section*öCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd*--add-section*óBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd*--add-section*ìEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*--add-section*DEBUG_DATA:RAW:/dev/null*--output*Ä/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Thu Nov  5 15:41:18 2020(ÓüÎ∆Ÿ.r(
$e32a6e65-3dfe-4fd3-a6ee-b7235719157c"Thu Nov  5 15:41:18 2020(ì†Î∆Ÿ.r(
$e32a6e65-3dfe-4fd3-a6ee-b7235719157c"Thu Nov  5 15:41:18 2020(ò†Î∆Ÿ.bê
$6ad46720-3067-4a95-ab09-89726f1dff0f
xclbinutilÖ/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin.info"∂/opt/xilinx/xrt/bin/xclbinutil --quiet --info --input /mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--quiet*--info*--input*Ä/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Thu Nov  5 15:41:18 2020(ö†Î∆Ÿ.r(
$6ad46720-3067-4a95-ab09-89726f1dff0f"Thu Nov  5 15:41:18 2020(∫†Î∆Ÿ.r(
$6ad46720-3067-4a95-ab09-89726f1dff0f"Thu Nov  5 15:41:18 2020(Ò†Î∆Ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/reports/link/system_estimate_vadd.sw_emu.xtxt "Thu Nov  5 15:41:18 2020(™¢Î∆Ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/reports/link/v++_link_vadd.sw_emu_guidance.html "Thu Nov  5 15:41:18 2020(¨¢Î∆Ÿ.jå
Ö/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/v++_link_vadd.sw_emu_guidance.pb "Thu Nov  5 15:41:19 2020(Ø¨Î∆Ÿ.jÇ
|/mnt/scratch/wenqi/FPGA-ANNS/node1_building_blocks/multiple_disntance_computation_PEs/_x.sw_emu/vadd/logs/optraceViewer.html ""Thu Nov  5 15:41:19 2020(π¨Î∆Ÿ.r(
$3e2ec1b2-54ed-49da-b194-7a1135cda578