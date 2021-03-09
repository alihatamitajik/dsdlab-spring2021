//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  9 01:25:16 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target HalfAdder.bd
//Design      : HalfAdder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "HalfAdder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=HalfAdder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "HalfAdder.hwdef" *) 
module HalfAdder
   (A,
    B,
    C_out,
    S);
  input [0:0]A;
  input [0:0]B;
  output [0:0]C_out;
  output [0:0]S;

  wire [0:0]A_1;
  wire [0:0]B_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;

  assign A_1 = A[0];
  assign B_1 = B[0];
  assign C_out[0] = util_vector_logic_1_Res;
  assign S[0] = util_vector_logic_0_Res;
  HalfAdder_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(A_1),
        .Op2(B_1),
        .Res(util_vector_logic_0_Res));
  HalfAdder_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(A_1),
        .Op2(B_1),
        .Res(util_vector_logic_1_Res));
endmodule
