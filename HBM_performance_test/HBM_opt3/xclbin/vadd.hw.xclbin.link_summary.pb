
Ò
v++_link_vadd.hw$694a467e-0294-459b-bd51-7233df9665812h`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2e]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.hw.xclbin.link_summary 2f`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.hw.xclbin.link_summary.pb `/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.hw.xclbin.link_summary.pb"Fri Nov  6 11:55:48 2020(πÚ ÈŸ.b‘
$46be5e37-8968-41b1-a6f8-4160edf07ddbv++Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2Û
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
"Fri Nov  6 11:55:48 2020(ªÚ ÈŸ.r(
$46be5e37-8968-41b1-a6f8-4160edf07ddb"Fri Nov  6 11:56:04 2020(ÕÚÀÈŸ.Z∑
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08B]
[vadd.hwP/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.hw.xclbinJ“
VvaddL/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.hw.xop/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Fri Nov  6 11:56:06 2020(≤˝ÀÈŸ.bå
$e059df72-df98-4b09-96f5-ebe7822bdbf0system_link"Ísystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/sys_link*--xo*L/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/xclbin/vadd.hw.xo*-keep*--config*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*N/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int*
--temp_dir*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/sys_link"Fri Nov  6 11:56:06 2020(≥˝ÀÈŸ.r(
$e059df72-df98-4b09-96f5-ebe7822bdbf0"Fri Nov  6 11:56:41 2020(∑êŒÈŸ.r(
$e059df72-df98-4b09-96f5-ebe7822bdbf0"Fri Nov  6 11:56:41 2020(ÜëŒÈŸ.bÀ
$e0b456f4-4323-46e9-845a-8ae92f0db577cf2sw"åcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/sdsl.dat*-rtd*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/xclbin_orig.xml*-o*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/xclbin_orig.1.xml"Fri Nov  6 11:56:41 2020(áëŒÈŸ.r(
$e0b456f4-4323-46e9-845a-8ae92f0db577"Fri Nov  6 11:56:44 2020(ñ´ŒÈŸ.r(
$e0b456f4-4323-46e9-845a-8ae92f0db577"Fri Nov  6 11:56:44 2020(ù´ŒÈŸ.bé
$6f679b6d-3f57-4b5e-a6c0-283316aa2b8crtd2_system_diagram"Êrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/kernel_info.dat"Fri Nov  6 11:56:44 2020(ü´ŒÈŸ.r(
$6f679b6d-3f57-4b5e-a6c0-283316aa2b8c"Fri Nov  6 11:56:47 2020(·ºŒÈŸ.jl
f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/systemDiagramModel.json !"Fri Nov  6 11:56:47 2020(¯ºŒÈŸ.r(
$6f679b6d-3f57-4b5e-a6c0-283316aa2b8c"Fri Nov  6 11:56:47 2020(ÉΩŒÈŸ.bâ
$228b57a5-5f6c-4a6e-b94c-a870e378bffavpl"ﬂvpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 180 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*180*--profile_kernel*data:all:all:all:all*-s*--output_dir*N/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int*	--log_dir*O/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/logs/link*--report_dir*R/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/reports/link*--config*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/vplConfig.ini*-k*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*J/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link*	--no-info*
--tlog_dir*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/run_link/vpl.pb*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/dr.bd.tcl"Fri Nov  6 11:56:47 2020(ÖΩŒÈŸ.r(
$228b57a5-5f6c-4a6e-b94c-a870e378bffa"Fri Nov  6 11:56:48 2020(ì ŒÈŸ.bò

$7503a408-4034-416f-8c77-94d45e964f1fvplY/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/link.steps.log"è	/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 180 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/int/dr.bd.tcl "Fri Nov  6 11:56:48 2020(î ŒÈŸ.r(
$7503a408-4034-416f-8c77-94d45e964f1f"Fri Nov  6 11:57:44 2020(ÅÄ“ÈŸ.b“
$83bf08c1-99d8-4c07-8814-a96ba9a167a5vivado`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Fri Nov  6 11:57:44 2020(ÉÄ“ÈŸ.r(
$83bf08c1-99d8-4c07-8814-a96ba9a167a5"Fri Nov  6 16:11:51 2020(øÀÙŸ.jÇ
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Fri Nov  6 19:01:44 2020(ï◊‚ıŸ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Sat Nov  7 01:11:26 2020(≥ ¨Ä⁄.r(
$83bf08c1-99d8-4c07-8814-a96ba9a167a5"Sat Nov  7 01:11:34 2020(Ωå≠Ä⁄.r(
$7503a408-4034-416f-8c77-94d45e964f1f"Sat Nov  7 01:11:35 2020(‹ç≠Ä⁄.r(
$228b57a5-5f6c-4a6e-b94c-a870e378bffa"Sat Nov  7 01:11:35 2020(ƒê≠Ä⁄.jw
q/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Sat Nov  7 01:11:35 2020(∆ê≠Ä⁄.jh
b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Sat Nov  7 01:11:56 2020(ó≥ÆÄ⁄.jc
]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt3/_x.hw/vadd/logs/optraceViewer.html ""Sat Nov  7 01:11:56 2020(†≥ÆÄ⁄.r(
$46be5e37-8968-41b1-a6f8-4160edf07ddb