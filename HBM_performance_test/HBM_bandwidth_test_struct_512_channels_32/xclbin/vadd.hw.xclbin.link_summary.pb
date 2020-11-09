
ï
v++_link_vadd.hw$9a4b4737-8479-480f-8da5-31059982b82e2tl/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2qi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.hw.xclbin.link_summary 2rl/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.hw.xclbin.link_summary.pb l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.hw.xclbin.link_summary.pb"Mon Nov  2 21:22:57 2020(√êÇ’ÿ.b‰
$c7dc6b83-f11a-4562-9b58-bc5ae151ee9bv++e/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2˜
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
"Mon Nov  2 21:22:57 2020(≈êÇ’ÿ.r(
$c7dc6b83-f11a-4562-9b58-bc5ae151ee9b"Mon Nov  2 21:23:08 2020(∫„Ç’ÿ.Z€
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Bi
gvadd.hw\/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.hw.xclbinJÍ
bvaddX/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.hw.xo|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Mon Nov  2 21:23:08 2020(†ÊÇ’ÿ.bÏ
$689a0d1c-ee80-4498-af6e-e9f22830f303system_link"ösystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/sys_link*--xo*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/xclbin/vadd.hw.xo*-keep*--config*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int*
--temp_dir*_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/sys_link"Mon Nov  2 21:23:08 2020(°ÊÇ’ÿ.r(
$689a0d1c-ee80-4498-af6e-e9f22830f303"Mon Nov  2 21:23:40 2020(‰€Ñ’ÿ.r(
$689a0d1c-ee80-4498-af6e-e9f22830f303"Mon Nov  2 21:23:40 2020(Ô€Ñ’ÿ.b´
$348163a2-26d1-44d6-899d-f9f606368f9acf2sw"ºcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/sdsl.dat*-rtd*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xclbin_orig.xml*-o*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xclbin_orig.1.xml"Mon Nov  2 21:23:40 2020(Ò€Ñ’ÿ.r(
$348163a2-26d1-44d6-899d-f9f606368f9a"Mon Nov  2 21:23:43 2020(ﬁ¯Ñ’ÿ.r(
$348163a2-26d1-44d6-899d-f9f606368f9a"Mon Nov  2 21:23:43 2020(Ï¯Ñ’ÿ.b÷
$d0b05912-1db7-4bbe-baf6-70a6f2fa24fartd2_system_diagram"ärtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/kernel_info.dat"Mon Nov  2 21:23:43 2020(Ì¯Ñ’ÿ.r(
$d0b05912-1db7-4bbe-baf6-70a6f2fa24fa"Mon Nov  2 21:23:45 2020(ÑÜÖ’ÿ.jx
r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModel.json !"Mon Nov  2 21:23:45 2020(íÜÖ’ÿ.r(
$d0b05912-1db7-4bbe-baf6-70a6f2fa24fa"Mon Nov  2 21:23:45 2020(§ÜÖ’ÿ.b˘
$e195e051-259b-4e75-9786-2080cb41892evpl"◊	vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int*	--log_dir*[/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/logs/link*--report_dir*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link*--config*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vplConfig.ini*-k*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*V/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link*	--no-info*
--tlog_dir*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/run_link/vpl.pb*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/dr.bd.tcl"Mon Nov  2 21:23:45 2020(•ÜÖ’ÿ.r(
$e195e051-259b-4e75-9786-2080cb41892e"Mon Nov  2 21:23:47 2020(◊ìÖ’ÿ.bú
$602cf608-ee2f-47ea-9062-023671417618vple/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/link.steps.log"á
/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/dr.bd.tcl "Mon Nov  2 21:23:47 2020(ŸìÖ’ÿ.r(
$602cf608-ee2f-47ea-9062-023671417618"Mon Nov  2 21:25:36 2020(·Êã’ÿ.bﬁ
$23ccfbe9-215c-4db6-b9ec-aeac3941622dvivadol/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Mon Nov  2 21:25:36 2020(‚Êã’ÿ.r(
$23ccfbe9-215c-4db6-b9ec-aeac3941622d"Tue Nov  3 00:14:46 2020(¢¨˜Ÿÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Tue Nov  3 01:27:59 2020(±πÉ‹ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Tue Nov  3 04:52:16 2020(ø»Ô·ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Tue Nov  3 05:38:42 2020(ÑÀô„ÿ.r(
$23ccfbe9-215c-4db6-b9ec-aeac3941622d"Tue Nov  3 05:38:44 2020(¯€ô„ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Tue Nov  3 05:38:44 2020(Ö‹ô„ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Tue Nov  3 05:38:44 2020(ã‹ô„ÿ.j
y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Tue Nov  3 05:38:44 2020(í‹ô„ÿ.jÇ
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Tue Nov  3 05:38:44 2020(ò‹ô„ÿ.j
y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Tue Nov  3 05:38:45 2020(˝·ô„ÿ.jû
ó/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ñ‚ô„ÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ä‚ô„ÿ.jö
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Tue Nov  3 05:38:45 2020(ë‚ô„ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ó‚ô„ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(û‚ô„ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(•‚ô„ÿ.jï
é/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(¨‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(≤‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(π‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ø‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(≈‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ã‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(”‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ÿ‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ﬂ‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Â‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ï‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ú‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(˘‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ˇ‚ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ü„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ç„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ì„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ô„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(†„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ß„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(≠„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon30_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(≥„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon31_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(∫„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon32_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(¡„ô„ÿ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon33_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(«„ô„ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Œ„ô„ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(‘„ô„ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(€„ô„ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(·„ô„ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ë„ô„ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ô„ô„ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ı„ô„ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(¸„ô„ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(É‰ô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(è‰ô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(¥‰ô„ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ω‰ô„ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(√‰ô„ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(…‰ô„ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(–‰ô„ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(÷‰ô„ÿ.jô
í/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(‹‰ô„ÿ.jì
å/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_slice0_12_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(„‰ô„ÿ.jî
ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_slice13_12_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ë‰ô„ÿ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_switch_2to1_12_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ó‰ô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(Ù‰ô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(˙‰ô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ÄÂô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ÜÂô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(åÂô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ìÂô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ôÂô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(˛Âô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ÑÊô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(äÊô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(êÊô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ñÊô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(úÊô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(»Êô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(œÊô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect29_28_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(’Êô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect30_29_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(€Êô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect31_30_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(‚Êô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect32_31_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ËÊô„ÿ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ÓÊô„ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ÙÊô„ÿ.jï
é/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(˙Êô„ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ÄÁô„ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ÜÁô„ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(åÁô„ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(ëÁô„ÿ.jö
ì/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_4_0_utilization_synth.rpt "Tue Nov  3 05:38:45 2020(◊Áô„ÿ.jß
†/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Tue Nov  3 05:38:46 2020(ùËô„ÿ.j¥
≠/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Tue Nov  3 05:38:46 2020(πÎô„ÿ.r(
$602cf608-ee2f-47ea-9062-023671417618"Tue Nov  3 05:38:46 2020(ıÎô„ÿ.r(
$e195e051-259b-4e75-9786-2080cb41892e"Tue Nov  3 05:38:46 2020(åÏô„ÿ.b6
$c0d46371-530e-437f-9e61-6adb5f900a9brtdgen"rtdgen"Tue Nov  3 05:38:46 2020(çÏô„ÿ.r(
$c0d46371-530e-437f-9e61-6adb5f900a9b"Tue Nov  3 05:38:46 2020(úÏô„ÿ.jp
j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Tue Nov  3 05:38:46 2020(ßÏô„ÿ.bÅ	
$f3529789-f0ae-48fa-adbe-80fbe8b64b46cf2sw"¶cf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xml*-a*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/address_map.xml*-sdsl*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/sdsl.dat*-xclbin*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.rtd*-o*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xml"Tue Nov  3 05:38:46 2020(®Ïô„ÿ.r(
$f3529789-f0ae-48fa-adbe-80fbe8b64b46"Tue Nov  3 05:38:50 2020(¯âö„ÿ.r(
$f3529789-f0ae-48fa-adbe-80fbe8b64b46"Tue Nov  3 05:38:50 2020(˝âö„ÿ.b 
$753df001-8e4d-41c2-ac1a-8ba728d76a08rtd2_system_diagram"Àrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*Ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Tue Nov  3 05:38:50 2020(ˇâö„ÿ.r(
$753df001-8e4d-41c2-ac1a-8ba728d76a08"Tue Nov  3 05:38:51 2020(òïö„ÿ.já
Ä/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Tue Nov  3 05:38:51 2020(£ïö„ÿ.r(
$753df001-8e4d-41c2-ac1a-8ba728d76a08"Tue Nov  3 05:38:51 2020(©ïö„ÿ.r(
$c0d46371-530e-437f-9e61-6adb5f900a9b"Tue Nov  3 05:38:51 2020(≤ïö„ÿ.b 
$e49821ed-6d07-4008-a434-6030ff64cb6f
xclbinutil"É
xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*ÉDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*tBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*l:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*r:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/appendSection.rtd*--add-section*ÉCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*ÄBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*|EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*îSYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xclbin"Tue Nov  3 05:38:51 2020(≥ïö„ÿ.r(
$e49821ed-6d07-4008-a434-6030ff64cb6f"Tue Nov  3 05:38:52 2020(Ωòö„ÿ.r(
$e49821ed-6d07-4008-a434-6030ff64cb6f"Tue Nov  3 05:38:52 2020(∆òö„ÿ.b®
$efcf347d-4c07-4bc8-b09f-e70a10c18a56xclbinutilinfo"˙xclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/link/int/vadd.hw.xclbin"Tue Nov  3 05:38:52 2020(«òö„ÿ.r(
$efcf347d-4c07-4bc8-b09f-e70a10c18a56"Tue Nov  3 05:38:52 2020(§úö„ÿ.r(
$efcf347d-4c07-4bc8-b09f-e70a10c18a56"Tue Nov  3 05:38:52 2020(ÿúö„ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Tue Nov  3 05:38:53 2020(‘ûö„ÿ.jÉ
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Tue Nov  3 05:38:53 2020(÷ûö„ÿ.jt
n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Tue Nov  3 05:39:49 2020(º’ù„ÿ.jo
i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_32/_x.hw/vadd/logs/optraceViewer.html ""Tue Nov  3 05:39:49 2020(∆’ù„ÿ.r(
$c7dc6b83-f11a-4562-9b58-bc5ae151ee9b