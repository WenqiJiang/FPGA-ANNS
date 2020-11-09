
Ò
v++_link_vadd.hw$053fb663-dc8a-4705-ac1a-0521ba64f3e52h`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2e]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/xclbin/vadd.hw.xclbin.link_summary 2f`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/xclbin/vadd.hw.xclbin.link_summary.pb `/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/xclbin/vadd.hw.xclbin.link_summary.pb"Thu Nov  5 09:27:27 2020(‹ôíºŸ.b‘
$aef9a58f-9453-4ff9-93cc-d7c2d9b6db1av++Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2Û
E/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/design.cfg©platform=xilinx_u280_xdma_201920_3
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
"Thu Nov  5 09:27:27 2020(ﬁôíºŸ.r(
$aef9a58f-9453-4ff9-93cc-d7c2d9b6db1a"Thu Nov  5 09:27:37 2020(√‚íºŸ.Z∑
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08B]
[vadd.hwP/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/xclbin/vadd.hw.xclbinJ“
VvaddL/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/xclbin/vadd.hw.xop/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Thu Nov  5 09:27:37 2020(ª‰íºŸ.bå
$f3ba374b-5b3e-429c-860e-57a3a6b8c2fesystem_link"Ísystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/sys_link*--xo*L/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/xclbin/vadd.hw.xo*-keep*--config*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*N/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int*
--temp_dir*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/sys_link"Thu Nov  5 09:27:37 2020(º‰íºŸ.r(
$f3ba374b-5b3e-429c-860e-57a3a6b8c2fe"Thu Nov  5 09:28:02 2020(…¶îºŸ.r(
$f3ba374b-5b3e-429c-860e-57a3a6b8c2fe"Thu Nov  5 09:28:02 2020(—¶îºŸ.bÀ
$767a0e8d-4c3c-43a2-9a70-514d781604bccf2sw"åcf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/sdsl.dat*-rtd*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xclbin_orig.xml*-o*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xclbin_orig.1.xml"Thu Nov  5 09:28:02 2020(”¶îºŸ.r(
$767a0e8d-4c3c-43a2-9a70-514d781604bc"Thu Nov  5 09:28:05 2020(–æîºŸ.r(
$767a0e8d-4c3c-43a2-9a70-514d781604bc"Thu Nov  5 09:28:05 2020(⁄æîºŸ.bé
$4b94f7fd-39ca-4f6e-b781-5691324fc9f4rtd2_system_diagram"Êrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/kernel_info.dat"Thu Nov  5 09:28:05 2020(€æîºŸ.r(
$4b94f7fd-39ca-4f6e-b781-5691324fc9f4"Thu Nov  5 09:28:06 2020(¡ÀîºŸ.jl
f/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModel.json !"Thu Nov  5 09:28:06 2020(◊ÀîºŸ.r(
$4b94f7fd-39ca-4f6e-b781-5691324fc9f4"Thu Nov  5 09:28:07 2020(·ÀîºŸ.bâ
$c136e401-ac52-4b84-8be4-c53e5e9637a5vpl"ﬂvpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 200 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*200*--profile_kernel*data:all:all:all:all*-s*--output_dir*N/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int*	--log_dir*O/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/logs/link*--report_dir*R/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link*--config*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vplConfig.ini*-k*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*J/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link*	--no-info*
--tlog_dir*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*q/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/run_link/vpl.pb*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/dr.bd.tcl"Thu Nov  5 09:28:07 2020(„ÀîºŸ.r(
$c136e401-ac52-4b84-8be4-c53e5e9637a5"Thu Nov  5 09:28:08 2020(ºÿîºŸ.bò

$bd71b295-7ddf-4b00-92c0-089e382f5bcfvplY/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/link.steps.log"è	/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 200 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/dr.bd.tcl "Thu Nov  5 09:28:08 2020(æÿîºŸ.r(
$bd71b295-7ddf-4b00-92c0-089e382f5bcf"Thu Nov  5 09:29:06 2020(•ùòºŸ.b“
$65c75f28-5d32-4fa1-8123-af62233d2e6fvivado`/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Thu Nov  5 09:29:06 2020(ßùòºŸ.r(
$65c75f28-5d32-4fa1-8123-af62233d2e6f"Thu Nov  5 11:34:51 2020(ƒ‡‰øŸ.jÇ
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Thu Nov  5 12:46:20 2020(∞ƒÍ¡Ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Thu Nov  5 16:17:04 2020(±úÓ«Ÿ.jÅ
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Thu Nov  5 16:57:12 2020(¸óÅ…Ÿ.r(
$65c75f28-5d32-4fa1-8123-af62233d2e6f"Thu Nov  5 16:57:13 2020(œ¶Å…Ÿ.js
m/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Thu Nov  5 16:57:13 2020(÷¶Å…Ÿ.jv
p/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Thu Nov  5 16:57:13 2020(€¶Å…Ÿ.js
m/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Thu Nov  5 16:57:13 2020(·¶Å…Ÿ.ju
o/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Thu Nov  5 16:57:13 2020(Ï¶Å…Ÿ.ju
o/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Thu Nov  5 16:57:14 2020(êÆÅ…Ÿ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(óÆÅ…Ÿ.jí
ã/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(ûÆÅ…Ÿ.jà
Å/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(§ÆÅ…Ÿ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(´ÆÅ…Ÿ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(±ÆÅ…Ÿ.jé
Å/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Thu Nov  5 16:57:14 2020(∏ÆÅ…Ÿ.jâ
Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(æÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(ƒÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020( ÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(—ÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(◊ÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(ﬁÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(‰ÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(ÎÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Thu Nov  5 16:57:14 2020(ÚÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(¯ÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ˇÆÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ÖØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(åØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(íØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ôØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(üØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(•ØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(¨ØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(≤ØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(πØÅ…Ÿ.jã
Ñ/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(øØÅ…Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(∆ØÅ…Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ÕØÅ…Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(‘ØÅ…Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(⁄ØÅ…Ÿ.jä
É/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(·ØÅ…Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ÈØÅ…Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ØÅ…Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(˜ØÅ…Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(˛ØÅ…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(Ñ∞Å…Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ã∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ì∞Å…Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ô∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(†∞Å…Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(¶∞Å…Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(≠∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(¥∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ª∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(¡∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect13_12_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(»∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(œ∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(÷∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(›∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(‰∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(Î∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(Ò∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(¯∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(˛∞Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(Ü±Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ç±Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(î±Å…Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect0_28_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(ö±Å…Ÿ.jñ
è/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(°±Å…Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(®±Å…Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(Ø±Å…Ÿ.jé
á/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(µ±Å…Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(º±Å…Ÿ.jç
Ü/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(√±Å…Ÿ.jÖ
/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020( ±Å…Ÿ.jè
à/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(—±Å…Ÿ.jâ
Ç/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Thu Nov  5 16:57:15 2020(õ≤Å…Ÿ.jõ
î/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Thu Nov  5 16:57:15 2020(ﬁ≤Å…Ÿ.j®
°/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Thu Nov  5 16:57:15 2020(û∂Å…Ÿ.r(
$bd71b295-7ddf-4b00-92c0-089e382f5bcf"Thu Nov  5 16:57:15 2020(–∂Å…Ÿ.r(
$c136e401-ac52-4b84-8be4-c53e5e9637a5"Thu Nov  5 16:57:16 2020(Â∂Å…Ÿ.b6
$823a5df2-cc40-4c6d-918f-c3a1d88d612drtdgen"rtdgen"Thu Nov  5 16:57:16 2020(Ê∂Å…Ÿ.r(
$823a5df2-cc40-4c6d-918f-c3a1d88d612d"Thu Nov  5 16:57:16 2020(ˆ∂Å…Ÿ.jd
^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Thu Nov  5 16:57:16 2020(Å∑Å…Ÿ.bâ
$dd3aca6b-b9f3-4d23-9435-96d73aa20febcf2sw"Ícf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xml*-a*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/address_map.xml*-sdsl*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/sdsl.dat*-xclbin*^/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.rtd*-o*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xml"Thu Nov  5 16:57:16 2020(É∑Å…Ÿ.r(
$dd3aca6b-b9f3-4d23-9435-96d73aa20feb"Thu Nov  5 16:57:20 2020(¢◊Å…Ÿ.r(
$dd3aca6b-b9f3-4d23-9435-96d73aa20feb"Thu Nov  5 16:57:20 2020(ß◊Å…Ÿ.bÅ
$a96b95dc-be98-47b0-a109-9f4ff0a13cf8rtd2_system_diagram"ßrtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*Z/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*s/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Thu Nov  5 16:57:20 2020(®◊Å…Ÿ.r(
$a96b95dc-be98-47b0-a109-9f4ff0a13cf8"Thu Nov  5 16:57:21 2020(¬„Å…Ÿ.jz
t/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Thu Nov  5 16:57:21 2020(”„Å…Ÿ.r(
$a96b95dc-be98-47b0-a109-9f4ff0a13cf8"Thu Nov  5 16:57:21 2020(Ÿ„Å…Ÿ.r(
$823a5df2-cc40-4c6d-918f-c3a1d88d612d"Thu Nov  5 16:57:21 2020(„„Å…Ÿ.bÔ
$b8490bf9-65df-49a4-b427-d34e8f63f141
xclbinutil"ó	xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*wDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*hBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*`:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*f:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/appendSection.rtd*--add-section*wCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*tBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*pEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*àSYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xclbin"Thu Nov  5 16:57:21 2020(‰„Å…Ÿ.r(
$b8490bf9-65df-49a4-b427-d34e8f63f141"Thu Nov  5 16:57:22 2020(ˇÂÅ…Ÿ.r(
$b8490bf9-65df-49a4-b427-d34e8f63f141"Thu Nov  5 16:57:22 2020(àÊÅ…Ÿ.b¯
$1864a8eb-b3a2-4f98-9cd7-5f0291157f55xclbinutilinfo"‚xclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/link/int/vadd.hw.xclbin"Thu Nov  5 16:57:22 2020(âÊÅ…Ÿ.r(
$1864a8eb-b3a2-4f98-9cd7-5f0291157f55"Thu Nov  5 16:57:22 2020(—ÈÅ…Ÿ.r(
$1864a8eb-b3a2-4f98-9cd7-5f0291157f55"Thu Nov  5 16:57:22 2020(ÖÍÅ…Ÿ.ju
o/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Thu Nov  5 16:57:22 2020(ùÏÅ…Ÿ.jw
q/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Thu Nov  5 16:57:22 2020(ûÏÅ…Ÿ.jh
b/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Thu Nov  5 16:57:35 2020(¢“Ç…Ÿ.jc
]/mnt/scratch/wenqi/FPGA-ANNS/HBM_performance_test/HBM_opt1/_x.hw/vadd/logs/optraceViewer.html ""Thu Nov  5 16:57:35 2020(´“Ç…Ÿ.r(
$aef9a58f-9453-4ff9-93cc-d7c2d9b6db1a