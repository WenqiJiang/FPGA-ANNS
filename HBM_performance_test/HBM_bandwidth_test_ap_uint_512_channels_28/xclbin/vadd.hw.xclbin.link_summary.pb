
å
v++_link_vadd.hw$108eea69-7a96-4a1c-9fe3-4a2817cfc80f2qi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw.xtl 2nf/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/xclbin/vadd.hw.xclbin.link_summary 2oi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/xclbin/vadd.hw.xclbin.link_summary.pb i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/xclbin/vadd.hw.xclbin.link_summary.pb"Sun Nov  1 15:49:12 2020( ∂¢¢ÿ.bÊ
$16e2d841-2527-4b57-8777-f1a0a19929e1v++b/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/link.steps.log"£/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *-t*hw*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw.xclbin*xclbin/vadd.hw.xo2¸
N/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/design.cfg©platform=xilinx_u280_xdma_201920_3
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
"Sun Nov  1 15:49:12 2020(Õ∂¢¢ÿ.r(
$16e2d841-2527-4b57-8777-f1a0a19929e1"Sun Nov  1 15:49:22 2020(ﬂÑ£¢ÿ.Z“
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08Bf
dvadd.hwY/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/xclbin/vadd.hw.xclbinJ‰
_vaddU/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/xclbin/vadd.hw.xoy/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Sun Nov  1 15:49:22 2020(∂à£¢ÿ.b‘
$acbcc200-be61-45fe-8c22-839b9d268abfsystem_link"ésystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/xclbin/vadd.hw.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target hw --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/sys_link*--xo*U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/xclbin/vadd.hw.xo*-keep*--config*i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*hw*--output_dir*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int*
--temp_dir*\/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/sys_link"Sun Nov  1 15:49:22 2020(∑à£¢ÿ.r(
$acbcc200-be61-45fe-8c22-839b9d268abf"Sun Nov  1 15:49:52 2020(÷Ô§¢ÿ.r(
$acbcc200-be61-45fe-8c22-839b9d268abf"Sun Nov  1 15:49:52 2020(‚Ô§¢ÿ.bì
$c9f2b7af-27f4-4aeb-942b-5d8b412a4ecbcf2sw"∞cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.1.xml*-sdsl*`/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/sdsl.dat*-rtd*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/cf2sw.rtd*-xclbin*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.xml*-o*i/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/xclbin_orig.1.xml"Sun Nov  1 15:49:52 2020(„Ô§¢ÿ.r(
$c9f2b7af-27f4-4aeb-942b-5d8b412a4ecb"Sun Nov  1 15:49:55 2020(Äå•¢ÿ.r(
$c9f2b7af-27f4-4aeb-942b-5d8b412a4ecb"Sun Nov  1 15:49:55 2020(êå•¢ÿ.bƒ
$e2a8b726-d10b-4330-b039-ae7e5372b434rtd2_system_diagram"Årtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo  --generatedByXclbinName vadd.hw --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat*--rtdJsonFileName*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*◊/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw.xclbin xclbin/vadd.hw.xo *--generatedByXclbinName*vadd.hw*--kernelInfoDataFileName*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat"Sun Nov  1 15:49:55 2020(íå•¢ÿ.r(
$e2a8b726-d10b-4330-b039-ae7e5372b434"Sun Nov  1 15:49:57 2020(Úò•¢ÿ.ju
o/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/systemDiagramModel.json !"Sun Nov  1 15:49:57 2020(Åô•¢ÿ.r(
$e2a8b726-d10b-4330-b039-ae7e5372b434"Sun Nov  1 15:49:57 2020(ìô•¢ÿ.bΩ
$f8771cf0-4adc-4d57-bae4-3d7f8759354bvpl"π	vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/dr.bd.tcl*-t*hw*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int*	--log_dir*X/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/logs/link*--report_dir*[/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/reports/link*--config*e/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/vplConfig.ini*-k*g/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link*	--no-info*
--tlog_dir*e/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw*--iprepo*z/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*c/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/run_link/vpl.pb*a/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/dr.bd.tcl"Sun Nov  1 15:49:57 2020(ïô•¢ÿ.r(
$f8771cf0-4adc-4d57-bae4-3d7f8759354b"Sun Nov  1 15:49:59 2020(π¶•¢ÿ.b˚

$219c56a8-bca5-4743-a7d9-3c96c085a3c7vplb/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/link.steps.log"È	/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/.tlog/v++_link_vadd.hw --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/int/dr.bd.tcl "Sun Nov  1 15:49:59 2020(ª¶•¢ÿ.r(
$219c56a8-bca5-4743-a7d9-3c96c085a3c7"Sun Nov  1 15:51:48 2020(ó¯´¢ÿ.b€
$909f3dae-34f2-4976-aa4a-fd967079b509vivadoi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_axi_512_channels_28/_x.hw/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Sun Nov  1 15:51:48 2020(ô¯´¢ÿ.r(
$909f3dae-34f2-4976-aa4a-fd967079b509