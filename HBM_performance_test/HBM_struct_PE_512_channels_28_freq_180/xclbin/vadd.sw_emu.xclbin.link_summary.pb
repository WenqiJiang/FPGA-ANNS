
‰
v++_link_vadd.sw_emu$0198a1ef-22cb-4f00-84b9-25d6dcccbfbf2èÜ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/.tlog/v++_link_vadd.sw_emu.xtl 2á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.sw_emu.xclbin.link_summary 2âÇ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.sw_emu.xclbin.link_summary.pb Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.sw_emu.xclbin.link_summary.pb"Wed Nov  4 21:21:29 2020(≥ÕØßŸ.b¥
$a0a9ff3a-547b-4606-89ff-aec2a0ae890bv++{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/link.steps.log"≥/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t sw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.sw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.sw_emu.xclbin xclbin/vadd.sw_emu.xo *-t*sw_emu*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.sw_emu/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.sw_emu.xclbin*xclbin/vadd.sw_emu.xo2ë
c/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/design.cfg©platform=xilinx_u280_xdma_201920_3
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
"Wed Nov  4 21:21:29 2020(µÕØßŸ.r(
$a0a9ff3a-547b-4606-89ff-aec2a0ae890b"Wed Nov  4 21:21:37 2020(ßå∞ßŸ.Z§
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BÑ
Åvadd.sw_emur/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.sw_emu.xclbinJó
xvaddn/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/xclbin/vadd.sw_emu.xoí/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Wed Nov  4 21:21:37 2020(Èå∞ßŸ.b¥
$8c374d23-ee6d-4dec-b15e-8991480da0e2	regiongenä/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_regiongen.log"“/opt/Xilinx/Vitis/2019.2/bin/../runtime/bin/regiongen_new -v -m /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml -t alg -o xcl_top*-v*-m*Ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*-t*alg*-o*xcl_top"Wed Nov  4 21:21:37 2020(Îå∞ßŸ.r(
$8c374d23-ee6d-4dec-b15e-8991480da0e2"Wed Nov  4 21:21:38 2020(–î∞ßŸ.r(
$8c374d23-ee6d-4dec-b15e-8991480da0e2"Wed Nov  4 21:21:38 2020(›î∞ßŸ.bà
$82df5449-b22b-4f0a-bd88-9e3ea1831893gccâ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd/vadd_kernel_gcc.log"≤/opt/Xilinx/Vivado/2019.2/tps/lnx64/gcc-6.2.0/bin/gcc -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /usr/include/x86_64-linux-gnu -std=c++11 -g -I /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/src -g -fPIC -g -c -DHLS_STREAM_THREAD_SAFE -MD -MT obj/vadd.o -MP -MF obj/vadd.Cd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp -o obj/vadd.o*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*/usr/include/x86_64-linux-gnu*
-std=c++11*-g*-I*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/src*-g*-fPIC*-g*-c*-DHLS_STREAM_THREAD_SAFE*-MD*-MT*
obj/vadd.o*-MP*-MF*obj/vadd.Cd*í/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cpp*-o*
obj/vadd.o"Wed Nov  4 21:21:38 2020(‡î∞ßŸ.r(
$82df5449-b22b-4f0a-bd88-9e3ea1831893"Wed Nov  4 21:21:39 2020(Ñù∞ßŸ.r(
$82df5449-b22b-4f0a-bd88-9e3ea1831893"Wed Nov  4 21:21:39 2020(äù∞ßŸ.bÇ
$910ca663-f6cb-4c80-aabc-b8b2e1893474arÅ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd/vadd_ar.log"¬/opt/Xilinx/Vivado/2019.2/tps/lnx64/binutils-2.26/bin/ar -cr /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o*-cr*Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd/vadd.csim_cu.a*Ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd/obj/vadd.o"Wed Nov  4 21:21:39 2020(åù∞ßŸ.r(
$910ca663-f6cb-4c80-aabc-b8b2e1893474"Wed Nov  4 21:21:39 2020(˚û∞ßŸ.r(
$910ca663-f6cb-4c80-aabc-b8b2e1893474"Wed Nov  4 21:21:39 2020(áü∞ßŸ.bñ	
$564b3c4b-b42f-44da-b092-96acaf077e81g++å/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_xcl_top_gpp.log"‰/usr/bin/env PATH=/usr/bin:/bin g++ -I . -I /opt/Xilinx/Vivado/2019.2/bin/../include -I /opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl -I /opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include -I /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include -fPIC -g -DHLS_STREAM_THREAD_SAFE -std=c++11 -fpermissive -c -MD -MT obj/xcl_top.o -MP -MF obj/xcl_top.CXXd xcl_top.cpp -o obj/xcl_top.o*PATH=/usr/bin:/bin*g++*-I*.*-I*(/opt/Xilinx/Vivado/2019.2/bin/../include*-I*C/opt/Xilinx/Vivado/2019.2/bin/../common/technology/autopilot/opencl*-I*B/opt/Xilinx/Vitis/2019.2/bin/../common/technology/autopilot/opencl*-I*6/opt/Xilinx/Vitis/2019.2/bin/../data/emulation/include*-I*</opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/auto_cc/include*-fPIC*-g*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-fpermissive*-c*-MD*-MT*obj/xcl_top.o*-MP*-MF*obj/xcl_top.CXXd*xcl_top.cpp*-o*obj/xcl_top.o"Wed Nov  4 21:21:39 2020(âü∞ßŸ.r(
$564b3c4b-b42f-44da-b092-96acaf077e81"Wed Nov  4 21:21:40 2020(´¶∞ßŸ.r(
$564b3c4b-b42f-44da-b092-96acaf077e81"Wed Nov  4 21:21:40 2020(±¶∞ßŸ.b‡
$260e0f91-6147-4a86-b421-5495a191cde8g++à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_top_gpp.log"…/usr/bin/env PATH=/usr/bin:/bin g++ -fPIC -DHLS_STREAM_THREAD_SAFE -std=c++11 -Wall -shared -Wl,--whole-archive,-soname,vadd.sw_emu.so -o vadd.sw_emu.so vadd/vadd.csim_cu.a obj/xcl_top.o -Wl,--no-whole-archive -Wl,--as-needed -L /opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o -lhlsmathsim -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -lgmp -lmpfr -lIp_floating_point_v7_0_bitacc_cmodel -Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0 -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1 -lIp_xfft_v9_1_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0 -lgmp -lIp_fir_compiler_v7_2_bitacc_cmodel -L /opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim -lhlsmc++-GCC46*PATH=/usr/bin:/bin*g++*-fPIC*-DHLS_STREAM_THREAD_SAFE*
-std=c++11*-Wall*-shared**-Wl,--whole-archive,-soname,vadd.sw_emu.so*-o*vadd.sw_emu.so*vadd/vadd.csim_cu.a*obj/xcl_top.o*-Wl,--no-whole-archive*-Wl,--as-needed*-L*,/opt/Xilinx/Vivado/2019.2/bin/../lib/lnx64.o*-lhlsmathsim*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-lgmp*-lmpfr*&-lIp_floating_point_v7_0_bitacc_cmodel*@-Wl,-rpath,/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fpo_v7_0*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fft_v9_1*-lIp_xfft_v9_1_bitacc_cmodel*-L*5/opt/Xilinx/Vivado/2019.2/bin/../lnx64/tools/fir_v7_0*-lgmp*$-lIp_fir_compiler_v7_2_bitacc_cmodel*-L*//opt/Xilinx/Vivado/2019.2/bin/../lnx64/lib/csim*-lhlsmc++-GCC46"Wed Nov  4 21:21:40 2020(≥¶∞ßŸ.r(
$260e0f91-6147-4a86-b421-5495a191cde8"Wed Nov  4 21:21:40 2020(Üß∞ßŸ.r(
$260e0f91-6147-4a86-b421-5495a191cde8"Wed Nov  4 21:21:40 2020(êß∞ßŸ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd %"Wed Nov  4 21:21:40 2020(¥ß∞ßŸ.b—
$e6bf8238-92d3-484e-8f9a-70fd48c4e3c9
xclbinutilã/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_xclbinutil.log"å/opt/xilinx/xrt/bin/xclbinutil --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.so --force --key-value SYS:mode:sw_emu --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml --add-section DEBUG_DATA:RAW:/dev/null --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--add-section*çBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.so*--force*--key-value*SYS:mode:sw_emu*--add-section*ùCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_xml.rtd*--add-section*öBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu_build.rtd*--add-section*ñEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xml*--add-section*DEBUG_DATA:RAW:/dev/null*--output*É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Wed Nov  4 21:21:40 2020(∂ß∞ßŸ.r(
$e6bf8238-92d3-484e-8f9a-70fd48c4e3c9"Wed Nov  4 21:21:40 2020(Ÿß∞ßŸ.r(
$e6bf8238-92d3-484e-8f9a-70fd48c4e3c9"Wed Nov  4 21:21:40 2020(ﬁß∞ßŸ.bô
$ac203392-08c6-4ec7-97af-9a7887f0f894
xclbinutilà/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin.info"π/opt/xilinx/xrt/bin/xclbinutil --quiet --info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin*--quiet*--info*--input*É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/link/int/vadd.sw_emu.xclbin"Wed Nov  4 21:21:40 2020(‡ß∞ßŸ.r(
$ac203392-08c6-4ec7-97af-9a7887f0f894"Wed Nov  4 21:21:40 2020(˛ß∞ßŸ.r(
$ac203392-08c6-4ec7-97af-9a7887f0f894"Wed Nov  4 21:21:41 2020(®®∞ßŸ.jú
ï/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/reports/link/system_estimate_vadd.sw_emu.xtxt "Wed Nov  4 21:21:41 2020(‹©∞ßŸ.jû
ó/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/reports/link/v++_link_vadd.sw_emu_guidance.html "Wed Nov  4 21:21:41 2020(›©∞ßŸ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/v++_link_vadd.sw_emu_guidance.pb "Wed Nov  4 21:21:41 2020(¿≠∞ßŸ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_180/_x.sw_emu/vadd/logs/optraceViewer.html ""Wed Nov  4 21:21:41 2020(»≠∞ßŸ.r(
$a0a9ff3a-547b-4606-89ff-aec2a0ae890b