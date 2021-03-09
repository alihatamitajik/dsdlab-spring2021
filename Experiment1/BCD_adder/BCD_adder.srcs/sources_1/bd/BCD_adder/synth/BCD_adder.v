//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  9 04:32:29 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target BCD_adder.bd
//Design      : BCD_adder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BCD_adder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BCD_adder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BCD_adder.hwdef" *) 
module BCD_adder
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    C0,
    C1,
    C2,
    C3,
    CO0,
    CO1,
    CO2,
    CO3,
    S0_0,
    S0_1,
    S0_2,
    S0_3,
    S1_0,
    S1_1,
    S1_2,
    S1_3);
  input [0:0]A0;
  input [0:0]A1;
  input [0:0]A2;
  input [0:0]A3;
  input [0:0]B0;
  input [0:0]B1;
  input [0:0]B2;
  input [0:0]B3;
  input [0:0]C0;
  input [0:0]C1;
  input [0:0]C2;
  input [0:0]C3;
  output [0:0]CO0;
  output [0:0]CO1;
  output [0:0]CO2;
  output [0:0]CO3;
  output [0:0]S0_0;
  output [0:0]S0_1;
  output [0:0]S0_2;
  output [0:0]S0_3;
  output [0:0]S1_0;
  output [0:0]S1_1;
  output [0:0]S1_2;
  output [0:0]S1_3;

  wire [0:0]A0_1;
  wire [0:0]A1_1;
  wire [0:0]A2_1;
  wire [0:0]A3_1;
  wire [0:0]B0_1;
  wire [0:0]B1_1;
  wire [0:0]B2_1;
  wire [0:0]B3_1;
  wire [0:0]C0_1;
  wire [0:0]C1_1;
  wire [0:0]C2_1;
  wire [0:0]C3_1;
  wire [0:0]tda_0_S0_0;
  wire [0:0]tda_0_S0_1;
  wire [0:0]tda_0_S0_2;
  wire [0:0]tda_0_S0_3;
  wire [0:0]tda_0_S1_0;
  wire [0:0]tda_0_S1_1;
  wire [0:0]tda_0_S1_2;
  wire [0:0]tda_0_S1_3;
  wire [0:0]tda_1_S0_0;
  wire [0:0]tda_1_S0_1;
  wire [0:0]tda_1_S0_2;
  wire [0:0]tda_1_S0_3;
  wire [0:0]tda_1_S1_0;
  wire [0:0]tda_1_S1_1;
  wire [0:0]tda_1_S1_2;
  wire [0:0]tda_1_S1_3;
  wire [0:0]xlconstant_0_dout;

  assign A0_1 = A0[0];
  assign A1_1 = A1[0];
  assign A2_1 = A2[0];
  assign A3_1 = A3[0];
  assign B0_1 = B0[0];
  assign B1_1 = B1[0];
  assign B2_1 = B2[0];
  assign B3_1 = B3[0];
  assign C0_1 = C0[0];
  assign C1_1 = C1[0];
  assign C2_1 = C2[0];
  assign C3_1 = C3[0];
  assign CO0[0] = tda_1_S1_0;
  assign CO1[0] = tda_1_S1_1;
  assign CO2[0] = tda_1_S1_2;
  assign CO3[0] = tda_1_S1_3;
  assign S0_0[0] = tda_0_S0_0;
  assign S0_1[0] = tda_0_S0_1;
  assign S0_2[0] = tda_0_S0_2;
  assign S0_3[0] = tda_0_S0_3;
  assign S1_0[0] = tda_1_S0_0;
  assign S1_1[0] = tda_1_S0_1;
  assign S1_2[0] = tda_1_S0_2;
  assign S1_3[0] = tda_1_S0_3;
  BCD_adder_tda_0_2 tda_0
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .A3(A3_1),
        .B0(B0_1),
        .B1(B1_1),
        .B2(B2_1),
        .B3(B3_1),
        .C_in(xlconstant_0_dout),
        .S0_0(tda_0_S0_0),
        .S0_1(tda_0_S0_1),
        .S0_2(tda_0_S0_2),
        .S0_3(tda_0_S0_3),
        .S1_0(tda_0_S1_0),
        .S1_1(tda_0_S1_1),
        .S1_2(tda_0_S1_2),
        .S1_3(tda_0_S1_3));
  BCD_adder_tda_0_3 tda_1
       (.A0(tda_0_S1_0),
        .A1(tda_0_S1_1),
        .A2(tda_0_S1_2),
        .A3(tda_0_S1_3),
        .B0(C0_1),
        .B1(C1_1),
        .B2(C2_1),
        .B3(C3_1),
        .C_in(xlconstant_0_dout),
        .S0_0(tda_1_S0_0),
        .S0_1(tda_1_S0_1),
        .S0_2(tda_1_S0_2),
        .S0_3(tda_1_S0_3),
        .S1_0(tda_1_S1_0),
        .S1_1(tda_1_S1_1),
        .S1_2(tda_1_S1_2),
        .S1_3(tda_1_S1_3));
  BCD_adder_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
