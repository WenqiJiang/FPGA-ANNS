
è
v++_link_vadd.hw$a97b5fac-fc63-44df-bfd6-34658ae430a52rj/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2og/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/xclbin/vadd.hw.xclbin.link_summary 2pj/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/xclbin/vadd.hw.xclbin.link_summary.pb j/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/xclbin/vadd.hw.xclbin.link_summary.pb"Sun Nov  8 22:21:39 2020(ﬁ◊ÒÕ⁄.bË
$d9d7aafc-1775-4772-8394-58dda97ba681v++c/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2˝
O/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/design.cfg©platform=xilinx_u280_xdma_201920_3
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
"Sun Nov  8 22:21:39 2020(‡◊ÒÕ⁄.r(
$d9d7aafc-1775-4772-8394-58dda97ba681"Sun Nov  8 22:21:55 2020(ç‘ÚÕ⁄.Z’
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Bg
evadd.hwZ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/xclbin/vadd.hw.xclbinJÊ
`vaddV/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/xclbin/vadd.hw.xoz/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Sun Nov  8 22:21:56 2020(∑ﬁÚÕ⁄.b‹
$6ae5140a-47ed-4799-a69b-1f6828e19c31system_link"ísystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/sys_link*--xo*V/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/xclbin/vadd.hw.xo*-keep*--config*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int*
--temp_dir*]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/sys_link"Sun Nov  8 22:21:56 2020(∏ﬁÚÕ⁄.r(
$6ae5140a-47ed-4799-a69b-1f6828e19c31"Sun Nov  8 22:22:42 2020(Ñ¬ıÕ⁄.r(
$6ae5140a-47ed-4799-a69b-1f6828e19c31"Sun Nov  8 22:22:42 2020(ò¬ıÕ⁄.bõ
$a2c82566-4210-4682-b76e-bd550488ad87cf2sw"¥cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/sdsl.dat*-rtd*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/xclbin_orig.xml*-o*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/xclbin_orig.1.xml"Sun Nov  8 22:22:42 2020(ô¬ıÕ⁄.r(
$a2c82566-4210-4682-b76e-bd550488ad87"Sun Nov  8 22:22:45 2020(—‡ıÕ⁄.r(
$a2c82566-4210-4682-b76e-bd550488ad87"Sun Nov  8 22:22:45 2020(›‡ıÕ⁄.b 
$2f86783e-2f52-45a8-a18a-cc33f9032587rtd2_system_diagram"Ñrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*p/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/kernel_info.dat"Sun Nov  8 22:22:45 2020(ﬂ‡ıÕ⁄.r(
$2f86783e-2f52-45a8-a18a-cc33f9032587"Sun Nov  8 22:22:47 2020(ÅıÕ⁄.jv
p/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/systemDiagramModel.json !"Sun Nov  8 22:22:47 2020(òıÕ⁄.r(
$2f86783e-2f52-45a8-a18a-cc33f9032587"Sun Nov  8 22:22:47 2020(°ıÕ⁄.b—
$c8220f64-e75c-4756-93e5-454732d6b5d4vpl"√	vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int*	--log_dir*Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/logs/link*--report_dir*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/reports/link*--config*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/vplConfig.ini*-k*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*T/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link*	--no-info*
--tlog_dir*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/run_link/vpl.pb*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/dr.bd.tcl"Sun Nov  8 22:22:47 2020(£ıÕ⁄.r(
$c8220f64-e75c-4756-93e5-454732d6b5d4"Sun Nov  8 22:22:49 2020(é˝ıÕ⁄.bÜ
$65cd79e5-c085-4555-88a2-3ecd1e0ee193vplc/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/link.steps.log"Û	/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/int/dr.bd.tcl "Sun Nov  8 22:22:49 2020(è˝ıÕ⁄.r(
$65cd79e5-c085-4555-88a2-3ecd1e0ee193"Sun Nov  8 22:24:03 2020(™º˙Õ⁄.b‹
$5c56fe11-455a-414e-adde-eaa980902d8dvivadoj/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_struct_add_all/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Sun Nov  8 22:24:03 2020(¨º˙Õ⁄.r(
$5c56fe11-455a-414e-adde-eaa980902d8d