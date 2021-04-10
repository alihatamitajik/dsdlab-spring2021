vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_6

vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_6 questa_lib/msim/xlconstant_v1_1_6

vlog -work util_vector_logic_v2_0_1 -64 \
"../../../../mod11.srcs/sources_1/bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_0/sim/FullAdder_util_vector_logic_0_0.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_1/sim/FullAdder_util_vector_logic_0_1.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_2/sim/FullAdder_util_vector_logic_0_2.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_3/sim/FullAdder_util_vector_logic_0_3.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/src/FullAdder_util_vector_logic_0_4/sim/FullAdder_util_vector_logic_0_4.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/ipshared/fdfd/sim/FullAdder.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_7/sim/Adder_4bit_FullAdder_0_7.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_0_8/sim/Adder_4bit_FullAdder_0_8.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_1_3/sim/Adder_4bit_FullAdder_1_3.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/src/Adder_4bit_FullAdder_2_3/sim/Adder_4bit_FullAdder_2_3.v" \
"../../../bd/bcdAdder/ipshared/b6f5/sim/Adder_4bit.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_0/sim/bcdAdder_Adder_4bit_0_0.v" \
"../../../bd/bcdAdder/ip/bcdAdder_Adder_4bit_0_1/sim/bcdAdder_Adder_4bit_0_1.v" \
"../../../bd/bcdAdder/ip/bcdAdder_util_vector_logic_0_0/sim/bcdAdder_util_vector_logic_0_0.v" \
"../../../bd/bcdAdder/ip/bcdAdder_util_vector_logic_0_1/sim/bcdAdder_util_vector_logic_0_1.v" \
"../../../bd/bcdAdder/ip/bcdAdder_util_vector_logic_1_0/sim/bcdAdder_util_vector_logic_1_0.v" \
"../../../bd/bcdAdder/ip/bcdAdder_util_vector_logic_2_0/sim/bcdAdder_util_vector_logic_2_0.v" \

vlog -work xlconstant_v1_1_6 -64 \
"../../../../mod11.srcs/sources_1/bd/bcdAdder/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 \
"../../../bd/bcdAdder/ip/bcdAdder_xlconstant_0_0/sim/bcdAdder_xlconstant_0_0.v" \
"../../../bd/bcdAdder/sim/bcdAdder.v" \

vlog -work xil_defaultlib \
"glbl.v"

