
Ö
v++_link_vadd.sw_emu$8f5dbe42-7b70-4569-a97a-cc273f86e52f2ph/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/.tlog/v++_link_vadd.sw_emu.xtl 2ia/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.sw_emu.xclbin.link_summary 2jd/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.sw_emu.xclbin.link_summary.pb d/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.sw_emu.xclbin.link_summary.pb"Fri Nov  6 10:16:01 2020(éπ›ÊŸ.b¯
$0ff7929b-dc0f-4526-899e-8dd46bbf87b1v++]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/link.steps.log"≥/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t sw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.sw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.sw_emu.xclbin xclbin/vadd.sw_emu.xo *-t*sw_emu*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.sw_emu/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.sw_emu.xclbin*xclbin/vadd.sw_emu.xo2Û
E/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/design.cfg©platform=xilinx_u280_xdma_201920_3
profile_kernel=data:all:all:all
kernel_frequency=180
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
# sp=vadd_1.table_HBM28:HBM[28]
# sp=vadd_1.table_HBM29:HBM[29]
# sp=vadd_1.table_HBM30:HBM[30]
# sp=vadd_1.table_HBM31:HBM[31]
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
"Fri Nov  6 10:16:01 2020(êπ›ÊŸ.r(
$0ff7929b-dc0f-4526-899e-8dd46bbf87b1"Fri Nov  6 10:16:11 2020(§åﬁÊŸ.Z«
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Be
cvadd.sw_emuT/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.sw_emu.xclbinJ⁄
ZvaddP/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.sw_emu.xot/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Fri Nov  6 10:16:12 2020(¿ëﬁÊŸ.bÿ
$fc8adfdc-78e5-4b23-bdbe-8612baa8d345	regiongenl/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_regiongen.log"¥/opt/Xilinx/Vitis/2019.2/bin/../runtime/bin/regiongen_new -v -m /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml -t alg -o xcl_top*-v*-m*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*-t*alg*-o*xcl_top"Fri Nov  6 10:16:12 2020(¡ëﬁÊŸ.r(
$fc8adfdc-78e5-4b23-bdbe-8612baa8d345"Fri Nov  6 10:16:13 2020(ÖöﬁÊŸ.r(
$fc8adfdc-78e5-4b23-bdbe-8612baa8d345"Fri Nov  6 10:16:13 2020(ìöﬁÊŸ.b

$6ff5bd8b-6e86-4f6e-a237-4a86d57cfb3cgcck/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd/vadd_kernel_gcc.log"ˆ/opt/Xilinx/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin/gcc -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /usr/include/x86_64-linux-gnu -std=c++11 -g -I /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/src -g -fPIC -g -c -DHLS_STREAM_THREAD_SAFE -MD -MT obj/vadd.o -MP -MF obj/vadd.Cd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp -o obj/vadd.o*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*/usr/include/x86_64-linux-gnu*
-std=c++11*-g*-I*>/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/src*-g*-fPIC*-g*-c*-DHLS_STREAM_THREAD_SAFE*-MD*-MT*
obj/vadd.o*-MP*-MF*obj/vadd.Cd*t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp*-o*
obj/vadd.o"Fri Nov  6 10:16:13 2020(ñöﬁÊŸ.r(
$6ff5bd8b-6e86-4f6e-a237-4a86d57cfb3c"Fri Nov  6 10:16:14 2020(Œ£ﬁÊŸ.r(
$6ff5bd8b-6e86-4f6e-a237-4a86d57cfb3c"Fri Nov  6 10:16:14 2020(÷£ﬁÊŸ.bÈ
$db19f9ff-256a-48c3-a4c2-27aa8112b87aarc/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd/vadd_ar.log"Ü/opt/Xilinx/Vivado/2019.2/tps/lnx64/binutils-2.26/bin/ar -cr /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o*-cr*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o"Fri Nov  6 10:16:14 2020(ÿ£ﬁÊŸ.r(
$db19f9ff-256a-48c3-a4c2-27aa8112b87a"Fri Nov  6 10:16:14 2020( §ﬁÊŸ.r(
$db19f9ff-256a-48c3-a4c2-27aa8112b87a"Fri Nov  6 10:16:14 2020(‘§ﬁÊŸ.b˜
$c8fc744f-23e6-4de2-9065-ae2b569f967cg++n/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_xcl_top_gpp.log"‰/usr/bin/env PATH=/usr/bin:/bin g++ -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -fPIC -g -DHLS_STREAM_THREAD_SAFE -std=c++11 -fpermissive -c -MD -MT obj/xcl_top.o -MP -MF obj/xcl_top.CXXd xcl_top.cpp -o obj/xcl_top.o*PATH=/usr/bin:/bin*g++*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*6/opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-fPIC*-g*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-fpermissive*-c*-MD*-MT*obj/xcl_top.o*-MP*-MF*obj/xcl_top.CXXd*xcl_top.cpp*-o*obj/xcl_top.o"Fri Nov  6 10:16:14 2020(◊§ﬁÊŸ.r(
$c8fc744f-23e6-4de2-9065-ae2b569f967c"Fri Nov  6 10:16:15 2020(≥¨ﬁÊŸ.r(
$c8fc744f-23e6-4de2-9065-ae2b569f967c"Fri Nov  6 10:16:15 2020(π¨ﬁÊŸ.b¡
$2215955f-acec-4ec8-8c09-647192a4746dg++j/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_top_gpp.log"…/usr/bin/env PATH=/usr/bin:/bin g++ -fPIC -DHLS_STREAM_THREAD_SAFE -std=c++11 -Wall -shared -Wl,--whole-archive,-soname,vadd.sw_emu.so -o vadd.sw_emu.so vadd/vadd.csim_cu.a obj/xcl_top.o -Wl,--no-whole-archive -Wl,--as-needed -L /opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o -lhlsmathsim -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -lgmp -lmpfr -lIp_floating_point_v7_0_bitacc_cmodel -Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1 -lIp_xfft_v9_1_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0 -lgmp -lIp_fir_compiler_v7_2_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim -lhlsmc++-GCC46*PATH=/usr/bin:/bin*g++*-fPIC*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-Wall*-shared**-Wl,--whole-archive,-soname,vadd.sw_emu.so*-o*vadd.sw_emu.so*vadd/vadd.csim_cu.a*obj/xcl_top.o*-Wl,--no-whole-archive*-Wl,--as-needed*-L*,/opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o*-lhlsmathsim*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-lgmp*-lmpfr*&-lIp_floating_point_v7_0_bitacc_cmodel*@-Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1*-lIp_xfft_v9_1_bitacc_cmodel*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0*-lgmp*$-lIp_fir_compiler_v7_2_bitacc_cmodel*-L*//opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim*-lhlsmc++-GCC46"Fri Nov  6 10:16:15 2020(ª¨ﬁÊŸ.r(
$2215955f-acec-4ec8-8c09-647192a4746d"Fri Nov  6 10:16:15 2020(°≠ﬁÊŸ.r(
$2215955f-acec-4ec8-8c09-647192a4746d"Fri Nov  6 10:16:15 2020(∏≠ﬁÊŸ.jl
f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd %"Fri Nov  6 10:16:16 2020(∞ØﬁÊŸ.bÅ
$cb9b021d-613e-4cd7-a51b-5f90e4708745
xclbinutilm/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_xclbinutil.log"ˆ/opt/xilinx/xrt/bin/xclbinutil --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.so --force --key-value SYS:mode:sw_emu --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml --add-section DEBUG_DATA:RAW:/dev/null --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--add-section*oBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.so*--force*--key-value*SYS:mode:sw_emu*--add-section*CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd*--add-section*|BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd*--add-section*xEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*--add-section*DEBUG_DATA:RAW:/dev/null*--output*e/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Fri Nov  6 10:16:16 2020(±ØﬁÊŸ.r(
$cb9b021d-613e-4cd7-a51b-5f90e4708745"Fri Nov  6 10:16:16 2020(›ØﬁÊŸ.r(
$cb9b021d-613e-4cd7-a51b-5f90e4708745"Fri Nov  6 10:16:16 2020(‰ØﬁÊŸ.bΩ
$ba096dae-c96d-43da-b6ac-ba3d71705dbc
xclbinutilj/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin.info"õ/opt/xilinx/xrt/bin/xclbinutil --quiet --info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--quiet*--info*--input*e/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Fri Nov  6 10:16:16 2020(ÊØﬁÊŸ.r(
$ba096dae-c96d-43da-b6ac-ba3d71705dbc"Fri Nov  6 10:16:16 2020(ë∞ﬁÊŸ.r(
$ba096dae-c96d-43da-b6ac-ba3d71705dbc"Fri Nov  6 10:16:16 2020(˚≤ﬁÊŸ.j}
w/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/reports/link/system_estimate_vadd.sw_emu.xtxt "Fri Nov  6 10:16:16 2020(¬¥ﬁÊŸ.j
y/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/reports/link/v++_link_vadd.sw_emu_guidance.html "Fri Nov  6 10:16:16 2020(ƒ¥ﬁÊŸ.jp
j/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/v++_link_vadd.sw_emu_guidance.pb "Fri Nov  6 10:16:18 2020(—¿ﬁÊŸ.jg
a/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.sw_emu/vadd/logs/optraceViewer.html ""Fri Nov  6 10:16:18 2020(€¿ﬁÊŸ.r(
$0ff7929b-dc0f-4526-899e-8dd46bbf87b1