
≠
v++_link_vadd.hw$d91f3b8e-1bac-4d1c-a00a-d525267308032|t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2yq/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/xclbin/vadd.hw.xclbin.link_summary 2zt/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/xclbin/vadd.hw.xclbin.link_summary.pb t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/xclbin/vadd.hw.xclbin.link_summary.pb"Mon Nov  9 08:50:06 2020(⁄èÔﬂ⁄.b¸
$48a07b97-47b8-435d-a9c6-e6fbef202af7v++m/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2á
Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/design.cfg©platform=xilinx_u280_xdma_201920_3
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
"Mon Nov  9 08:50:06 2020(›èÔﬂ⁄.r(
$48a07b97-47b8-435d-a9c6-e6fbef202af7"Mon Nov  9 08:50:22 2020(™íﬂ⁄.ZÙ
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Bq
ovadd.hwd/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/xclbin/vadd.hw.xclbinJ˚
jvadd`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/xclbin/vadd.hw.xoÑ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Mon Nov  9 08:50:23 2020(˛ôﬂ⁄.b¨	
$0f6ffde6-eab9-4841-903a-04da4f1b8ffbsystem_link"∫system_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/sys_link*--xo*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/xclbin/vadd.hw.xo*-keep*--config*t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int*
--temp_dir*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/sys_link"Mon Nov  9 08:50:23 2020(ˇôﬂ⁄.r(
$0f6ffde6-eab9-4841-903a-04da4f1b8ffb"Mon Nov  9 08:51:11 2020(ÏãÛﬂ⁄.r(
$0f6ffde6-eab9-4841-903a-04da4f1b8ffb"Mon Nov  9 08:51:11 2020(ˇãÛﬂ⁄.bÎ
$4c90bd1d-bc53-4f83-83c6-f1143a406263cf2sw"‹cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*k/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/sdsl.dat*-rtd*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/xclbin_orig.xml*-o*t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/xclbin_orig.1.xml"Mon Nov  9 08:51:11 2020(ÅåÛﬂ⁄.r(
$4c90bd1d-bc53-4f83-83c6-f1143a406263"Mon Nov  9 08:51:14 2020(˛ßÛﬂ⁄.r(
$4c90bd1d-bc53-4f83-83c6-f1143a406263"Mon Nov  9 08:51:14 2020(Ü®Ûﬂ⁄.bÜ
$74cbfaf9-411f-4e36-a03f-750006062f45rtd2_system_diagram"¢rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/kernel_info.dat"Mon Nov  9 08:51:14 2020(à®Ûﬂ⁄.r(
$74cbfaf9-411f-4e36-a03f-750006062f45"Mon Nov  9 08:51:16 2020(ß∑Ûﬂ⁄.jÄ
z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/systemDiagramModel.json !"Mon Nov  9 08:51:16 2020(π∑Ûﬂ⁄.r(
$74cbfaf9-411f-4e36-a03f-750006062f45"Mon Nov  9 08:51:16 2020(¬∑Ûﬂ⁄.bö
$bd8561d4-2c0a-4312-b14a-6831e6e605b8vpl"ß
vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int*	--log_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/logs/link*--report_dir*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/reports/link*--config*p/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/vplConfig.ini*-k*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link*	--no-info*
--tlog_dir*p/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*Ö/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*n/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/run_link/vpl.pb*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/dr.bd.tcl"Mon Nov  9 08:51:16 2020(ƒ∑Ûﬂ⁄.r(
$bd8561d4-2c0a-4312-b14a-6831e6e605b8"Mon Nov  9 08:51:18 2020(ùƒÛﬂ⁄.bÙ
$6293836e-0835-44bf-baf4-ba63b200a7f4vplm/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/link.steps.log"◊
/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/int/dr.bd.tcl "Mon Nov  9 08:51:18 2020(üƒÛﬂ⁄.r(
$6293836e-0835-44bf-baf4-ba63b200a7f4"Mon Nov  9 08:52:41 2020(™—¯ﬂ⁄.bÊ
$21306bdd-8db3-4dce-b0d4-77d93425227bvivadot/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all_no_pragma/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Mon Nov  9 08:52:41 2020(≠—¯ﬂ⁄.r(
$21306bdd-8db3-4dce-b0d4-77d93425227b