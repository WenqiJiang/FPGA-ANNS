
Œ
v++_link_vadd.hw$808eee68-6b0f-41ab-a3c5-2f2b53ee5ebe2Ü~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2É{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/xclbin/vadd.hw.xclbin.link_summary 2Ñ~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/xclbin/vadd.hw.xclbin.link_summary.pb ~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/xclbin/vadd.hw.xclbin.link_summary.pb"Wed Nov  4 22:03:42 2020(™ô ®Ÿ.bê
$67234f2e-6887-4a6a-80fe-f4435961f5a8v++w/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2ë
c/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/design.cfg©platform=xilinx_u280_xdma_201920_3
profile_kernel=data:all:all:all
kernel_frequency=200
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
"Wed Nov  4 22:03:42 2020(¨ô ®Ÿ.r(
$67234f2e-6887-4a6a-80fe-f4435961f5a8"Wed Nov  4 22:03:51 2020(’‡ ®Ÿ.Zí
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08B{
yvadd.hwn/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/xclbin/vadd.hw.xclbinJè
tvaddj/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/xclbin/vadd.hw.xoé/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Wed Nov  4 22:03:51 2020( ‚ ®Ÿ.b¸	
$8924e6e7-d356-4676-8fe4-349439bc2615system_link"‚system_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/sys_link*--xo*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/xclbin/vadd.hw.xo*-keep*--config*~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int*
--temp_dir*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/sys_link"Wed Nov  4 22:03:51 2020(À‚ ®Ÿ.r(
$8924e6e7-d356-4676-8fe4-349439bc2615"Wed Nov  4 22:04:16 2020(äßÃ®Ÿ.r(
$8924e6e7-d356-4676-8fe4-349439bc2615"Wed Nov  4 22:04:16 2020(íßÃ®Ÿ.bª
$63e1128c-5fc9-45fc-b309-8f6c90fd9574cf2sw"Ñcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/sdsl.dat*-rtd*v/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/xclbin_orig.xml*-o*~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/xclbin_orig.1.xml"Wed Nov  4 22:04:16 2020(îßÃ®Ÿ.r(
$63e1128c-5fc9-45fc-b309-8f6c90fd9574"Wed Nov  4 22:04:19 2020(¢øÃ®Ÿ.r(
$63e1128c-5fc9-45fc-b309-8f6c90fd9574"Wed Nov  4 22:04:19 2020(™øÃ®Ÿ.b√
$31e86d3b-09ea-4d94-ad9c-6c187b2ca1b2rtd2_system_diagram"¿rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*v/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/kernel_info.dat"Wed Nov  4 22:04:19 2020(¨øÃ®Ÿ.r(
$31e86d3b-09ea-4d94-ad9c-6c187b2ca1b2"Wed Nov  4 22:04:21 2020(†ÃÃ®Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/systemDiagramModel.json !"Wed Nov  4 22:04:21 2020(≠ÃÃ®Ÿ.r(
$31e86d3b-09ea-4d94-ad9c-6c187b2ca1b2"Wed Nov  4 22:04:21 2020(∏ÃÃ®Ÿ.b‚
$afe7640b-7027-4a0a-ae66-3ce97ab40b80vpl"ãvpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 200 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*200*--profile_kernel*data:all:all:all:all*-s*--output_dir*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int*	--log_dir*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/logs/link*--report_dir*p/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/reports/link*--config*z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/vplConfig.ini*-k*|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link*	--no-info*
--tlog_dir*z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*è/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*x/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/run_link/vpl.pb*v/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/dr.bd.tcl"Wed Nov  4 22:04:21 2020(πÃÃ®Ÿ.r(
$afe7640b-7027-4a0a-ae66-3ce97ab40b80"Wed Nov  4 22:04:23 2020(ÚÿÃ®Ÿ.b‚
$afb9c1ea-2846-4554-aed5-852f0583227avplw/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/link.steps.log"ª/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 200 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/int/dr.bd.tcl "Wed Nov  4 22:04:23 2020(ÙÿÃ®Ÿ.r(
$afb9c1ea-2846-4554-aed5-852f0583227a"Wed Nov  4 22:05:18 2020( ã–®Ÿ.b
$75773175-52ef-49d6-bb77-327de173af1cvivado~/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_PE_512_channels_28_freq_200/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Wed Nov  4 22:05:18 2020(Ãã–®Ÿ.r(
$75773175-52ef-49d6-bb77-327de173af1c