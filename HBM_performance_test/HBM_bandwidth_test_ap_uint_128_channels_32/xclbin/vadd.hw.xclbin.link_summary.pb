
�
v++_link_vadd.hw$42e76861-d35f-450f-8829-fc64979181b52aY/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2^V/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/xclbin/vadd.hw.xclbin.link_summary 2_Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/xclbin/vadd.hw.xclbin.link_summary.pb Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/xclbin/vadd.hw.xclbin.link_summary.pb"Sat Oct 31 15:23:06 2020(�����.b�
$5f7c3fc1-71df-416a-87e2-87482dcca7afv++R/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/link.steps.log"�/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2�
>/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/design.cfg�platform=xilinx_u280_xdma_201920_3
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
"Sat Oct 31 15:23:06 2020(�����.r(
$5f7c3fc1-71df-416a-87e2-87482dcca7af"Sat Oct 31 15:23:15 2020(�����.Z�
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BV
Tvadd.hwI/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/xclbin/vadd.hw.xclbinJ�
OvaddE/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/xclbin/vadd.hw.xoi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Sat Oct 31 15:23:15 2020(�����.b�
$8fa20df3-0f02-4965-a737-dd98245294desystem_link"�system_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/sys_link*--xo*E/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/xclbin/vadd.hw.xo*-keep*--config*Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*G/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int*
--temp_dir*L/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/sys_link"Sat Oct 31 15:23:15 2020(�����.r(
$8fa20df3-0f02-4965-a737-dd98245294de"Sat Oct 31 15:23:39 2020(ع���.r(
$8fa20df3-0f02-4965-a737-dd98245294de"Sat Oct 31 15:23:39 2020(๫��.b�
$f75c9488-53d2-4771-b8df-3d335622c0a6cf2sw"�cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*P/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/sdsl.dat*-rtd*Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xclbin_orig.xml*-o*Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xclbin_orig.1.xml"Sat Oct 31 15:23:39 2020(ṫ��.r(
$f75c9488-53d2-4771-b8df-3d335622c0a6"Sat Oct 31 15:23:43 2020(�ԫ��.r(
$f75c9488-53d2-4771-b8df-3d335622c0a6"Sat Oct 31 15:23:43 2020(�ԫ��.b�
$8c195469-2834-4936-abf4-c9fddfb66a92rtd2_system_diagram"�rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*�/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/kernel_info.dat"Sat Oct 31 15:23:43 2020(�ԫ��.r(
$8c195469-2834-4936-abf4-c9fddfb66a92"Sat Oct 31 15:23:44 2020(����.je
_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModel.json !"Sat Oct 31 15:23:44 2020(����.r(
$8c195469-2834-4936-abf4-c9fddfb66a92"Sat Oct 31 15:23:44 2020(����.b�
$d575327b-597c-4e31-b80f-72c5768d7065vpl"�vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*G/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int*	--log_dir*H/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/logs/link*--report_dir*K/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link*--config*U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vplConfig.ini*-k*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*C/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link*	--no-info*
--tlog_dir*U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/run_link/vpl.pb*Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/dr.bd.tcl"Sat Oct 31 15:23:44 2020(����.r(
$d575327b-597c-4e31-b80f-72c5768d7065"Sat Oct 31 15:23:46 2020(����.b�	
$ad5ecd3a-0258-4981-ab67-25efadb14fd0vplR/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/link.steps.log"�/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/dr.bd.tcl "Sat Oct 31 15:23:46 2020(����.r(
$ad5ecd3a-0258-4981-ab67-25efadb14fd0"Sat Oct 31 15:24:49 2020(�ܯ��.b�
$9b36d178-2fda-44b6-8ca7-52a74dfd5c6bvivadoY/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Sat Oct 31 15:24:49 2020(�ܯ��.r(
$9b36d178-2fda-44b6-8ca7-52a74dfd5c6b"Sat Oct 31 17:55:30 2020(�����.j{
u/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_synthed.json $"Sat Oct 31 18:41:44 2020(����.jz
t/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_placed.json $"Sat Oct 31 19:34:12 2020(�����.jz
t/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/vivado/vpl/output/systemDiagramModel_routed.json $"Sat Oct 31 20:37:01 2020(򅧁�.r(
$9b36d178-2fda-44b6-8ca7-52a74dfd5c6b"Sat Oct 31 20:37:03 2020(�����.jo
i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/imp/kernel_util_synthed.xutil "Sat Oct 31 20:37:03 2020(�����.jl
f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/imp/kernel_util_placed.rpt "Sat Oct 31 20:37:03 2020(�����.jn
h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/imp/kernel_util_routed.xutil "Sat Oct 31 20:37:03 2020(�����.jl
f/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/imp/kernel_util_routed.rpt "Sat Oct 31 20:37:03 2020(�����.jn
h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/imp/kernel_util_placed.xutil "Sat Oct 31 20:38:02 2020(�ު��.j�
z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_hmss_0_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ު��.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_memory_subsystem_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ު��.j~
x/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_6_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ު��.j~
x/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_4_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ު��.j~
x/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_xbar_2_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ު��.j�
z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_vadd_1_0_utilization_synth.rptvadd "Sat Oct 31 20:38:02 2020(�ߪ��.j�
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_hub_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ߪ��.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon1_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ߪ��.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon10_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ߪ��.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon11_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ߪ��.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon12_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ߪ��.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon13_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ߪ��.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon14_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ߪ��.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon15_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ߪ��.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon16_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon17_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon18_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon19_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon2_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon20_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon21_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon22_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon23_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�ઁ�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon24_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�᪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon25_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�᪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon26_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�᪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon27_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�᪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon28_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�᪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon29_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�᪁�.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon3_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�᪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon30_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�᪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon31_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�⪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon32_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�⪁�.j�
}/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon33_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�⪁�.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon4_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�⪁�.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon5_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�⪁�.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon6_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�⪁�.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon7_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�⪁�.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon8_0_utilization_synth.rpt "Sat Oct 31 20:38:02 2020(�⪁�.j�
|/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_dpa_mon9_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�㪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect2_1_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�㪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect1_0_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�㪁�.j~
x/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_hbm_inst_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�㪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect7_6_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�㪁�.j
y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_slice0_12_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�㪁�.j�
z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_slice13_12_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�㪁�.j�
~/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_switch_2to1_12_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�㪁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect12_11_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�䪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect6_5_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�䪁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect14_13_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�䪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect5_4_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�䪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect4_3_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�䪁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect11_10_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�䪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect8_7_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�䪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect3_2_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�䪁�.j�
/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect9_8_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�媁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect10_9_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�媁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect15_14_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�媁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect16_15_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�媁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect17_16_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�媁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect18_17_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�媁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect19_18_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�媁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect20_19_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�檁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect21_20_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�檁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect22_21_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�檁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect23_22_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�檁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect24_23_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�檁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect25_24_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�檁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect26_25_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�檁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect27_26_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�檁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect28_27_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect29_28_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect30_29_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect31_30_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_5dca_interconnect32_31_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/bd_d216_interconnect_PLRAM_MEM00_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_m01_regslice_11_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
{/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_auto_cc_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_1_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�突�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_0_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�誁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_2_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�誁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_3_0_utilization_synth.rpt "Sat Oct 31 20:38:03 2020(�誁�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/syn/pfm_dynamic_tier2_xbar_4_0_utilization_synth.rpt "Sat Oct 31 20:38:04 2020(��.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_routed.rpt "Sat Oct 31 20:38:04 2020(�嬨�.j�
�/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/imp/xilinx_u280_xdma_201920_3_bb_locked_timing_summary_postroute_physopted.rpt "Sat Oct 31 20:38:06 2020(�����.r(
$ad5ecd3a-0258-4981-ab67-25efadb14fd0"Sat Oct 31 20:38:06 2020(�����.r(
$d575327b-597c-4e31-b80f-72c5768d7065"Sat Oct 31 20:38:06 2020(�����.b6
$84dacb24-9cba-4d39-a1c3-23925e69c06ertdgen"rtdgen"Sat Oct 31 20:38:06 2020(�����.r(
$84dacb24-9cba-4d39-a1c3-23925e69c06e"Sat Oct 31 20:38:06 2020(�����.j]
W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw_xml.rtd %"Sat Oct 31 20:38:06 2020(�����.b�
$2aecd68a-3735-48b7-8d9f-180c231ba4a3cf2sw"�cf2sw -a /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/address_map.xml -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/sdsl.dat -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xclbin_orig.xml -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.rtd -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xml*-a*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/address_map.xml*-sdsl*P/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/sdsl.dat*-xclbin*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/xclbin_orig.xml*-rtd*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.rtd*-o*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xml"Sat Oct 31 20:38:06 2020(�����.r(
$2aecd68a-3735-48b7-8d9f-180c231ba4a3"Sat Oct 31 20:38:10 2020(ٚ���.r(
$2aecd68a-3735-48b7-8d9f-180c231ba4a3"Sat Oct 31 20:38:10 2020(暫��.b�
$c27d8f01-8886-4e75-a6d8-b10943c46d17rtd2_system_diagram"�rtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json --diagramWithAddressesAndSlrsJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--rtdJsonFileName*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.rtd*--diagramJsonFileName*l/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModel_resource_use.json*)--diagramWithAddressesAndSlrsJsonFileName*m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json"Sat Oct 31 20:38:10 2020(蚫��.r(
$c27d8f01-8886-4e75-a6d8-b10943c46d17"Sat Oct 31 20:38:11 2020(�����.js
m/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json $"Sat Oct 31 20:38:11 2020(�����.r(
$c27d8f01-8886-4e75-a6d8-b10943c46d17"Sat Oct 31 20:38:11 2020(�����.r(
$84dacb24-9cba-4d39-a1c3-23925e69c06e"Sat Oct 31 20:38:11 2020(Ѧ���.b�
$ff286f87-0448-4dfe-a243-c47c16fd642b
xclbinutil"�xclbinutil --add-section DEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/debug_ip_layout.rtd --add-section BITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/partial.bit --force --key-value SYS:mode:hw_pr --add-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.rtd --append-section :JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/appendSection.rtd --add-section CLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw_xml.rtd --add-section BUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw_build.rtd --add-section EMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xml --add-section SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json --output /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xclbin*--add-section*pDEBUG_IP_LAYOUT:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/debug_ip_layout.rtd*--add-section*aBITSTREAM:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/partial.bit*--force*--key-value*SYS:mode:hw_pr*--add-section*Y:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.rtd*--append-section*_:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/appendSection.rtd*--add-section*pCLOCK_FREQ_TOPOLOGY:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw_xml.rtd*--add-section*mBUILD_METADATA:JSON:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw_build.rtd*--add-section*iEMBEDDED_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xml*--add-section*�SYSTEM_METADATA:RAW:/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/systemDiagramModelSlrBaseAddress.json*--output*V/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xclbin"Sat Oct 31 20:38:11 2020(Ҧ���.r(
$ff286f87-0448-4dfe-a243-c47c16fd642b"Sat Oct 31 20:38:12 2020(�����.r(
$ff286f87-0448-4dfe-a243-c47c16fd642b"Sat Oct 31 20:38:12 2020(�����.b�
$5f33a486-98dd-4068-9967-823a70528bfdxclbinutilinfo"�xclbinutil --quiet --info /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xclbin.info --input /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xclbin*--quiet*--info*[/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xclbin.info*--input*V/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/link/int/vadd.hw.xclbin"Sat Oct 31 20:38:12 2020(�����.r(
$5f33a486-98dd-4068-9967-823a70528bfd"Sat Oct 31 20:38:12 2020(�����.r(
$5f33a486-98dd-4068-9967-823a70528bfd"Sat Oct 31 20:38:12 2020(歫��.jn
h/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/system_estimate_vadd.hw.xtxt "Sat Oct 31 20:38:12 2020(�����.jp
j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/reports/link/v++_link_vadd.hw_guidance.html "Sat Oct 31 20:38:12 2020(�����.ja
[/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/v++_link_vadd.hw_guidance.pb "Sat Oct 31 20:39:15 2020(Ҝ���.j\
V/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_128/_x.hw/vadd/logs/optraceViewer.html ""Sat Oct 31 20:39:15 2020(✯��.r(
$5f7c3fc1-71df-416a-87e2-87482dcca7af