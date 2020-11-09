
–
v++_link_vadd.hw$e37765f9-6484-4024-9525-21166c8774252]U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2ZR/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw.xclbin.link_summary 2[U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw.xclbin.link_summary.pb U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw.xclbin.link_summary.pb"Fri Oct 30 11:46:40 2020(øÆ˜»◊.b∂
$97fca8be-f924-49e4-ae75-e4398c1ee31cv++N/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2‡
:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/design.cfg°platform=xilinx_u280_xdma_201920_3
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
"Fri Oct 30 11:46:40 2020(¡Æ˜»◊.r(
$97fca8be-f924-49e4-ae75-e4398c1ee31c"Fri Oct 30 11:46:50 2020(õˇ˜»◊.Zñ
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BR
Pvadd.hwE/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw.xclbinJº
KvaddA/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw.xoe/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Fri Oct 30 11:46:50 2020(µÇ¯»◊.b¥
$9a8763e4-bbbd-4cd8-bb51-85c7403ec79esystem_link"æsystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/sys_link*--xo*A/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw.xo*-keep*--config*U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*C/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int*
--temp_dir*H/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/sys_link"Fri Oct 30 11:46:50 2020(∂Ç¯»◊.r(
$9a8763e4-bbbd-4cd8-bb51-85c7403ec79e"Fri Oct 30 11:47:22 2020(¢˘˘»◊.r(
$9a8763e4-bbbd-4cd8-bb51-85c7403ec79e"Fri Oct 30 11:47:22 2020(≥˘˘»◊.bÛ
$d798cbd0-c33c-4702-b306-d11d8e896795cf2sw"‡cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*L/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/sdsl.dat*-rtd*M/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/xclbin_orig.xml*-o*U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/xclbin_orig.1.xml"Fri Oct 30 11:47:22 2020(¥˘˘»◊.r(
$d798cbd0-c33c-4702-b306-d11d8e896795"Fri Oct 30 11:47:26 2020(Èî˙»◊.r(
$d798cbd0-c33c-4702-b306-d11d8e896795"Fri Oct 30 11:47:26 2020(˜î˙»◊.bÃ
$bd7d12e8-a351-46d7-be5a-28c714ee4f03rtd2_system_diagram"≈rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*M/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*[/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/kernel_info.dat"Fri Oct 30 11:47:26 2020(˘î˙»◊.r(
$bd7d12e8-a351-46d7-be5a-28c714ee4f03"Fri Oct 30 11:47:27 2020(‡¢˙»◊.ja
[/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/systemDiagramModel.json !"Fri Oct 30 11:47:27 2020(á£˙»◊.r(
$bd7d12e8-a351-46d7-be5a-28c714ee4f03"Fri Oct 30 11:47:27 2020(†£˙»◊.b≠
$98475a1a-1bfa-435b-be56-7fb41167f7a9vpl"Òvpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*C/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int*	--log_dir*D/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/logs/link*--report_dir*G/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/reports/link*--config*Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/vplConfig.ini*-k*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*?/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link*	--no-info*
--tlog_dir*Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*O/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/run_link/vpl.pb*M/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/dr.bd.tcl"Fri Oct 30 11:47:27 2020(¢£˙»◊.r(
$98475a1a-1bfa-435b-be56-7fb41167f7a9"Fri Oct 30 11:47:29 2020(§∞˙»◊.bü	
$0a178a57-f57b-4837-ac92-cd9cd63a93f0vplN/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/link.steps.log"°/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/int/dr.bd.tcl "Fri Oct 30 11:47:29 2020(•∞˙»◊.r(
$0a178a57-f57b-4837-ac92-cd9cd63a93f0"Fri Oct 30 11:49:29 2020(˘ÿÅ…◊.b«
$62b03c73-25b3-412b-bebe-6288c84f9e95vivadoU/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Fri Oct 30 11:49:29 2020(˚ÿÅ…◊.r(
$62b03c73-25b3-412b-bebe-6288c84f9e95