//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:24:17 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target JKFF.bd
//Design      : JKFF
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "JKFF,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=JKFF,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "JKFF.hwdef" *) 
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
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign CLK_1 = CLK[0];
  assign J_1 = J[0];
  assign K_1 = K[0];
  assign Q[0] = util_vector_logic_10_Res;
  assign Qn[0] = util_vector_logic_11_Res;
  JKFF_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(J_1),
        .Op2(CLK_1),
        .Res(util_vector_logic_0_Res));
  JKFF_util_vector_logic_0_6 util_vector_logic_1
       (.Op1(CLK_1),
        .Op2(K_1),
        .Res(util_vector_logic_1_Res));
  JKFF_util_vector_logic_7_1 util_vector_logic_10
       (.Op1(util_vector_logic_7_Res),
        .Res(util_vector_logic_10_Res));
  JKFF_util_vector_logic_10_0 util_vector_logic_11
       (.Op1(util_vector_logic_9_Res),
        .Res(util_vector_logic_11_Res));
  JKFF_util_vector_logic_0_7 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_11_Res),
        .Res(util_vector_logic_2_Res));
  JKFF_util_vector_logic_1_3 util_vector_logic_3
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_3_Res));
  JKFF_util_vector_logic_2_0 util_vector_logic_4
       (.Op1(util_vector_logic_2_Res),
        .Res(util_vector_logic_4_Res));
  JKFF_util_vector_logic_4_0 util_vector_logic_5
       (.Op1(util_vector_logic_3_Res),
        .Res(util_vector_logic_5_Res));
  JKFF_util_vector_logic_0_9 util_vector_logic_7
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_11_Res),
        .Res(util_vector_logic_7_Res));
  JKFF_util_vector_logic_7_0 util_vector_logic_9
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_5_Res),
        .Res(util_vector_logic_9_Res));
endmodule
