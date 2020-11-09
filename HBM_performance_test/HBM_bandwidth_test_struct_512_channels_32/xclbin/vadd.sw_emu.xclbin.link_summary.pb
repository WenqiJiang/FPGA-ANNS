
©
v++_link_vadd.sw_emu$e79b6b13-271b-40ce-9c29-85d350e7fbf72|t/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/.tlog/v++_link_vadd.sw_emu.xtl 2um/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.sw_emu.xclbin.link_summary 2vp/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.sw_emu.xclbin.link_summary.pb p/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.sw_emu.xclbin.link_summary.pb"Mon Nov  2 20:57:32 2020(‡ˇ§‘ÿ.bà
$de96aaad-1efa-4ba6-a26a-b38f78085a85v++i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/link.steps.log"≥/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t sw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.sw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.sw_emu.xclbin xclbin/vadd.sw_emu.xo *-t*sw_emu*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.sw_emu/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.sw_emu.xclbin*xclbin/vadd.sw_emu.xo2˜
Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/design.cfg°platform=xilinx_u280_xdma_201920_3
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
"Mon Nov  2 20:57:32 2020(‚ˇ§‘ÿ.r(
$de96aaad-1efa-4ba6-a26a-b38f78085a85"Mon Nov  2 20:57:40 2020(Æ¡•‘ÿ.ZÏ
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Bq
ovadd.sw_emu`/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.sw_emu.xclbinJÛ
fvadd\/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.sw_emu.xoÄ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Mon Nov  2 20:57:40 2020(Ï¡•‘ÿ.b¸
$64d27638-3807-4724-9afe-d49c60d3cb00	regiongenx/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_regiongen.log"¿/opt/Xilinx/Vitis/2019.2/bin/../runtime/bin/regiongen_new -v -m /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml -t alg -o xcl_top*-v*-m*n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*-t*alg*-o*xcl_top"Mon Nov  2 20:57:40 2020(Ó¡•‘ÿ.r(
$64d27638-3807-4724-9afe-d49c60d3cb00"Mon Nov  2 20:57:41 2020(Ö •‘ÿ.r(
$64d27638-3807-4724-9afe-d49c60d3cb00"Mon Nov  2 20:57:41 2020(î •‘ÿ.b≠
$526c4952-f21f-4d17-b7e5-721df5ec8facgccw/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd/vadd_kernel_gcc.log"é/opt/Xilinx/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin/gcc -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /usr/include/x86_64-linux-gnu -std=c++11 -g -I /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/src -g -fPIC -g -c -DHLS_STREAM_THREAD_SAFE -MD -MT obj/vadd.o -MP -MF obj/vadd.Cd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp -o obj/vadd.o*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*/usr/include/x86_64-linux-gnu*
-std=c++11*-g*-I*J/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/src*-g*-fPIC*-g*-c*-DHLS_STREAM_THREAD_SAFE*-MD*-MT*
obj/vadd.o*-MP*-MF*obj/vadd.Cd*Ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp*-o*
obj/vadd.o"Mon Nov  2 20:57:41 2020(ñ •‘ÿ.r(
$526c4952-f21f-4d17-b7e5-721df5ec8fac"Mon Nov  2 20:57:42 2020(¶“•‘ÿ.r(
$526c4952-f21f-4d17-b7e5-721df5ec8fac"Mon Nov  2 20:57:42 2020(Æ“•‘ÿ.b•
$b48dccd5-7848-4c02-87d2-25b6bf21787caro/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd/vadd_ar.log"û/opt/Xilinx/Vivado/2019.2/tps/lnx64/binutils-2.26/bin/ar -cr /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o*-cr*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a*n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o"Mon Nov  2 20:57:42 2020(Ø“•‘ÿ.r(
$b48dccd5-7848-4c02-87d2-25b6bf21787c"Mon Nov  2 20:57:42 2020(˙“•‘ÿ.r(
$b48dccd5-7848-4c02-87d2-25b6bf21787c"Mon Nov  2 20:57:42 2020(Ö”•‘ÿ.bÉ	
$a3abdd57-77e6-4b56-b109-481ac442cc7cg++z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_xcl_top_gpp.log"‰/usr/bin/env PATH=/usr/bin:/bin g++ -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -fPIC -g -DHLS_STREAM_THREAD_SAFE -std=c++11 -fpermissive -c -MD -MT obj/xcl_top.o -MP -MF obj/xcl_top.CXXd xcl_top.cpp -o obj/xcl_top.o*PATH=/usr/bin:/bin*g++*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*6/opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-fPIC*-g*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-fpermissive*-c*-MD*-MT*obj/xcl_top.o*-MP*-MF*obj/xcl_top.CXXd*xcl_top.cpp*-o*obj/xcl_top.o"Mon Nov  2 20:57:42 2020(á”•‘ÿ.r(
$a3abdd57-77e6-4b56-b109-481ac442cc7c"Mon Nov  2 20:57:44 2020(–›•‘ÿ.r(
$a3abdd57-77e6-4b56-b109-481ac442cc7c"Mon Nov  2 20:57:44 2020(÷›•‘ÿ.bÕ
$af6b75e1-8c95-4552-b3d1-1a8d1af7cf9ag++v/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_top_gpp.log"…/usr/bin/env PATH=/usr/bin:/bin g++ -fPIC -DHLS_STREAM_THREAD_SAFE -std=c++11 -Wall -shared -Wl,--whole-archive,-soname,vadd.sw_emu.so -o vadd.sw_emu.so vadd/vadd.csim_cu.a obj/xcl_top.o -Wl,--no-whole-archive -Wl,--as-needed -L /opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o -lhlsmathsim -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -lgmp -lmpfr -lIp_floating_point_v7_0_bitacc_cmodel -Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1 -lIp_xfft_v9_1_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0 -lgmp -lIp_fir_compiler_v7_2_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim -lhlsmc++-GCC46*PATH=/usr/bin:/bin*g++*-fPIC*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-Wall*-shared**-Wl,--whole-archive,-soname,vadd.sw_emu.so*-o*vadd.sw_emu.so*vadd/vadd.csim_cu.a*obj/xcl_top.o*-Wl,--no-whole-archive*-Wl,--as-needed*-L*,/opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o*-lhlsmathsim*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-lgmp*-lmpfr*&-lIp_floating_point_v7_0_bitacc_cmodel*@-Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1*-lIp_xfft_v9_1_bitacc_cmodel*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0*-lgmp*$-lIp_fir_compiler_v7_2_bitacc_cmodel*-L*//opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim*-lhlsmc++-GCC46"Mon Nov  2 20:57:44 2020(ÿ›•‘ÿ.r(
$af6b75e1-8c95-4552-b3d1-1a8d1af7cf9a"Mon Nov  2 20:57:44 2020(¶ﬁ•‘ÿ.r(
$af6b75e1-8c95-4552-b3d1-1a8d1af7cf9a"Mon Nov  2 20:57:44 2020(±ﬁ•‘ÿ.jx
r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd %"Mon Nov  2 20:57:44 2020(÷ﬁ•‘ÿ.bà
$29d3c62b-f8af-44ce-93f3-b2a812f93f6b
xclbinutily/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_xclbinutil.log"≤/opt/xilinx/xrt/bin/xclbinutil --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.so --force --key-value SYS:mode:sw_emu --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml --add-section DEBUG_DATA:RAW:/dev/null --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--add-section*{BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.so*--force*--key-value*SYS:mode:sw_emu*--add-section*ãCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd*--add-section*àBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd*--add-section*ÑEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*--add-section*DEBUG_DATA:RAW:/dev/null*--output*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Mon Nov  2 20:57:44 2020(◊ﬁ•‘ÿ.r(
$29d3c62b-f8af-44ce-93f3-b2a812f93f6b"Mon Nov  2 20:57:44 2020(˝ﬁ•‘ÿ.r(
$29d3c62b-f8af-44ce-93f3-b2a812f93f6b"Mon Nov  2 20:57:44 2020(Éﬂ•‘ÿ.b·
$661367b0-02a1-42d6-ad87-b82c6bfae810
xclbinutilv/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin.info"ß/opt/xilinx/xrt/bin/xclbinutil --quiet --info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--quiet*--info*--input*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Mon Nov  2 20:57:44 2020(Öﬂ•‘ÿ.r(
$661367b0-02a1-42d6-ad87-b82c6bfae810"Mon Nov  2 20:57:44 2020(•ﬂ•‘ÿ.r(
$661367b0-02a1-42d6-ad87-b82c6bfae810"Mon Nov  2 20:57:44 2020(”ﬂ•‘ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/reports/link/system_estimate_vadd.sw_emu.xtxt "Mon Nov  2 20:57:44 2020(§·•‘ÿ.jå
Ö/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/reports/link/v++_link_vadd.sw_emu_guidance.html "Mon Nov  2 20:57:44 2020(•·•‘ÿ.j|
v/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/v++_link_vadd.sw_emu_guidance.pb "Mon Nov  2 20:57:45 2020(ÅË•‘ÿ.js
m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.sw_emu/vadd/logs/optraceViewer.html ""Mon Nov  2 20:57:45 2020(âË•‘ÿ.r(
$de96aaad-1efa-4ba6-a26a-b38f78085a85