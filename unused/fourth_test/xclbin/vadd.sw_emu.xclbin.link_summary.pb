
œ
v++_link_vadd.sw_emu$e6a0d190-86ac-4322-9560-82b85f751d2d2^V/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/.tlog/v++_link_vadd.sw_emu.xtl 2WO/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.sw_emu.xclbin.link_summary 2XR/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.sw_emu.xclbin.link_summary.pb R/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.sw_emu.xclbin.link_summary.pb"Thu Oct 29 15:59:31 2020(í˜˚¶◊.b»
$6ea8912a-ace2-4f45-8e3c-8d9dfcd11b85v++K/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/link.steps.log"≥/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t sw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.sw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.sw_emu.xclbin xclbin/vadd.sw_emu.xo *-t*sw_emu*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.sw_emu/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.sw_emu.xclbin*xclbin/vadd.sw_emu.xo2’
3/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/design.cfgùplatform=xilinx_u280_xdma_201920_3
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
"Thu Oct 29 15:59:31 2020(î˜˚¶◊.r(
$6ea8912a-ace2-4f45-8e3c-8d9dfcd11b85"Thu Oct 29 15:59:40 2020(á∫¸¶◊.Zë
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BS
Qvadd.sw_emuB/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.sw_emu.xclbinJ∂
Hvadd>/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/xclbin/vadd.sw_emu.xob/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Thu Oct 29 15:59:40 2020(Ë∫¸¶◊.b¢
$f4b8550c-36d0-40fb-9531-2b8d4859d364	regiongenZ/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_regiongen.log"¢/opt/Xilinx/Vitis/2019.2/bin/../runtime/bin/regiongen_new -v -m /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml -t alg -o xcl_top*-v*-m*P/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*-t*alg*-o*xcl_top"Thu Oct 29 15:59:40 2020(È∫¸¶◊.r(
$f4b8550c-36d0-40fb-9531-2b8d4859d364"Thu Oct 29 15:59:41 2020(ç√¸¶◊.r(
$f4b8550c-36d0-40fb-9531-2b8d4859d364"Thu Oct 29 15:59:41 2020(ö√¸¶◊.bñ

$7d99bc30-aa5c-4389-b436-8861ec34ce5cgccY/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd/vadd_kernel_gcc.log"“/opt/Xilinx/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin/gcc -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /usr/include/x86_64-linux-gnu -std=c++11 -g -I /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/src -g -fPIC -g -c -DHLS_STREAM_THREAD_SAFE -MD -MT obj/vadd.o -MP -MF obj/vadd.Cd /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp -o obj/vadd.o*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*/usr/include/x86_64-linux-gnu*
-std=c++11*-g*-I*,/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/src*-g*-fPIC*-g*-c*-DHLS_STREAM_THREAD_SAFE*-MD*-MT*
obj/vadd.o*-MP*-MF*obj/vadd.Cd*b/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp*-o*
obj/vadd.o"Thu Oct 29 15:59:41 2020(ú√¸¶◊.r(
$7d99bc30-aa5c-4389-b436-8861ec34ce5c"Thu Oct 29 15:59:42 2020(¸À¸¶◊.r(
$7d99bc30-aa5c-4389-b436-8861ec34ce5c"Thu Oct 29 15:59:42 2020(ÉÃ¸¶◊.bè
$3785ba1e-0b99-401d-9d41-185bc8c3a7fdarQ/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd/vadd_ar.log"‚/opt/Xilinx/Vivado/2019.2/tps/lnx64/binutils-2.26/bin/ar -cr /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o*-cr*T/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a*P/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o"Thu Oct 29 15:59:42 2020(ÑÃ¸¶◊.r(
$3785ba1e-0b99-401d-9d41-185bc8c3a7fd"Thu Oct 29 15:59:42 2020(®Ã¸¶◊.r(
$3785ba1e-0b99-401d-9d41-185bc8c3a7fd"Thu Oct 29 15:59:42 2020(∞Ã¸¶◊.bÂ
$4e36f77d-6fa2-4574-9c77-ce622f35a53bg++\/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xcl_top_gpp.log"‰/usr/bin/env PATH=/usr/bin:/bin g++ -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -fPIC -g -DHLS_STREAM_THREAD_SAFE -std=c++11 -fpermissive -c -MD -MT obj/xcl_top.o -MP -MF obj/xcl_top.CXXd xcl_top.cpp -o obj/xcl_top.o*PATH=/usr/bin:/bin*g++*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*6/opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-fPIC*-g*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-fpermissive*-c*-MD*-MT*obj/xcl_top.o*-MP*-MF*obj/xcl_top.CXXd*xcl_top.cpp*-o*obj/xcl_top.o"Thu Oct 29 15:59:42 2020(≥Ã¸¶◊.r(
$4e36f77d-6fa2-4574-9c77-ce622f35a53b"Thu Oct 29 15:59:43 2020(””¸¶◊.r(
$4e36f77d-6fa2-4574-9c77-ce622f35a53b"Thu Oct 29 15:59:43 2020(ÿ”¸¶◊.bØ
$f1fbe63f-a528-4759-b109-f5f2fa0dd800g++X/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_top_gpp.log"…/usr/bin/env PATH=/usr/bin:/bin g++ -fPIC -DHLS_STREAM_THREAD_SAFE -std=c++11 -Wall -shared -Wl,--whole-archive,-soname,vadd.sw_emu.so -o vadd.sw_emu.so vadd/vadd.csim_cu.a obj/xcl_top.o -Wl,--no-whole-archive -Wl,--as-needed -L /opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o -lhlsmathsim -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -lgmp -lmpfr -lIp_floating_point_v7_0_bitacc_cmodel -Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1 -lIp_xfft_v9_1_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0 -lgmp -lIp_fir_compiler_v7_2_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim -lhlsmc++-GCC46*PATH=/usr/bin:/bin*g++*-fPIC*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-Wall*-shared**-Wl,--whole-archive,-soname,vadd.sw_emu.so*-o*vadd.sw_emu.so*vadd/vadd.csim_cu.a*obj/xcl_top.o*-Wl,--no-whole-archive*-Wl,--as-needed*-L*,/opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o*-lhlsmathsim*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-lgmp*-lmpfr*&-lIp_floating_point_v7_0_bitacc_cmodel*@-Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1*-lIp_xfft_v9_1_bitacc_cmodel*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0*-lgmp*$-lIp_fir_compiler_v7_2_bitacc_cmodel*-L*//opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim*-lhlsmc++-GCC46"Thu Oct 29 15:59:43 2020(⁄”¸¶◊.r(
$f1fbe63f-a528-4759-b109-f5f2fa0dd800"Thu Oct 29 15:59:43 2020(„‘¸¶◊.r(
$f1fbe63f-a528-4759-b109-f5f2fa0dd800"Thu Oct 29 15:59:43 2020(Ò‘¸¶◊.jZ
T/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd %"Thu Oct 29 15:59:43 2020(®’¸¶◊.bª
$bb642aef-7995-4b28-99eb-69a066a7077e
xclbinutil[/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xclbinutil.log"ú/opt/xilinx/xrt/bin/xclbinutil --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.so --force --key-value SYS:mode:sw_emu --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml --add-section DEBUG_DATA:RAW:/dev/null --output /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--add-section*]BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.so*--force*--key-value*SYS:mode:sw_emu*--add-section*mCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd*--add-section*jBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd*--add-section*fEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*--add-section*DEBUG_DATA:RAW:/dev/null*--output*S/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Thu Oct 29 15:59:43 2020(™’¸¶◊.r(
$bb642aef-7995-4b28-99eb-69a066a7077e"Thu Oct 29 15:59:43 2020(Õ’¸¶◊.r(
$bb642aef-7995-4b28-99eb-69a066a7077e"Thu Oct 29 15:59:43 2020(”’¸¶◊.bá
$9d6a76a6-c680-44c1-8ac0-91e2c9b9029b
xclbinutilX/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin.info"â/opt/xilinx/xrt/bin/xclbinutil --quiet --info --input /mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--quiet*--info*--input*S/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Thu Oct 29 15:59:43 2020(’’¸¶◊.r(
$9d6a76a6-c680-44c1-8ac0-91e2c9b9029b"Thu Oct 29 15:59:44 2020(‰÷¸¶◊.r(
$9d6a76a6-c680-44c1-8ac0-91e2c9b9029b"Thu Oct 29 15:59:44 2020(†◊¸¶◊.jk
e/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/reports/link/system_estimate_vadd.sw_emu.xtxt "Thu Oct 29 15:59:44 2020(Íÿ¸¶◊.jm
g/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/reports/link/v++_link_vadd.sw_emu_guidance.html "Thu Oct 29 15:59:44 2020(Ïÿ¸¶◊.j^
X/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/v++_link_vadd.sw_emu_guidance.pb "Thu Oct 29 15:59:44 2020(≥›¸¶◊.jU
O/mnt/scratch/wenqi/FPGA-ANNS/fourth_test/_x.sw_emu/vadd/logs/optraceViewer.html ""Thu Oct 29 15:59:44 2020(∫›¸¶◊.r(
$6ea8912a-ace2-4f45-8e3c-8d9dfcd11b85