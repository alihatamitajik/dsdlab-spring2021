//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  9 14:41:28 2021
//Host        : Hatam-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target FullAdder.bd
//Design      : FullAdder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "FullAdder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FullAdder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "FullAdder.hwdef" *) 
module FullAdder
   (A,
    B,
    C_in,
    C_out,
    Sum);
  input A;
  input [0:0]B;
  input [0:0]C_in;
  output [0:0]C_out;
  output [0:0]Sum;

  wire A_1;
  wire [0:0]B_1;
  wire [0:0]C_in_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;

  assign A_1 = A;
  assign B_1 = B[0];
  assign C_in_1 = C_in[0];
  assign C_out[0] = util_vector_logic_4_Res;
  assign Sum[0] = util_vector_logic_1_Res;
  FullAdder_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(A_1),
        .Op2(B_1),
        .Res(util_vector_logic_0_Res));
  FullAdder_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(util_vector_logic_0_Res),
        .Op2(C_in_1),
        .Res(util_vector_logic_1_Res));
  FullAdder_util_vector_logic_0_2 util_vector_logic_2
       (.Op1(C_in_1),
        .Op2(util_vector_logic_0_Res),
        .Res(util_vector_logic_2_Res));
  FullAdder_util_vector_logic_0_3 util_vector_logic_3
       (.Op1(A_1),
        .Op2(B_1),
        .Res(util_vector_logic_3_Res));
  FullAdder_util_vector_logic_0_4 util_vector_logic_4
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_4_Res));
endmodule
