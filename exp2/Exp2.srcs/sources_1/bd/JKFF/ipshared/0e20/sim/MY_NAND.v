//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:28:39 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target MY_NAND.bd
//Design      : MY_NAND
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MY_NAND,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MY_NAND,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "MY_NAND.hwdef" *) 
module MY_NAND
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1_1;
  wire [0:0]Op2_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;

  assign Op1_1 = Op1[0];
  assign Op2_1 = Op2[0];
  assign Res[0] = util_vector_logic_1_Res;
  MY_NAND_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Op1_1),
        .Op2(Op2_1),
        .Res(util_vector_logic_0_Res));
  MY_NAND_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_1_Res));
endmodule
