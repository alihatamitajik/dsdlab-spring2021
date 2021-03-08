//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Mon Mar  8 22:30:30 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target binary_4_bit_adder.bd
//Design      : binary_4_bit_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "binary_4_bit_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=binary_4_bit_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=4,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "binary_4_bit_adder.hwdef" *) 
module binary_4_bit_adder
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    C_in,
    C_out,
    S0,
    S1,
    S2,
    S3);
  input [0:0]A0;
  input [0:0]A1;
  input [0:0]A2;
  input [0:0]A3;
  input [0:0]B0;
  input [0:0]B1;
  input [0:0]B2;
  input [0:0]B3;
  input [0:0]C_in;
  output [0:0]C_out;
  output [0:0]S0;
  output [0:0]S1;
  output [0:0]S2;
  output [0:0]S3;

  wire [0:0]A0_1;
  wire [0:0]A1_1;
  wire [0:0]A2_1;
  wire [0:0]A3_1;
  wire [0:0]B0_1;
  wire [0:0]B1_1;
  wire [0:0]B2_1;
  wire [0:0]B3_1;
  wire [0:0]C_in_1;
  wire [0:0]FullAdder_0_C_out;
  wire [0:0]FullAdder_0_S;
  wire [0:0]FullAdder_1_C_out;
  wire [0:0]FullAdder_1_S;
  wire [0:0]FullAdder_2_C_out;
  wire [0:0]FullAdder_2_S;
  wire [0:0]FullAdder_3_C_out;
  wire [0:0]FullAdder_3_S;

  assign A0_1 = A0[0];
  assign A1_1 = A1[0];
  assign A2_1 = A2[0];
  assign A3_1 = A3[0];
  assign B0_1 = B0[0];
  assign B1_1 = B1[0];
  assign B2_1 = B2[0];
  assign B3_1 = B3[0];
  assign C_in_1 = C_in[0];
  assign C_out[0] = FullAdder_3_C_out;
  assign S0[0] = FullAdder_0_S;
  assign S1[0] = FullAdder_1_S;
  assign S2[0] = FullAdder_2_S;
  assign S3[0] = FullAdder_3_S;
  binary_4_bit_adder_FullAdder_0_0 FullAdder_0
       (.A(A0_1),
        .B(B0_1),
        .C_in(C_in_1),
        .C_out(FullAdder_0_C_out),
        .S(FullAdder_0_S));
  binary_4_bit_adder_FullAdder_0_1 FullAdder_1
       (.A(A1_1),
        .B(B1_1),
        .C_in(FullAdder_0_C_out),
        .C_out(FullAdder_1_C_out),
        .S(FullAdder_1_S));
  binary_4_bit_adder_FullAdder_0_2 FullAdder_2
       (.A(A2_1),
        .B(B2_1),
        .C_in(FullAdder_1_C_out),
        .C_out(FullAdder_2_C_out),
        .S(FullAdder_2_S));
  binary_4_bit_adder_FullAdder_0_3 FullAdder_3
       (.A(A3_1),
        .B(B3_1),
        .C_in(FullAdder_2_C_out),
        .C_out(FullAdder_3_C_out),
        .S(FullAdder_3_S));
endmodule
