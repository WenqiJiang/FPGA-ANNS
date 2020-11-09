
ï
v++_link_vadd.hw$3c6aa26e-eab9-4cbb-8112-b951fef150e32tl/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2qi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/xclbin/vadd.hw.xclbin.link_summary 2rl/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/xclbin/vadd.hw.xclbin.link_summary.pb l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/xclbin/vadd.hw.xclbin.link_summary.pb"Mon Nov  2 21:51:47 2020(Œ€Î’ÿ.bÏ
$79fa1c8d-d3db-4c33-8680-c93f491f2fe9v++e/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2ˇ
Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/design.cfg©platform=xilinx_u280_xdma_201920_3
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
"Mon Nov  2 21:51:47 2020(–€Î’ÿ.r(
$79fa1c8d-d3db-4c33-8680-c93f491f2fe9"Mon Nov  2 21:51:57 2020(˙§Ï’ÿ.Z€
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Bi
gvadd.hw\/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/xclbin/vadd.hw.xclbinJÍ
bvaddX/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/xclbin/vadd.hw.xo|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Mon Nov  2 21:51:57 2020(ÅßÏ’ÿ.bÏ
$d95ad438-119e-40a3-b082-41c497e971e4system_link"ösystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/sys_link*--xo*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/xclbin/vadd.hw.xo*-keep*--config*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int*
--temp_dir*_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/sys_link"Mon Nov  2 21:51:57 2020(ÇßÏ’ÿ.r(
$d95ad438-119e-40a3-b082-41c497e971e4"Mon Nov  2 21:52:24 2020(Ø˜Ì’ÿ.r(
$d95ad438-119e-40a3-b082-41c497e971e4"Mon Nov  2 21:52:24 2020(∏˜Ì’ÿ.b´
$4fdeaea0-d56d-40cb-b8da-71d56784c44ccf2sw"ºcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/sdsl.dat*-rtd*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml*-o*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.1.xml"Mon Nov  2 21:52:24 2020(π˜Ì’ÿ.r(
$4fdeaea0-d56d-40cb-b8da-71d56784c44c"Mon Nov  2 21:52:29 2020(êüÓ’ÿ.r(
$4fdeaea0-d56d-40cb-b8da-71d56784c44c"Mon Nov  2 21:52:29 2020(òüÓ’ÿ.b÷
$a07500ac-30e5-4313-9553-bf07d474cbb9rtd2_system_diagram"ärtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat"Mon Nov  2 21:52:29 2020(ôüÓ’ÿ.r(
$a07500ac-30e5-4313-9553-bf07d474cbb9"Mon Nov  2 21:52:30 2020(ö¨Ó’ÿ.jx
r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json !"Mon Nov  2 21:52:30 2020(©¨Ó’ÿ.r(
$a07500ac-30e5-4313-9553-bf07d474cbb9"Mon Nov  2 21:52:30 2020(≥¨Ó’ÿ.b˘
$0e655683-73f8-4398-b337-a8efa43af4b6vpl"◊	vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int*	--log_dir*[/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/logs/link*--report_dir*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link*--config*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vplConfig.ini*-k*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*V/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link*	--no-info*
--tlog_dir*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/run_link/vpl.pb*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/dr.bd.tcl"Mon Nov  2 21:52:30 2020(µ¨Ó’ÿ.r(
$0e655683-73f8-4398-b337-a8efa43af4b6"Mon Nov  2 21:52:34 2020(’≈Ó’ÿ.bú
$ea021462-104e-427f-86e3-d23a87b770ecvple/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/link.steps.log"á
/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/dr.bd.tcl "Mon Nov  2 21:52:34 2020(◊≈Ó’ÿ.r(
$ea021462-104e-427f-86e3-d23a87b770ec"Mon Nov  2 21:53:33 2020(åïÚ’ÿ.bﬁ
$96d63c12-e6dd-427b-ad8f-357f64e7507avivadol/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Mon Nov  2 21:53:33 2020(éïÚ’ÿ.r(
$96d63c12-e6dd-427b-ad8f-357f64e7507a"Tue Nov  3 00:15:59 2020(§·˚Ÿÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Tue Nov  3 01:23:43 2020(ÎÈÛ€ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Tue Nov  3 03:43:00 2020(µÒÒﬂÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Tue Nov  3 04:17:17 2020(À∫Ô‡ÿ.r(
$96d63c12-e6dd-427b-ad8f-357f64e7507a"Tue Nov  3 04:17:18 2020(ﬂøÔ‡ÿ.j
y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Tue Nov  3 04:17:18 2020(ÏøÔ‡ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Tue Nov  3 04:17:18 2020(ÒøÔ‡ÿ.j
y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Tue Nov  3 04:17:18 2020(˜øÔ‡ÿ.jÇ
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Tue Nov  3 04:17:18 2020(˛øÔ‡ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Tue Nov  3 04:17:20 2020(⁄ÕÔ‡ÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(·ÕÔ‡ÿ.jû
ó/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÁÕÔ‡ÿ.jö
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Tue Nov  3 04:17:20 2020(ÏÕÔ‡ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÚÕÔ‡ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(¯ÕÔ‡ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(˛ÕÔ‡ÿ.jï
é/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÑŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(äŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(êŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ñŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(úŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(¢ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(®ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÆŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(¥ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(∫ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(¿ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(∆ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÃŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(“ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(◊ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(›ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(„ŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÈŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÔŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ıŒÔ‡ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(˚ŒÔ‡ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÅœÔ‡ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(áœÔ‡ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(éœÔ‡ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(îœÔ‡ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(öœÔ‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(†œÔ‡ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(¶œÔ‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(¨œÔ‡ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(≤œÔ‡ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect0_28_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(∑œÔ‡ÿ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ΩœÔ‡ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(√œÔ‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(…œÔ‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(œœÔ‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(’œÔ‡ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(€œÔ‡ÿ.jï
é/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(·œÔ‡ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÊœÔ‡ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÏœÔ‡ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ÚœÔ‡ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(¯œÔ‡ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(˛œÔ‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(Ñ–Ô‡ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ä–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ê–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ñ–Ô‡ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ú–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect13_12_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(£–Ô‡ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(©–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(Ø–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(µ–Ô‡ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(ª–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(¡–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(»–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(Œ–Ô‡ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(‘–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(⁄–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(‡–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(Ê–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(Ï–Ô‡ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Tue Nov  3 04:17:20 2020(∞—Ô‡ÿ.jß
†/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Tue Nov  3 04:17:20 2020(Ù—Ô‡ÿ.j¥
≠/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Tue Nov  3 04:17:21 2020(±’Ô‡ÿ.r(
$ea021462-104e-427f-86e3-d23a87b770ec"Tue Nov  3 04:17:21 2020(˘’Ô‡ÿ.r(
$0e655683-73f8-4398-b337-a8efa43af4b6"Tue Nov  3 04:17:21 2020(êÿÔ‡ÿ.b6
$fbb86b8d-3253-4c41-86f3-2300b2693087rtdgen"rtdgen"Tue Nov  3 04:17:21 2020(ëÿÔ‡ÿ.r(
$fbb86b8d-3253-4c41-86f3-2300b2693087"Tue Nov  3 04:17:21 2020(∫ÿÔ‡ÿ.jp
j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Tue Nov  3 04:17:21 2020(≈ÿÔ‡ÿ.bÅ	
$1ef0aa77-63c4-44b9-b9fc-d57514671a53cf2sw"¶cf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xml*-a*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/address_map.xml*-sdsl*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/sdsl.dat*-xclbin*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd*-o*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xml"Tue Nov  3 04:17:21 2020(«ÿÔ‡ÿ.r(
$1ef0aa77-63c4-44b9-b9fc-d57514671a53"Tue Nov  3 04:17:25 2020(æÙÔ‡ÿ.r(
$1ef0aa77-63c4-44b9-b9fc-d57514671a53"Tue Nov  3 04:17:25 2020(√ÙÔ‡ÿ.b 
$f6ff34fd-b093-4312-ac0d-fe04781ccb16rtd2_system_diagram"Àrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*Ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Tue Nov  3 04:17:25 2020(≈ÙÔ‡ÿ.r(
$f6ff34fd-b093-4312-ac0d-fe04781ccb16"Tue Nov  3 04:17:26 2020(§Ä‡ÿ.já
Ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Tue Nov  3 04:17:26 2020(µÄ‡ÿ.r(
$f6ff34fd-b093-4312-ac0d-fe04781ccb16"Tue Nov  3 04:17:26 2020(πÄ‡ÿ.r(
$fbb86b8d-3253-4c41-86f3-2300b2693087"Tue Nov  3 04:17:26 2020(¡Ä‡ÿ.b 
$b159a296-23bb-4ace-914f-b21638554600
xclbinutil"É
xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*ÉDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*tBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*l:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*r:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/appendSection.rtd*--add-section*ÉCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*ÄBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*|EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*îSYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin"Tue Nov  3 04:17:26 2020(¬Ä‡ÿ.r(
$b159a296-23bb-4ace-914f-b21638554600"Tue Nov  3 04:17:27 2020(ÈÇ‡ÿ.r(
$b159a296-23bb-4ace-914f-b21638554600"Tue Nov  3 04:17:27 2020(Ç‡ÿ.b®
$6fe5939f-a08c-4ca8-ad57-e757bc9b56b1xclbinutilinfo"˙xclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/link/int/vadd.hw.xclbin"Tue Nov  3 04:17:27 2020(ÚÇ‡ÿ.r(
$6fe5939f-a08c-4ca8-ad57-e757bc9b56b1"Tue Nov  3 04:17:27 2020(“Ü‡ÿ.r(
$6fe5939f-a08c-4ca8-ad57-e757bc9b56b1"Tue Nov  3 04:17:27 2020(Åá‡ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Tue Nov  3 04:17:27 2020(˚à‡ÿ.jÉ
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Tue Nov  3 04:17:27 2020(¸à‡ÿ.jt
n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Tue Nov  3 04:17:32 2020(Ã¨‡ÿ.jo
i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28/_x.hw/vadd/logs/optraceViewer.html ""Tue Nov  3 04:17:32 2020(’¨‡ÿ.r(
$79fa1c8d-d3db-4c33-8680-c93f491f2fe9