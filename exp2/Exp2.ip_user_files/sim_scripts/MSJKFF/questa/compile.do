vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/xil_defaultlib

vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work util_vector_logic_v2_0_1 -64 \
"../../../../Exp2.srcs/sources_1/bd/MSJKFF/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/MSJKFF/ip/MSJKFF_util_vector_logic_0_0/sim/MSJKFF_util_vector_logic_0_0.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_0_0/sim/JKFF_util_vector_logic_0_0.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_0_6/sim/JKFF_util_vector_logic_0_6.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_0_7/sim/JKFF_util_vector_logic_0_7.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_1_3/sim/JKFF_util_vector_logic_1_3.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_2_0/sim/JKFF_util_vector_logic_2_0.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_4_0/sim/JKFF_util_vector_logic_4_0.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_0_9/sim/JKFF_util_vector_logic_0_9.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_7_0/sim/JKFF_util_vector_logic_7_0.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_7_1/sim/JKFF_util_vector_logic_7_1.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/src/JKFF_util_vector_logic_10_0/sim/JKFF_util_vector_logic_10_0.v" \
"../../../bd/MSJKFF/ipshared/2440/sim/JKFF.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_3/sim/MSJKFF_JKFF_0_3.v" \
"../../../bd/MSJKFF/ip/MSJKFF_JKFF_0_4/sim/MSJKFF_JKFF_0_4.v" \
"../../../bd/MSJKFF/sim/MSJKFF.v" \

vlog -work xil_defaultlib \
"glbl.v"

