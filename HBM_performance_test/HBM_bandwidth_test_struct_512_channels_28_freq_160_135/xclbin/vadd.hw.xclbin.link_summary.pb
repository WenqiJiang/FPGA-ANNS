
∞
v++_link_vadd.hw$e47deafd-d71d-4158-8d62-6671cd7548f82}u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2zr/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/xclbin/vadd.hw.xclbin.link_summary 2{u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/xclbin/vadd.hw.xclbin.link_summary.pb u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/xclbin/vadd.hw.xclbin.link_summary.pb"Wed Nov  4 09:08:11 2020(¢ó≤íŸ.b˛
$082f32bb-4b68-49cb-adc1-f34291f04523v++n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2à
Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/design.cfg©platform=xilinx_u280_xdma_201920_3
profile_kernel=data:all:all:all
kernel_frequency=160
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
"Wed Nov  4 09:08:11 2020(§ó≤íŸ.r(
$082f32bb-4b68-49cb-adc1-f34291f04523"Wed Nov  4 09:08:20 2020(≈‡≤íŸ.Z˜
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Br
pvadd.hwe/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/xclbin/vadd.hw.xclbinJ˝
kvadda/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/xclbin/vadd.hw.xoÖ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Wed Nov  4 09:08:21 2020(«‚≤íŸ.b¥	
$1ef49841-6355-442a-858c-8428721bcd0bsystem_link"æsystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/sys_link*--xo*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/xclbin/vadd.hw.xo*-keep*--config*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int*
--temp_dir*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/sys_link"Wed Nov  4 09:08:21 2020(»‚≤íŸ.r(
$1ef49841-6355-442a-858c-8428721bcd0b"Wed Nov  4 09:08:46 2020(…ß¥íŸ.r(
$1ef49841-6355-442a-858c-8428721bcd0b"Wed Nov  4 09:08:46 2020(‘ß¥íŸ.bÛ
$e97fc456-b83f-4ba9-9049-d924a55d31bfcf2sw"‡cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/sdsl.dat*-rtd*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xclbin_orig.xml*-o*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xclbin_orig.1.xml"Wed Nov  4 09:08:46 2020(’ß¥íŸ.r(
$e97fc456-b83f-4ba9-9049-d924a55d31bf"Wed Nov  4 09:08:49 2020( ¿¥íŸ.r(
$e97fc456-b83f-4ba9-9049-d924a55d31bf"Wed Nov  4 09:08:49 2020(”¿¥íŸ.bå
$85a48a4d-6c84-46d6-9bb3-982008a94852rtd2_system_diagram"•rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/kernel_info.dat"Wed Nov  4 09:08:49 2020(’¿¥íŸ.r(
$85a48a4d-6c84-46d6-9bb3-982008a94852"Wed Nov  4 09:08:51 2020(´Õ¥íŸ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModel.json !"Wed Nov  4 09:08:51 2020(¡Õ¥íŸ.r(
$85a48a4d-6c84-46d6-9bb3-982008a94852"Wed Nov  4 09:08:51 2020(ÀÕ¥íŸ.bÆ
$5f033588-272a-4903-8137-38d524494315vpl"±
vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 160 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*160*--profile_kernel*data:all:all:all:all*-s*--output_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int*	--log_dir*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/logs/link*--report_dir*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link*--config*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vplConfig.ini*-k*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link*	--no-info*
--tlog_dir*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/run_link/vpl.pb*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/dr.bd.tcl"Wed Nov  4 09:08:51 2020(ÃÕ¥íŸ.r(
$5f033588-272a-4903-8137-38d524494315"Wed Nov  4 09:08:52 2020(§⁄¥íŸ.bˇ
$9bc841ba-19cc-4d0e-a324-27dde9c39c16vpln/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/link.steps.log"·
/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 160 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/dr.bd.tcl "Wed Nov  4 09:08:52 2020(•⁄¥íŸ.r(
$9bc841ba-19cc-4d0e-a324-27dde9c39c16"Wed Nov  4 09:09:55 2020(™∆∏íŸ.bÁ
$73d41c90-014d-4864-947c-27dabe3e3a74vivadou/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Wed Nov  4 09:09:55 2020(¨∆∏íŸ.r(
$73d41c90-014d-4864-947c-27dabe3e3a74"Wed Nov  4 11:12:33 2020(˙Õ˘ïŸ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Wed Nov  4 12:15:43 2020(¬˙‡óŸ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Wed Nov  4 15:00:10 2020(ôöªúŸ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Wed Nov  4 15:44:53 2020(ú˚ﬁùŸ.r(
$73d41c90-014d-4864-947c-27dabe3e3a74"Wed Nov  4 15:44:56 2020(˛êﬂùŸ.jâ
Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Wed Nov  4 15:44:56 2020(ÖëﬂùŸ.jå
Ö/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Wed Nov  4 15:44:56 2020(ìëﬂùŸ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Wed Nov  4 15:44:56 2020(öëﬂùŸ.jâ
Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Wed Nov  4 15:44:56 2020(†ëﬂùŸ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Wed Nov  4 15:44:56 2020(≠ëﬂùŸ.jù
ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(∑ëﬂùŸ.jß
†/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ΩëﬂùŸ.j£
ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Wed Nov  4 15:44:56 2020(ƒëﬂùŸ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÃëﬂùŸ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(“ëﬂùŸ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÿëﬂùŸ.jû
ó/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ﬁëﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÂëﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÎëﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÚëﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(¯ëﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(˛ëﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÑíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(äíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(êíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ñíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(úíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(¢íﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(©íﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ØíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(µíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ªíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(¡íﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(»íﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ŒíﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(‘íﬂùŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(⁄íﬂùŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(‡íﬂùŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÁíﬂùŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÌíﬂùŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÛíﬂùŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(˙íﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÅìﬂùŸ.jû
ó/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(áìﬂùŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(éìﬂùŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ïìﬂùŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(õìﬂùŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(¢ìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(®ìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÆìﬂùŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(µìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect13_12_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ºìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(√ìﬂùŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020( ìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(–ìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(◊ìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ﬁìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÂìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÏìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÚìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(¯ìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ˇìﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ÖîﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ãîﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ëîﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(óîﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(ùîﬂùŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Wed Nov  4 15:44:56 2020(§îﬂùŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect0_28_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(™îﬂùŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(∞îﬂùŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(∂îﬂùŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(ºîﬂùŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(¬îﬂùŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(»îﬂùŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(œîﬂùŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(’îﬂùŸ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(€îﬂùŸ.j´
§/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Wed Nov  4 15:44:57 2020(£ïﬂùŸ.j∞
©/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Wed Nov  4 15:44:57 2020(∆òﬂùŸ.jΩ
∂/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Wed Nov  4 15:44:57 2020(ÛõﬂùŸ.r(
$9bc841ba-19cc-4d0e-a324-27dde9c39c16"Wed Nov  4 15:44:58 2020(∑úﬂùŸ.r(
$5f033588-272a-4903-8137-38d524494315"Wed Nov  4 15:44:58 2020(–úﬂùŸ.b6
$0d7f74a2-afe2-49e8-a3d1-6f3f930b76c9rtdgen"rtdgen"Wed Nov  4 15:44:58 2020(—úﬂùŸ.r(
$0d7f74a2-afe2-49e8-a3d1-6f3f930b76c9"Wed Nov  4 15:44:58 2020(‡úﬂùŸ.jy
s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Wed Nov  4 15:44:58 2020(ÏúﬂùŸ.b€	
$46b20249-089d-4075-adec-f0bf5477d5a1cf2sw"”cf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xml*-a*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/address_map.xml*-sdsl*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/sdsl.dat*-xclbin*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.rtd*-o*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xml"Wed Nov  4 15:44:58 2020(ÌúﬂùŸ.r(
$46b20249-089d-4075-adec-f0bf5477d5a1"Wed Nov  4 15:45:01 2020(™πﬂùŸ.r(
$46b20249-089d-4075-adec-f0bf5477d5a1"Wed Nov  4 15:45:01 2020(∞πﬂùŸ.bÅ
$cd20f01d-75c4-4b48-92ae-24e075d43451rtd2_system_diagram"Êrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*à/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*â/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Wed Nov  4 15:45:01 2020(±πﬂùŸ.r(
$cd20f01d-75c4-4b48-92ae-24e075d43451"Wed Nov  4 15:45:03 2020(®∆ﬂùŸ.jê
â/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Wed Nov  4 15:45:03 2020(∫∆ﬂùŸ.r(
$cd20f01d-75c4-4b48-92ae-24e075d43451"Wed Nov  4 15:45:03 2020(¿∆ﬂùŸ.r(
$0d7f74a2-afe2-49e8-a3d1-6f3f930b76c9"Wed Nov  4 15:45:03 2020(…∆ﬂùŸ.bÌ
$b3df5b65-6407-4b0a-a787-f6389edfd1b0
xclbinutil"‘
xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*åDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*}BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*u:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*{:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/appendSection.rtd*--add-section*åCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*âBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*ÖEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*ùSYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xclbin"Wed Nov  4 15:45:03 2020( ∆ﬂùŸ.r(
$b3df5b65-6407-4b0a-a787-f6389edfd1b0"Wed Nov  4 15:45:03 2020(Á»ﬂùŸ.r(
$b3df5b65-6407-4b0a-a787-f6389edfd1b0"Wed Nov  4 15:45:03 2020(Ô»ﬂùŸ.bÃ
$b68fc2a8-ae9b-4f4a-a3ff-009e24c5d3c1xclbinutilinfo"åxclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*w/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/link/int/vadd.hw.xclbin"Wed Nov  4 15:45:03 2020(»ﬂùŸ.r(
$b68fc2a8-ae9b-4f4a-a3ff-009e24c5d3c1"Wed Nov  4 15:45:04 2020(ƒÃﬂùŸ.r(
$b68fc2a8-ae9b-4f4a-a3ff-009e24c5d3c1"Wed Nov  4 15:45:04 2020(¯ÃﬂùŸ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Wed Nov  4 15:45:04 2020(£œﬂùŸ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Wed Nov  4 15:45:04 2020(•œﬂùŸ.j}
w/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Wed Nov  4 15:45:09 2020(∂ÚﬂùŸ.jx
r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_160/_x.hw/vadd/logs/optraceViewer.html ""Wed Nov  4 15:45:09 2020(¡ÚﬂùŸ.r(
$082f32bb-4b68-49cb-adc1-f34291f04523