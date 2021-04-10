//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:30:56 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target NAND3.bd
//Design      : NAND3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "NAND3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=NAND3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "NAND3.hwdef" *) 
module NAND3
   (Op1,
    Op2,
    Op3,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  input [0:0]Op3;
  output [0:0]Res;

  wire [0:0]Op1_1;
  wire [0:0]Op2_1;
  wire [0:0]Op3_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;

  assign Op1_1 = Op1[0];
  assign Op2_1 = Op2[0];
  assign Op3_1 = Op3[0];
  assign Res[0] = util_vector_logic_2_Res;
  NAND3_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Op1_1),
        .Op2(Op2_1),
        .Res(util_vector_logic_0_Res));
  NAND3_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(Op3_1),
        .Res(util_vector_logic_1_Res));
  NAND3_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(util_vector_logic_1_Res),
        .Res(util_vector_logic_2_Res));
endmodule
