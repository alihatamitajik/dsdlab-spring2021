//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:38:02 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target JKFF.bd
//Design      : JKFF
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "JKFF,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=JKFF,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=8,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=8,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "JKFF.hwdef" *) 
module JKFF
   (CLK,
    J,
    K,
    Q,
    Qn);
  input [0:0]CLK;
  input [0:0]J;
  input [0:0]K;
  output [0:0]Q;
  output [0:0]Qn;

  wire [0:0]CLK_1;
  wire [0:0]J_1;
  wire [0:0]K_1;
  wire [0:0]MY_NAND_0_Res;
  wire [0:0]MY_NAND_1_Res;
  wire [0:0]MY_NAND_2_Res;
  wire [0:0]MY_NAND_3_Res;
  wire [0:0]MY_NAND_4_Res;
  wire [0:0]MY_NAND_5_Res;
  wire [0:0]NAND3_0_Res;
  wire [0:0]NAND3_1_Res;
  wire [0:0]Net;

  assign CLK_1 = CLK[0];
  assign J_1 = J[0];
  assign K_1 = K[0];
  assign Q[0] = MY_NAND_4_Res;
  assign Qn[0] = MY_NAND_5_Res;
  JKFF_MY_NAND_0_1 MY_NAND_0
       (.Op1(NAND3_0_Res),
        .Op2(MY_NAND_1_Res),
        .Res(MY_NAND_0_Res));
  JKFF_MY_NAND_1_1 MY_NAND_1
       (.Op1(MY_NAND_0_Res),
        .Op2(NAND3_1_Res),
        .Res(MY_NAND_1_Res));
  JKFF_MY_NAND_2_1 MY_NAND_2
       (.Op1(MY_NAND_0_Res),
        .Op2(Net),
        .Res(MY_NAND_2_Res));
  JKFF_MY_NAND_3_1 MY_NAND_3
       (.Op1(Net),
        .Op2(MY_NAND_1_Res),
        .Res(MY_NAND_3_Res));
  JKFF_MY_NAND_4_1 MY_NAND_4
       (.Op1(MY_NAND_2_Res),
        .Op2(MY_NAND_5_Res),
        .Res(MY_NAND_4_Res));
  JKFF_MY_NAND_5_1 MY_NAND_5
       (.Op1(MY_NAND_4_Res),
        .Op2(MY_NAND_3_Res),
        .Res(MY_NAND_5_Res));
  JKFF_NAND3_0_1 NAND3_0
       (.Op1(MY_NAND_5_Res),
        .Op2(J_1),
        .Op3(CLK_1),
        .Res(NAND3_0_Res));
  JKFF_NAND3_1_1 NAND3_1
       (.Op1(CLK_1),
        .Op2(K_1),
        .Op3(MY_NAND_4_Res),
        .Res(NAND3_1_Res));
  JKFF_util_vector_logic_0_11 util_vector_logic_0
       (.Op1(CLK_1),
        .Res(Net));
endmodule
