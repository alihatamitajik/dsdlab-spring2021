//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 10 06:31:50 2021
//Host        : Hatam-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target Adder_4bit.bd
//Design      : Adder_4bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Adder_4bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Adder_4bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=4,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Adder_4bit.hwdef" *) 
module Adder_4bit
   (C_in,
    C_out,
    a1,
    a2,
    a3,
    a4,
    b1,
    b2,
    b3,
    b4,
    s1,
    s2,
    s3,
    s4);
  input [0:0]C_in;
  output [0:0]C_out;
  input [0:0]a1;
  input [0:0]a2;
  input [0:0]a3;
  input [0:0]a4;
  input [0:0]b1;
  input [0:0]b2;
  input [0:0]b3;
  input [0:0]b4;
  output [0:0]s1;
  output [0:0]s2;
  output [0:0]s3;
  output [0:0]s4;

  wire [0:0]C_in_1;
  wire [0:0]FullAdder_0_C_out;
  wire [0:0]FullAdder_0_Sum;
  wire [0:0]FullAdder_1_C_out;
  wire [0:0]FullAdder_1_Sum;
  wire [0:0]FullAdder_2_C_out;
  wire [0:0]FullAdder_2_Sum;
  wire [0:0]FullAdder_3_C_out;
  wire [0:0]FullAdder_3_Sum;
  wire [0:0]a1_1;
  wire [0:0]a2_1;
  wire [0:0]a3_1;
  wire [0:0]a4_1;
  wire [0:0]b1_1;
  wire [0:0]b2_1;
  wire [0:0]b3_1;
  wire [0:0]b4_1;

  assign C_in_1 = C_in[0];
  assign C_out[0] = FullAdder_3_C_out;
  assign a1_1 = a1[0];
  assign a2_1 = a2[0];
  assign a3_1 = a3[0];
  assign a4_1 = a4[0];
  assign b1_1 = b1[0];
  assign b2_1 = b2[0];
  assign b3_1 = b3[0];
  assign b4_1 = b4[0];
  assign s1[0] = FullAdder_0_Sum;
  assign s2[0] = FullAdder_1_Sum;
  assign s3[0] = FullAdder_2_Sum;
  assign s4[0] = FullAdder_3_Sum;
  Adder_4bit_FullAdder_0_7 FullAdder_0
       (.A(a1_1),
        .B(b1_1),
        .C_in(C_in_1),
        .C_out(FullAdder_0_C_out),
        .Sum(FullAdder_0_Sum));
  Adder_4bit_FullAdder_0_8 FullAdder_1
       (.A(a2_1),
        .B(b2_1),
        .C_in(FullAdder_0_C_out),
        .C_out(FullAdder_1_C_out),
        .Sum(FullAdder_1_Sum));
  Adder_4bit_FullAdder_1_3 FullAdder_2
       (.A(a3_1),
        .B(b3_1),
        .C_in(FullAdder_1_C_out),
        .C_out(FullAdder_2_C_out),
        .Sum(FullAdder_2_Sum));
  Adder_4bit_FullAdder_2_3 FullAdder_3
       (.A(a4_1),
        .B(b4_1),
        .C_in(FullAdder_2_C_out),
        .C_out(FullAdder_3_C_out),
        .Sum(FullAdder_3_Sum));
endmodule
