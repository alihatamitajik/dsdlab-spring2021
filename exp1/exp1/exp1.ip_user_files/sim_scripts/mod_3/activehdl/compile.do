vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/util_vector_logic_v2_0_1
vlib activehdl/xlconstant_v1_1_6

vmap xil_defaultlib activehdl/xil_defaultlib
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1
vmap xlconstant_v1_1_6 activehdl/xlconstant_v1_1_6

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/mod_3/sim/mod_3.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../exp1.srcs/sources_1/bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/src/HA_util_vector_logic_0_0/sim/HA_util_vector_logic_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/src/HA_util_vector_logic_0_1/sim/HA_util_vector_logic_0_1.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/ipshared/bc19/sim/HA.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/sim/FA_HA_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_1/sim/FA_HA_0_1.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_util_vector_logic_0_0/sim/FA_util_vector_logic_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/ipshared/fd31/sim/FA.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/sim/binadd4b_FA_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_1/sim/binadd4b_FA_0_1.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_2/sim/binadd4b_FA_0_2.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_3/sim/binadd4b_FA_0_3.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/ipshared/ee05/sim/binadd4b.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_0/sim/BCDAWOC_binadd4b_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_binadd4b_0_1/sim/BCDAWOC_binadd4b_0_1.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_util_vector_logic_0_0/sim/BCDAWOC_util_vector_logic_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_util_vector_logic_0_1/sim/BCDAWOC_util_vector_logic_0_1.v" \

vlog -work xlconstant_v1_1_6  -v2k5 \
"../../../../exp1.srcs/sources_1/bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/src/BCDAWOC_xlconstant_0_0/sim/BCDAWOC_xlconstant_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/ipshared/2df7/sim/BCDAWOC.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_0/sim/dig_reduce_BCDAWOC_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_1/sim/dig_reduce_BCDAWOC_0_1.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_xlconstant_0_0/sim/dig_reduce_xlconstant_0_0.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_0_2/sim/dig_reduce_BCDAWOC_0_2.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_2_1/sim/dig_reduce_BCDAWOC_2_1.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/src/dig_reduce_BCDAWOC_3_0/sim/dig_reduce_BCDAWOC_3_0.v" \
"../../../bd/mod_3/ipshared/1540/sim/dig_reduce.v" \
"../../../bd/mod_3/ip/mod_3_dig_reduce_0_0/sim/mod_3_dig_reduce_0_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_0_0/sim/mod_3_util_vector_logic_0_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_0_1/sim/mod_3_util_vector_logic_0_1.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_1_0/sim/mod_3_util_vector_logic_1_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_1_1/sim/mod_3_util_vector_logic_1_1.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_1_2/sim/mod_3_util_vector_logic_1_2.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_0_2/sim/mod_3_util_vector_logic_0_2.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_0_3/sim/mod_3_util_vector_logic_0_3.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_5_0/sim/mod_3_util_vector_logic_5_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_0_4/sim/mod_3_util_vector_logic_0_4.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_5_1/sim/mod_3_util_vector_logic_5_1.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_0_5/sim/mod_3_util_vector_logic_0_5.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_5_2/sim/mod_3_util_vector_logic_5_2.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_0_6/sim/mod_3_util_vector_logic_0_6.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_5_3/sim/mod_3_util_vector_logic_5_3.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_0_7/sim/mod_3_util_vector_logic_0_7.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_5_4/sim/mod_3_util_vector_logic_5_4.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_6_0/sim/mod_3_util_vector_logic_6_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_16_0/sim/mod_3_util_vector_logic_16_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_16_1/sim/mod_3_util_vector_logic_16_1.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_16_2/sim/mod_3_util_vector_logic_16_2.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_16_3/sim/mod_3_util_vector_logic_16_3.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_14_0/sim/mod_3_util_vector_logic_14_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_21_0/sim/mod_3_util_vector_logic_21_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_18_0/sim/mod_3_util_vector_logic_18_0.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_18_1/sim/mod_3_util_vector_logic_18_1.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_18_2/sim/mod_3_util_vector_logic_18_2.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_18_3/sim/mod_3_util_vector_logic_18_3.v" \
"../../../bd/mod_3/ip/mod_3_util_vector_logic_18_5/sim/mod_3_util_vector_logic_18_5.v" \

vlog -work xil_defaultlib \
"glbl.v"

