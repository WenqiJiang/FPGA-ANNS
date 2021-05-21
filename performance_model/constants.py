""" Performannce related constants """
FREQ = 140 * 1e6

""" Algorithm related constants """
TOTAL_VECTORS = 1e8

D = 128
topK = 10


""" A number of constant consumption components that should be added to PEs"""

component = dict()

# FIFO depth=512, width=32 bit
component["FIFO_d512_w32"] = dict()
component["FIFO_d512_w32"]["LUT"] = 54
component["FIFO_d512_w32"]["FF"] = 95
component["FIFO_d512_w32"]["BRAM_18K"] = 2 * 0.5
component["FIFO_d512_w32"]["URAM"] = 0
component["FIFO_d512_w32"]["DSP48E"] = 0
component["FIFO_d512_w32"]["HBM_bank"] = 0

# FIFO depth=2, width=8 bit
component["FIFO_d2_w8"] = dict()
component["FIFO_d2_w8"]["LUT"] = 20
component["FIFO_d2_w8"]["FF"] = 6
component["FIFO_d2_w8"]["BRAM_18K"] = 2 * 0
component["FIFO_d2_w8"]["URAM"] = 0
component["FIFO_d2_w8"]["DSP48E"] = 0
component["FIFO_d2_w8"]["HBM_bank"] = 0

# FIFO depth=2, width=32 bit
component["FIFO_d2_w32"] = dict()
component["FIFO_d2_w32"]["LUT"] = 30
component["FIFO_d2_w32"]["FF"] = 6
component["FIFO_d2_w32"]["BRAM_18K"] = 2 * 0
component["FIFO_d2_w32"]["URAM"] = 0
component["FIFO_d2_w32"]["DSP48E"] = 0
component["FIFO_d2_w32"]["HBM_bank"] = 0

# FIFO depth=2, width=512 bit
component["FIFO_d2_w512"] = dict()
component["FIFO_d2_w512"]["LUT"] = 484
component["FIFO_d2_w512"]["FF"] = 964
component["FIFO_d2_w512"]["BRAM_18K"] = 2 * 0
component["FIFO_d2_w512"]["URAM"] = 0
component["FIFO_d2_w512"]["DSP48E"] = 0
component["FIFO_d2_w512"]["HBM_bank"] = 0


#####     Shell     #####
PE_num_dict = dict()
PE_num_dict["hmss"] = 1
component["hmss"] = dict()
component["hmss"]["LUT"] = 55643 
component["hmss"]["FF"] = 103037
component["hmss"]["BRAM_18K"] = 2 * 4
component["hmss"]["URAM"] = 0
component["hmss"]["DSP48E"] = 0
component["hmss"]["HBM_bank"] = 0

PE_num_dict["System_DPA"] = 1
component["System_DPA"] = dict()
component["System_DPA"]["LUT"] = 35738
component["System_DPA"]["FF"] = 76789
component["System_DPA"]["BRAM_18K"] = 2 * 16
component["System_DPA"]["URAM"] = 0
component["System_DPA"]["DSP48E"] = 0
component["System_DPA"]["HBM_bank"] = 0

PE_num_dict["xdma"] = 1
component["xdma"] = dict()
component["xdma"]["LUT"] = 9100
component["xdma"]["FF"] = 15572
component["xdma"]["BRAM_18K"] = 2 * 0
component["xdma"]["URAM"] = 0
component["xdma"]["DSP48E"] = 0
component["xdma"]["HBM_bank"] = 0

PE_num_dict["static_region"] = 1
component["static_region"] = dict()
component["static_region"]["LUT"] = 93280
component["static_region"]["FF"] = 128746
component["static_region"]["BRAM_18K"] = 2 * 200
component["static_region"]["URAM"] = 0
component["static_region"]["DSP48E"] = 4
component["static_region"]["HBM_bank"] = 0


def add_resources(component_dict, resource_list, PE_num_dict=None):
    """
    given a list of resource name, e.g., ["hmss", "vadd"],
    return the total resource by a dict
    """
    total_resource_consumption = dict()
    total_resource_consumption["LUT"] = 0
    total_resource_consumption["FF"] = 0
    total_resource_consumption["BRAM_18K"] = 0
    total_resource_consumption["URAM"] = 0
    total_resource_consumption["DSP48E"] = 0
    total_resource_consumption["HBM_bank"] = 0 
    
    if PE_num_dict:
        for resource in resource_list:
            PE_num = PE_num_dict[resource]
            total_resource_consumption["LUT"] += component_dict[resource]["LUT"] * PE_num
            total_resource_consumption["FF"] += component_dict[resource]["FF"] * PE_num
            total_resource_consumption["BRAM_18K"] += component_dict[resource]["BRAM_18K"] * PE_num
            total_resource_consumption["URAM"] += component_dict[resource]["URAM"] * PE_num
            total_resource_consumption["DSP48E"] += component_dict[resource]["DSP48E"] * PE_num
            total_resource_consumption["HBM_bank"] += component_dict[resource]["HBM_bank"] * PE_num
    else:
        for resource in resource_list:
            total_resource_consumption["LUT"] += component_dict[resource]["LUT"]
            total_resource_consumption["FF"] += component_dict[resource]["FF"]
            total_resource_consumption["BRAM_18K"] += component_dict[resource]["BRAM_18K"]
            total_resource_consumption["URAM"] += component_dict[resource]["URAM"]
            total_resource_consumption["DSP48E"] += component_dict[resource]["DSP48E"]
            total_resource_consumption["HBM_bank"] += component_dict[resource]["HBM_bank"]

    return total_resource_consumption

##### TODO: add network kernel #####

component_list_shell = ["hmss", "System_DPA", "xdma", "static_region"]

shell_consumption = add_resources(component, component_list_shell)

""" Resource related constants """
MAX_UTIL_PERC = 0.8 

TOTAL_BRAM_18K = 4032 
TOTAL_DSP48E = 9024
TOTAL_FF = 2607360 
TOTAL_LUT = 1303680
TOTAL_URAM = 960

MAX_HBM_bank = 32 - 2 - 2 - 1 # reserve 30, 31 unused due to their overlap with PCIe; 2 for Network; 1 for value init
MAX_BRAM_18K = TOTAL_BRAM_18K * MAX_UTIL_PERC - shell_consumption["BRAM_18K"]
MAX_DSP48E = TOTAL_DSP48E * MAX_UTIL_PERC - shell_consumption["DSP48E"]
MAX_FF = TOTAL_FF * MAX_UTIL_PERC - shell_consumption["FF"]
MAX_LUT = TOTAL_LUT * MAX_UTIL_PERC - shell_consumption["LUT"]
MAX_URAM = TOTAL_URAM * MAX_UTIL_PERC - shell_consumption["URAM"]