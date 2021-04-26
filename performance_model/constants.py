
""" Resource related constants """
MAX_UTIL_PERC = 0.8 

TOTAL_BRAM_18K = 4032 
TOTAL_DSP48E = 9024
TOTAL_FF = 2607360 
TOTAL_LUT = 1303680
TOTAL_URAM = 960

MAX_HBM_bank = 30 # reserve 30, 31 unused due to their overlap with PCIe
MAX_BRAM_18K = TOTAL_BRAM_18K * MAX_UTIL_PERC
MAX_DSP48E = TOTAL_DSP48E * MAX_UTIL_PERC
MAX_FF = TOTAL_FF * MAX_UTIL_PERC
MAX_LUT = TOTAL_LUT * MAX_UTIL_PERC
MAX_URAM = TOTAL_URAM * MAX_UTIL_PERC

""" Performannce related constants """
FREQ = 140 * 1e6

""" Algorithm related constants """
TOTAL_VECTORS = 1e8

D = 128
topK = 10