# Generate outputs/ according to the files in /inputs
# Usage: bash generate_replacement.sh 15 HBM

TOTAL_NUM=${1} # Table num, e.g., 15
MEMORY=${2} # HBM or DDR

echo ${TOTAL_NUM} 
echo ${MEMORY}

F="--file_name="
I="--input_file_dir=./inputs/"
O="--output_file_dir=./outputs/"

R="--replaced_num="
RSA='--replaced_str_array '
RNA='--replaced_num_array '

S="--start="
T="--total_num="

ST="--split_by_empty_line=True" # Split = True
SF="--split_by_empty_line=False" # Split = False
SN='--split_line_every_n='
D="--deliminator="

BS='--bank_start='
BN='--bank_num='

OPT="--option="
# function ec() {
#     echo "hi"
# }

# function IO() {
#     echo ${I}${1}" "${O}${1}
#     # return ${I}${1}" "${O}${1}
# }

# replicate strings
python replicate_str.py ${F}"host_embedding_size_bytes" ${R}0 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"host_aligned_allocator" ${R}0 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"host_generate_embeddings" ${R}1 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"host_sw_results" ${R}1 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"host_cl_buffer" ${R}0 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"host_set_arg" ${R}0 ${T}${TOTAL_NUM}

python replicate_str.py ${F}"constants_table_size" ${R}2 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"constants_data_size" ${R}2 ${T}${TOTAL_NUM}

python replicate_str.py ${F}"device_vadd_s_axi" ${R}0 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"device_vadd_embedding_buffer" ${R}0 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"device_vadd_embedding_buffer_partition" ${R}0 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"device_load_embeddings_load_single_embedding" ${R}0 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"device_reduction_add_all_result_buffer" ${R}0 ${T}${TOTAL_NUM}
python replicate_str.py ${F}"device_reduction_add_all_reduction_add_single" ${R}0 ${T}${TOTAL_NUM}


# expand functions / declarations
python expand_function.py ${F}"host_cl_mem_ext_ptr_t"  \
    ${RSA}"embedding0Ext" ${RNA}"0" ${T}${TOTAL_NUM} ${ST} ${SN}4 ${D}","
python expand_function.py ${F}"host_enqueueMigrateMemObjects" \
    ${RSA}"buffer_embedding1" ${RNA}"1" ${T}${TOTAL_NUM} ${ST} ${SN}4 ${D}","

python expand_function.py ${F}"device_vadd"  \
    ${RSA}"const int *table0" ${RNA}0 ${T}${TOTAL_NUM} ${ST} ${SN}3 ${D}","
python expand_function.py ${F}"device_vadd_load_embeddings"  \
    ${RSA}"table0" "embedding_buffer0" ${RNA}0 0 ${T}${TOTAL_NUM} ${ST} ${SN}2 ${D}","
python expand_function.py ${F}"device_vadd_reduction_add_all" \
    ${RSA} "embedding_buffer0" ${RNA}0 ${T}${TOTAL_NUM} ${ST} ${SN}4 ${D}","
python expand_function.py ${F}"device_load_embeddings"  \
    ${RSA}"const int* table0" "int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]" ${RNA}0 0 ${T}${TOTAL_NUM} ${ST} ${SN}2 ${D}","
python expand_function.py ${F}"device_reduction_add_all"  \
    ${RSA}"int embedding_buffer0[BATCH_SIZE * DATA_SIZE0]" ${RNA}0 ${T}${TOTAL_NUM} ${ST} ${SN}2 ${D}","
python expand_function.py ${F}"device_reduction_add_all_vout_buffer"  \
    ${RSA}"result_buffer0[i]" ${RNA}0 ${T}${TOTAL_NUM} ${ST} ${SN}4 ${D}"+"
    

# allocate banks
python bank.py ${F}"host_bank" ${R}1 ${T}${TOTAL_NUM} ${BS}0 ${BN}32
if [[ "${MEMORY}" == "DDR" ]]; then
    python bank.py ${F}"device_vadd_m_axi" ${R}0 ${T}${TOTAL_NUM} ${BS}32 ${BN}2 ${OPT}axi
elif [[ "${MEMORY}" == "HBM" ]]; then 
    python bank.py ${F}"device_vadd_m_axi" ${R}0 ${T}${TOTAL_NUM} ${BS}0 ${BN}32 ${OPT}axi
else
    echo "UNKNOWN MEMORY TYPE"
fi