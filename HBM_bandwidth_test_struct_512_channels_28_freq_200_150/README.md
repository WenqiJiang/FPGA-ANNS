# Frequency Log

## 240 MHZ -> Fail

===>The following messages were generated while processing /mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/vivado/vpl/prj/prj.runs/impl_1 :
ERROR: [VPL 18-1000] Routing results verification failed due to partially-conflicted nets (Up to first 10 of violated nets):  pfm_top_i/dynamic_region/System_DPA/dpa_ctrl_interconnect/tier2_xbar_3/inst/gen_sasd.crossbar_sasd_0/reg_slice_r/Q[15] pfm_top_i/dynamic_region/System_DPA/dpa_ctrl_interconnect/tier2_xbar_3/inst/gen_sasd.crossbar_sasd_0/reg_slice_r/Q[3] pfm_top_i/dynamic_region/System_DPA/dpa_ctrl_interconnect/tier2_xbar_3/inst/gen_sasd.crossbar_sasd_0/reg_slice_r/Q[16] pfm_top_i/dynamic_region/System_DPA/dpa_mon10/inst/metric_calc_i/GEN_NO_MIN_MAX.Read_Outstanding_Int_reg[7]_0[3] pfm_top_i/dynamic_region/System_DPA/dpa_mon10/inst/metric_calc_i/GEN_NO_MIN_MAX.Read_Outstanding_Int_reg[7]_0[5] pfm_top_i/dynamic_region/System_DPA/dpa_mon10/inst/metric_calc_i/GEN_NO_MIN_MAX.Read_Outstanding_Int_reg[7]_0[6] pfm_top_i/dynamic_region/System_DPA/dpa_mon10/inst/metric_calc_i/GEN_NO_MIN_MAX.Write_Outstanding_Int_reg[7]_0[1] pfm_top_i/dynamic_region/System_DPA/dpa_mon10/inst/metric_calc_i/GEN_NO_MIN_MAX.Write_Outstanding_Int_reg[7]_0[2] pfm_top_i/dynamic_region/slr0/interconnect_axilite_user_slr0/m01_couplers/m01_regslice/inst/w.w_pipe/Q[28]_repN_11 pfm_top_i/dynamic_region/slr0/interconnect_axilite_user_slr0/m01_couplers/m01_regslice/inst/w.w_pipe/Q[27]_repN_5 
ERROR: [VPL 60-704] Integration error, problem implementing dynamic region, route_design ERROR, please look at the run log file '/mnt/scratch/wenqi/FPGA-ANNS/HBM_bandwidth_test_struct_512_channels_28_freq_240/_x.hw/vadd/link/vivado/vpl/prj/prj.runs/impl_1/runme.log' for more information
ERROR: [VPL 60-1328] Vpl run 'vpl' failed
ERROR: [VPL 60-806] Failed to finish platform linker
INFO: [v++ 60-1442] [16:19:46] Run run_link: Step vpl: Failed
Time (s): cpu = 00:06:25 ; elapsed = 06:39:13 . Memory (MB): peak = 679.312 ; gain = 0.000 ; free physical = 236583 ; free virtual = 454369
ERROR: [v++ 60-661] v++ link run 'run_link' failed
ERROR: [v++ 60-626] Kernel link failed to complete
ERROR: [v++ 60-703] Failed to finish linking
Makefile:93: recipe for target 'xclbin/vadd.hw.xclbin' failed
