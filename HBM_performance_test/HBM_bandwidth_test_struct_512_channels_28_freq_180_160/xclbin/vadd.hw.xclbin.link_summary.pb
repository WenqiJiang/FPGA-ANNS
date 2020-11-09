
∞
v++_link_vadd.hw$f3850a79-c343-4afe-9d95-9168969ce05c2}u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2zr/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/xclbin/vadd.hw.xclbin.link_summary 2{u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/xclbin/vadd.hw.xclbin.link_summary.pb u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/xclbin/vadd.hw.xclbin.link_summary.pb"Wed Nov  4 09:08:24 2020(∂˝≤íŸ.b˛
$7591ddab-f69e-484f-a76b-662781ed36ddv++n/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2à
Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/design.cfg©platform=xilinx_u280_xdma_201920_3
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
"Wed Nov  4 09:08:24 2020(π˝≤íŸ.r(
$7591ddab-f69e-484f-a76b-662781ed36dd"Wed Nov  4 09:08:33 2020(¸≈≥íŸ.Z˜
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Br
pvadd.hwe/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/xclbin/vadd.hw.xclbinJ˝
kvadda/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/xclbin/vadd.hw.xoÖ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Wed Nov  4 09:08:34 2020(ú»≥íŸ.b¥	
$a552d340-4fad-4ed5-ab95-7844f43a25c9system_link"æsystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/sys_link*--xo*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/xclbin/vadd.hw.xo*-keep*--config*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int*
--temp_dir*h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/sys_link"Wed Nov  4 09:08:34 2020(ù»≥íŸ.r(
$a552d340-4fad-4ed5-ab95-7844f43a25c9"Wed Nov  4 09:08:58 2020(≠ÑµíŸ.r(
$a552d340-4fad-4ed5-ab95-7844f43a25c9"Wed Nov  4 09:08:58 2020(∏ÑµíŸ.bÛ
$537a8852-e5e1-471c-b1e1-6ca0d24fefcecf2sw"‡cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/sdsl.dat*-rtd*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.xml*-o*u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.1.xml"Wed Nov  4 09:08:58 2020(∫ÑµíŸ.r(
$537a8852-e5e1-471c-b1e1-6ca0d24fefce"Wed Nov  4 09:09:01 2020(ÛúµíŸ.r(
$537a8852-e5e1-471c-b1e1-6ca0d24fefce"Wed Nov  4 09:09:01 2020(˚úµíŸ.bå
$2b8e6859-054f-4d42-b45d-6bd737a6a264rtd2_system_diagram"•rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat"Wed Nov  4 09:09:01 2020(˝úµíŸ.r(
$2b8e6859-054f-4d42-b45d-6bd737a6a264"Wed Nov  4 09:09:02 2020(ä™µíŸ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModel.json !"Wed Nov  4 09:09:03 2020(¢™µíŸ.r(
$2b8e6859-054f-4d42-b45d-6bd737a6a264"Wed Nov  4 09:09:03 2020(≠™µíŸ.bÆ
$37f3a4d9-25f1-464e-b155-f5ae5b2812eavpl"±
vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 180 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*180*--profile_kernel*data:all:all:all:all*-s*--output_dir*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int*	--log_dir*d/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/logs/link*--report_dir*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link*--config*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vplConfig.ini*-k*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link*	--no-info*
--tlog_dir*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/run_link/vpl.pb*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/dr.bd.tcl"Wed Nov  4 09:09:03 2020(Ø™µíŸ.r(
$37f3a4d9-25f1-464e-b155-f5ae5b2812ea"Wed Nov  4 09:09:04 2020(ì∑µíŸ.bˇ
$0b9a074f-8c48-46ba-9bc2-f7f50316b67avpln/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/link.steps.log"·
/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 180 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/dr.bd.tcl "Wed Nov  4 09:09:04 2020(ï∑µíŸ.r(
$0b9a074f-8c48-46ba-9bc2-f7f50316b67a"Wed Nov  4 09:10:09 2020(≥ÆπíŸ.bÁ
$8a71d394-facd-4e35-abb5-1ee61c7c273cvivadou/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Wed Nov  4 09:10:09 2020(µÆπíŸ.r(
$8a71d394-facd-4e35-abb5-1ee61c7c273c"Wed Nov  4 11:14:46 2020(â·ÅñŸ.jò
ë/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Wed Nov  4 12:23:05 2020(∆˜˚óŸ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Wed Nov  4 15:46:21 2020(÷¶‰ùŸ.jó
ê/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Wed Nov  4 16:30:55 2020(Ó∆áüŸ.r(
$8a71d394-facd-4e35-abb5-1ee61c7c273c"Wed Nov  4 16:30:58 2020(ñŸáüŸ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Wed Nov  4 16:30:58 2020(ùŸáüŸ.jå
Ö/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Wed Nov  4 16:30:58 2020(£ŸáüŸ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Wed Nov  4 16:30:58 2020(©ŸáüŸ.jâ
Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Wed Nov  4 16:30:58 2020(∂ŸáüŸ.jâ
Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Wed Nov  4 16:30:59 2020(÷ﬂáüŸ.jù
ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(›ﬂáüŸ.jß
†/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(‚ﬂáüŸ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ÚﬂáüŸ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¯ﬂáüŸ.j£
ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Wed Nov  4 16:30:59 2020(˛ﬂáüŸ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Ñ‡áüŸ.jû
ó/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ã‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ê‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ñ‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(≠‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¥‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(∫‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¡‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(«‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Œ‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(‘‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(€‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(‚‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(È‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Ò‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¯‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(˛‡áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Ö·áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ã·áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ë·áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ò·áüŸ.j†
ô/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(û·áüŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(•·áüŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¨·áüŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(≥·áüŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(π·áüŸ.jü
ò/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¿·áüŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(»·áüŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Œ·áüŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(’·áüŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(€·áüŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(‚·áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Ë·áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Ó·áüŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Ù·áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect13_12_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(˚·áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Å‚áüŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(à‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(è‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ï‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(õ‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¢‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(®‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Æ‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(µ‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(º‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¬‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(…‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(–‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(÷‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(›‚áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(„‚áüŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect0_28_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(È‚áüŸ.j£
ú/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(‚áüŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(˜‚áüŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(˝‚áüŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Ñ„áüŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ã„áüŸ.j¢
õ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(í„áüŸ.j§
ù/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(ô„áüŸ.jû
ó/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(†„áüŸ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(¶„áüŸ.j´
§/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Wed Nov  4 16:30:59 2020(Û„áüŸ.j∞
©/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Wed Nov  4 16:30:59 2020(µ‰áüŸ.jΩ
∂/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Wed Nov  4 16:31:00 2020(„ÁáüŸ.r(
$0b9a074f-8c48-46ba-9bc2-f7f50316b67a"Wed Nov  4 16:31:00 2020(êËáüŸ.r(
$37f3a4d9-25f1-464e-b155-f5ae5b2812ea"Wed Nov  4 16:31:00 2020(°ËáüŸ.b6
$fa7d372e-1a7f-492a-ba38-a6aa4d90ee78rtdgen"rtdgen"Wed Nov  4 16:31:00 2020(£ËáüŸ.r(
$fa7d372e-1a7f-492a-ba38-a6aa4d90ee78"Wed Nov  4 16:31:00 2020(±ËáüŸ.jy
s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Wed Nov  4 16:31:00 2020(ΩËáüŸ.b€	
$dece8a61-03e2-4583-93e5-5dde22dbbe94cf2sw"”cf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xml*-a*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/address_map.xml*-sdsl*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/sdsl.dat*-xclbin*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.rtd*-o*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xml"Wed Nov  4 16:31:00 2020(æËáüŸ.r(
$dece8a61-03e2-4583-93e5-5dde22dbbe94"Wed Nov  4 16:31:03 2020(£ÑàüŸ.r(
$dece8a61-03e2-4583-93e5-5dde22dbbe94"Wed Nov  4 16:31:03 2020(©ÑàüŸ.bÅ
$08bf01b6-bf30-4ed6-9421-4148543f96a9rtd2_system_diagram"Êrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*à/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*â/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Wed Nov  4 16:31:03 2020(™ÑàüŸ.r(
$08bf01b6-bf30-4ed6-9421-4148543f96a9"Wed Nov  4 16:31:05 2020(ÖëàüŸ.jê
â/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Wed Nov  4 16:31:05 2020(êëàüŸ.r(
$08bf01b6-bf30-4ed6-9421-4148543f96a9"Wed Nov  4 16:31:05 2020(ïëàüŸ.r(
$fa7d372e-1a7f-492a-ba38-a6aa4d90ee78"Wed Nov  4 16:31:05 2020(ûëàüŸ.bÌ
$818368e6-2a3f-48ff-8e40-03d68141d816
xclbinutil"‘
xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*åDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*}BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*u:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*{:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/appendSection.rtd*--add-section*åCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*âBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*ÖEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*ùSYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xclbin"Wed Nov  4 16:31:05 2020(†ëàüŸ.r(
$818368e6-2a3f-48ff-8e40-03d68141d816"Wed Nov  4 16:31:05 2020(∂ìàüŸ.r(
$818368e6-2a3f-48ff-8e40-03d68141d816"Wed Nov  4 16:31:05 2020(æìàüŸ.bÃ
$b74fadc6-4c17-4617-85c7-69b77991edf3xclbinutilinfo"åxclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*w/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/link/int/vadd.hw.xclbin"Wed Nov  4 16:31:05 2020(øìàüŸ.r(
$b74fadc6-4c17-4617-85c7-69b77991edf3"Wed Nov  4 16:31:06 2020(ÑóàüŸ.r(
$b74fadc6-4c17-4617-85c7-69b77991edf3"Wed Nov  4 16:31:06 2020(∫óàüŸ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Wed Nov  4 16:31:06 2020(ÑöàüŸ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Wed Nov  4 16:31:06 2020(ÜöàüŸ.j}
w/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Wed Nov  4 16:31:52 2020(’ÅãüŸ.jx
r/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_180/_x.hw/vadd/logs/optraceViewer.html ""Wed Nov  4 16:31:52 2020(‡ÅãüŸ.r(
$7591ddab-f69e-484f-a76b-662781ed36dd