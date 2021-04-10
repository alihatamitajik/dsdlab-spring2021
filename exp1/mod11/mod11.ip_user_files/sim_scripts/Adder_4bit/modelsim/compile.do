vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/util_vector_logic_v2_0_1

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1

vlog -work xil_defaultlib -64 -incr \
"../../../bd/Adder_4bit/sim/Adder_4bit.v" \

vlog -work util_vector_logic_v2_0_1 -64 -incr \
"../../../../mod11.srcs/sources_1/bd/Adder_4bit/ip/Adder_4bit_FullAdder_0_7/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_0/sim/FullAdder_util_vector_logic_0_0.v" \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_1/sim/FullAdder_util_vector_logic_0_1.v" \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_2/sim/FullAdder_util_vector_logic_0_2.v" \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_3/sim/FullAdder_util_vector_logic_0_3.v" \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_4/sim/FullAdder_util_vector_logic_0_4.v" \
"../../../bd/Adder_4bit/ipshared/fdfd/sim/FullAdder.v" \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_0_7/sim/Adder_4bit_FullAdder_0_7.v" \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_0_8/sim/Adder_4bit_FullAdder_0_8.v" \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_1_3/sim/Adder_4bit_FullAdder_1_3.v" \
"../../../bd/Adder_4bit/ip/Adder_4bit_FullAdder_2_3/sim/Adder_4bit_FullAdder_2_3.v" \

vlog -work xil_defaultlib \
"glbl.v"

