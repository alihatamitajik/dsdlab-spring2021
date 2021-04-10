vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_6

vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_6 questa_lib/msim/xlconstant_v1_1_6

vlog -work util_vector_logic_v2_0_1 -64 \
"../../../../exp1.srcs/sources_1/bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/src/HA_util_vector_logic_0_0/sim/HA_util_vector_logic_0_0.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/src/HA_util_vector_logic_0_1/sim/HA_util_vector_logic_0_1.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/ipshared/bc19/sim/HA.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_0/sim/FA_HA_0_0.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_HA_0_1/sim/FA_HA_0_1.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/src/FA_util_vector_logic_0_0/sim/FA_util_vector_logic_0_0.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/ipshared/fd31/sim/FA.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_0/sim/binadd4b_FA_0_0.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_1/sim/binadd4b_FA_0_1.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_2/sim/binadd4b_FA_0_2.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/src/binadd4b_FA_0_3/sim/binadd4b_FA_0_3.v" \
"../../../bd/BCDAWOC/ipshared/ee05/sim/binadd4b.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_0/sim/BCDAWOC_binadd4b_0_0.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_binadd4b_0_1/sim/BCDAWOC_binadd4b_0_1.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_util_vector_logic_0_0/sim/BCDAWOC_util_vector_logic_0_0.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_util_vector_logic_0_1/sim/BCDAWOC_util_vector_logic_0_1.v" \

vlog -work xlconstant_v1_1_6 -64 \
"../../../../exp1.srcs/sources_1/bd/BCDAWOC/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/BCDAWOC/ip/BCDAWOC_xlconstant_0_0/sim/BCDAWOC_xlconstant_0_0.v" \
"../../../bd/BCDAWOC/sim/BCDAWOC.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_util_vector_logic_1_0/sim/BCDAWOC_util_vector_logic_1_0.v" \
"../../../bd/BCDAWOC/ip/BCDAWOC_util_vector_logic_2_0/sim/BCDAWOC_util_vector_logic_2_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

