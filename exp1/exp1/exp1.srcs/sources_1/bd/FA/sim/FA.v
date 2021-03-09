//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  9 10:08:21 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target FA.bd
//Design      : FA
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "FA,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=FA,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "FA.hwdef" *) 
module FA
   (A,
    B,
    C_in,
    C_out,
    S);
  input [0:0]A;
  input [0:0]B;
  input [0:0]C_in;
  output [0:0]C_out;
  output [0:0]S;

  wire [0:0]A_1;
  wire [0:0]B_1;
  wire [0:0]C_in_1;
  wire [0:0]HA_0_C_out;
  wire [0:0]HA_0_S;
  wire [0:0]HA_1_C_out;
  wire [0:0]HA_1_S;
  wire [0:0]util_vector_logic_0_Res;

  assign A_1 = A[0];
  assign B_1 = B[0];
  assign C_in_1 = C_in[0];
  assign C_out[0] = util_vector_logic_0_Res;
  assign S[0] = HA_1_S;
  FA_HA_0_0 HA_0
       (.A(A_1),
        .B(B_1),
        .C_out(HA_0_C_out),
        .S(HA_0_S));
  FA_HA_0_1 HA_1
       (.A(HA_0_S),
        .B(C_in_1),
        .C_out(HA_1_C_out),
        .S(HA_1_S));
  FA_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(HA_0_C_out),
        .Op2(HA_1_C_out),
        .Res(util_vector_logic_0_Res));
endmodule
