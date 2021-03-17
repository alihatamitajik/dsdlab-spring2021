vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/util_vector_logic_v2_0_1

vmap xil_defaultlib activehdl/xil_defaultlib
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/JKFF/sim/JKFF.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 \
"../../../../Exp2.srcs/sources_1/bd/JKFF/ip/JKFF_MY_NAND_0_1/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/JKFF/ip/JKFF_MY_NAND_0_1/src/MY_NAND_util_vector_logic_0_0/sim/MY_NAND_util_vector_logic_0_0.v" \
"../../../bd/JKFF/ip/JKFF_MY_NAND_0_1/src/MY_NAND_util_vector_logic_0_1/sim/MY_NAND_util_vector_logic_0_1.v" \
"../../../bd/JKFF/ipshared/0e20/sim/MY_NAND.v" \
"../../../bd/JKFF/ip/JKFF_MY_NAND_0_1/sim/JKFF_MY_NAND_0_1.v" \
"../../../bd/JKFF/ip/JKFF_MY_NAND_1_1/sim/JKFF_MY_NAND_1_1.v" \
"../../../bd/JKFF/ip/JKFF_MY_NAND_2_1/sim/JKFF_MY_NAND_2_1.v" \
"../../../bd/JKFF/ip/JKFF_MY_NAND_3_1/sim/JKFF_MY_NAND_3_1.v" \
"../../../bd/JKFF/ip/JKFF_MY_NAND_4_1/sim/JKFF_MY_NAND_4_1.v" \
"../../../bd/JKFF/ip/JKFF_MY_NAND_5_1/sim/JKFF_MY_NAND_5_1.v" \
"../../../bd/JKFF/ip/JKFF_NAND3_0_1/src/NAND3_util_vector_logic_0_0/sim/NAND3_util_vector_logic_0_0.v" \
"../../../bd/JKFF/ip/JKFF_NAND3_0_1/src/NAND3_util_vector_logic_0_1/sim/NAND3_util_vector_logic_0_1.v" \
"../../../bd/JKFF/ip/JKFF_NAND3_0_1/src/NAND3_util_vector_logic_1_0/sim/NAND3_util_vector_logic_1_0.v" \
"../../../bd/JKFF/ipshared/fb8f/sim/NAND3.v" \
"../../../bd/JKFF/ip/JKFF_NAND3_0_1/sim/JKFF_NAND3_0_1.v" \
"../../../bd/JKFF/ip/JKFF_NAND3_1_1/sim/JKFF_NAND3_1_1.v" \
"../../../bd/JKFF/ip/JKFF_util_vector_logic_0_11/sim/JKFF_util_vector_logic_0_11.v" \

vlog -work xil_defaultlib \
"glbl.v"

