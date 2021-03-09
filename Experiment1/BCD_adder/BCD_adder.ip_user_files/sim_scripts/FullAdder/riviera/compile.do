vlib work
vlib riviera

vlib riviera/util_vector_logic_v2_0_1
vlib riviera/xil_defaultlib

vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../BCD_adder.srcs/sources_1/bd/FullAdder/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/FullAdder/ip/FullAdder_util_vector_logic_0_0/sim/FullAdder_util_vector_logic_0_0.v" \
"../../../bd/FullAdder/ip/FullAdder_HalfAdder_0_2/src/HalfAdder_util_vector_logic_0_0/sim/HalfAdder_util_vector_logic_0_0.v" \
"../../../bd/FullAdder/ip/FullAdder_HalfAdder_0_2/src/HalfAdder_util_vector_logic_1_0/sim/HalfAdder_util_vector_logic_1_0.v" \
"../../../bd/FullAdder/ipshared/94de/sim/HalfAdder.v" \
"../../../bd/FullAdder/ip/FullAdder_HalfAdder_0_2/sim/FullAdder_HalfAdder_0_2.v" \
"../../../bd/FullAdder/ip/FullAdder_HalfAdder_0_3/sim/FullAdder_HalfAdder_0_3.v" \
"../../../bd/FullAdder/sim/FullAdder.v" \

vlog -work xil_defaultlib \
"glbl.v"

