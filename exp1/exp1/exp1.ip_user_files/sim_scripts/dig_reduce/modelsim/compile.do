vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_6

vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_6 modelsim_lib/msim/xlconstant_v1_1_6

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../exp1.srcs/sources_1/bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/src/HA_util_vector_logic_0_0/sim/HA_util_vector_logic_0_0.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/src/HA_util_vector_logic_0_1/sim/HA_util_vector_logic_0_1.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/ipshared/bc19/sim/HA.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/sim/FA_HA_0_0.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_1/sim/FA_HA_0_1.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_util_vector_logic_0_0/sim/FA_util_vector_logic_0_0.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/ipshared/fd31/sim/FA.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/sim/binadd4b_FA_0_0.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_1/sim/binadd4b_FA_0_1.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_2/sim/binadd4b_FA_0_2.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_3/sim/binadd4b_FA_0_3.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/ipshared/ee05/sim/binadd4b.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/sim/BCDAWOC_binadd4b_0_0.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_1/sim/BCDAWOC_binadd4b_0_1.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_util_vector_logic_0_0/sim/BCDAWOC_util_vector_logic_0_0.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_util_vector_logic_0_1/sim/BCDAWOC_util_vector_logic_0_1.v" \

vlog -work xlconstant_v1_1_6 -64 -incr \
"../../../../exp1.srcs/sources_1/bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_xlconstant_0_0/sim/BCDAWOC_xlconstant_0_0.v" \
"../../../bd/dig_reduce/ipshared/2df7/sim/BCDAWOC.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_0/sim/dig_reduce_BCDAWOC_0_0.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_1/sim/dig_reduce_BCDAWOC_0_1.v" \
"../../../bd/dig_reduce/ip/dig_reduce_xlconstant_0_0/sim/dig_reduce_xlconstant_0_0.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_0_2/sim/dig_reduce_BCDAWOC_0_2.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_2_1/sim/dig_reduce_BCDAWOC_2_1.v" \
"../../../bd/dig_reduce/ip/dig_reduce_BCDAWOC_3_0/sim/dig_reduce_BCDAWOC_3_0.v" \
"../../../bd/dig_reduce/sim/dig_reduce.v" \

vlog -work xil_defaultlib \
"glbl.v"

