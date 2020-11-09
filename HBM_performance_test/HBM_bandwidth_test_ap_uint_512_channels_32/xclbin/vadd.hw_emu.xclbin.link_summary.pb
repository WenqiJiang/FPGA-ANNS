
‰
v++_link_vadd.hw_emu$b04cbe46-9915-41a3-aac7-f549822ceb032e]/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/.tlog/v++_link_vadd.hw_emu.xtl 2^V/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw_emu.xclbin.link_summary 2_Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw_emu.xclbin.link_summary.pb Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw_emu.xclbin.link_summary.pb"Fri Oct 30 09:58:48 2020(‘±Ï≈◊.b⁄
$b9cf942e-0cb0-4b30-bc75-06a471dda17av++R/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/link.steps.log"≥/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++  --xp "vivado_prop:run.__KERNEL__.{STEPS.SYNTH_DESIGN.ARGS.MORE OPTIONS}={-directive sdx_optimization_effort_high}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_route_design_summary steps {route_design} runs {impl_1} options {-max_paths 10}" --xp "misc:report=type report_timing_summary name impl_report_timing_summary_post_route_phys_opt_design_summary steps {post_route_phys_opt_design} runs {impl_1} options {-max_paths 10}" -t hw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw_emu.xclbin xclbin/vadd.hw_emu.xo *-t*hw_emu*--config*
design.cfg*--save-temps*--report*estimate*
--temp_dir*./_x.hw_emu/vadd*-l*--profile_kernel*data:all:all:all:all*-oxclbin/vadd.hw_emu.xclbin*xclbin/vadd.hw_emu.xo2‡
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
"Fri Oct 30 09:58:48 2020(÷±Ï≈◊.r(
$b9cf942e-0cb0-4b30-bc75-06a471dda17a"Fri Oct 30 09:58:58 2020(ß˚Ï≈◊.Z¶
xilinx_u280_xdma_201920_3.xpfmxilinx_u280_xdma_201920_3.xsa//opt/xilinx/platforms/xilinx_u280_xdma_201920_3"OpenCL*Linux08BZ
Xvadd.hw_emuI/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw_emu.xclbinJƒ
OvaddE/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw_emu.xoi/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/xo/vadd/vadd/cpu_sources/vadd.cppvadd_1"Fri Oct 30 09:58:58 2020(Æ˝Ï≈◊.b÷
$c4fe10e7-0b22-463f-bf9e-95ee979d3b72system_link"œsystem_link --xo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw_emu.xo -keep --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/syslinkConfig.ini --xpfm /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --target emu --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/sys_link*--xo*E/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/xclbin/vadd.hw_emu.xo*-keep*--config*Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/syslinkConfig.ini*--xpfm*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--target*emu*--output_dir*G/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int*
--temp_dir*L/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/sys_link"Fri Oct 30 09:58:58 2020(Ø˝Ï≈◊.r(
$c4fe10e7-0b22-463f-bf9e-95ee979d3b72"Fri Oct 30 09:59:23 2020(ÄΩÓ≈◊.r(
$c4fe10e7-0b22-463f-bf9e-95ee979d3b72"Fri Oct 30 09:59:23 2020(àΩÓ≈◊.bì
$a2569993-e34c-4577-b631-154ecd91976ecf2sw"cf2sw -sdsl /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/sdsl.dat -rtd /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/cf2sw.rtd -xclbin /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/xclbin_orig.xml -o /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/xclbin_orig.1.xml*-sdsl*P/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/sdsl.dat*-rtd*Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/cf2sw.rtd*-xclbin*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/xclbin_orig.xml*-o*Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/xclbin_orig.1.xml"Fri Oct 30 09:59:23 2020(âΩÓ≈◊.r(
$a2569993-e34c-4577-b631-154ecd91976e"Fri Oct 30 09:59:26 2020(Ê◊Ó≈◊.r(
$a2569993-e34c-4577-b631-154ecd91976e"Fri Oct 30 09:59:26 2020(Ó◊Ó≈◊.bå
$a291595d-7973-46c1-b549-2cd087109b45rtd2_system_diagram"Ârtd2SystemDiagram --rtdJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/cf2sw.rtd --diagramJsonFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/systemDiagramModel.json --platformFilePath /opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm --generatedByName v++ --generatedByVersion 2019.2 --generatedByChangeList 2708876 --generatedByTimeStamp Wed Nov  6 21:39:14 MST 2019 --generatedByOptions /opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw_emu.xclbin xclbin/vadd.hw_emu.xo  --generatedByXclbinName vadd.hw_emu --kernelInfoDataFileName /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/kernel_info.dat*--rtdJsonFileName*Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/cf2sw.rtd*--diagramJsonFileName*_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/systemDiagramModel.json*--platformFilePath*N/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm*--generatedByName*v++*--generatedByVersion*2019.2*--generatedByChangeList*2708876*--generatedByTimeStamp*Wed Nov  6 21:39:14 MST 2019*--generatedByOptions*Á/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/v++ -t hw_emu --config design.cfg --save-temps --report estimate --temp_dir ./_x.hw_emu/vadd -l --profile_kernel data:all:all:all:all -oxclbin/vadd.hw_emu.xclbin xclbin/vadd.hw_emu.xo *--generatedByXclbinName*vadd.hw_emu*--kernelInfoDataFileName*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/kernel_info.dat"Fri Oct 30 09:59:26 2020(◊Ó≈◊.r(
$a291595d-7973-46c1-b549-2cd087109b45"Fri Oct 30 09:59:28 2020(¸‰Ó≈◊.je
_/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/systemDiagramModel.json !"Fri Oct 30 09:59:28 2020(âÂÓ≈◊.r(
$a291595d-7973-46c1-b549-2cd087109b45"Fri Oct 30 09:59:28 2020(ìÂÓ≈◊.bœ
$8e03a444-4472-4fca-9631-272d28ce7fecvpl"¡vpl -t hw_emu -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link --emulation_mode debug_waveform --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/.tlog/v++_link_vadd.hw_emu --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/dr.bd.tcl*-t*hw_emu*-f*xilinx_u280_xdma_201920_3*-g*--kernel_frequency*140*--profile_kernel*data:all:all:all:all*-s*--output_dir*G/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int*	--log_dir*H/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/logs/link*--report_dir*K/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/reports/link*--config*U/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/vplConfig.ini*-k*W/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/kernel_info.dat*--webtalk_flag*Vitis*
--temp_dir*C/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link*--emulation_mode*debug_waveform*	--no-info*
--tlog_dir*Y/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/.tlog/v++_link_vadd.hw_emu*--iprepo*j/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0*--messageDb*S/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/run_link/vpl.pb*Q/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/dr.bd.tcl"Fri Oct 30 09:59:28 2020(îÂÓ≈◊.r(
$8e03a444-4472-4fca-9631-272d28ce7fec"Fri Oct 30 09:59:29 2020(´ÒÓ≈◊.bÛ	
$d46af0cc-efe3-4638-a7c7-163162c95603vplR/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/link.steps.log"Ò/opt/Xilinx/Vitis/2019.2/bin/unwrapped/lnx64.o/vpl -t hw_emu -f xilinx_u280_xdma_201920_3 -g --kernel_frequency 140 --profile_kernel data:all:all:all:all -s --output_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int --log_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/logs/link --report_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/reports/link --config /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/vplConfig.ini -k /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/kernel_info.dat --webtalk_flag Vitis --temp_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link --emulation_mode debug_waveform --no-info --tlog_dir /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/.tlog/v++_link_vadd.hw_emu --iprepo /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/xo/ip_repo/xilinx_com_hls_vadd_1_0 --messageDb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/run_link/vpl.pb /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/int/dr.bd.tcl "Fri Oct 30 09:59:29 2020(¨ÒÓ≈◊.r(
$d46af0cc-efe3-4638-a7c7-163162c95603"Fri Oct 30 10:00:14 2020(åÕÒ≈◊.bÀ
$bfcec8d9-294d-4cbc-ac1e-200029260a35vivadoY/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test/_x.hw_emu/vadd/link/vivado/vpl/vivado.log"]vivado -log vivado.log -applog -m64 -messageDb vivado.pb -mode batch -source vpl.tcl -notrace*-log*
vivado.log*-applog* -m64*
-messageDb*	vivado.pb*-mode*batch*-source*vpl.tcl*-notrace"Fri Oct 30 10:00:14 2020(çÕÒ≈◊.r(
$bfcec8d9-294d-4cbc-ac1e-200029260a35