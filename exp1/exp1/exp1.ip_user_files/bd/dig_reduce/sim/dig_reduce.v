//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 10 03:11:57 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target dig_reduce.bd
//Design      : dig_reduce
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "dig_reduce,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=dig_reduce,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=5,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=5,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "dig_reduce.hwdef" *) 
module dig_reduce
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
    D0,
    D1,
    D2,
    D3,
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
  input [0:0]C0;
  input [0:0]C1;
  input [0:0]C2;
  input [0:0]C3;
  input [0:0]D0;
  input [0:0]D1;
  input [0:0]D2;
  input [0:0]D3;
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
  wire [0:0]BCDAWOC_0_C_out;
  wire [0:0]BCDAWOC_0_S0;
  wire [0:0]BCDAWOC_0_S1;
  wire [0:0]BCDAWOC_0_S2;
  wire [0:0]BCDAWOC_0_S3;
  wire [0:0]BCDAWOC_1_C_out;
  wire [0:0]BCDAWOC_1_S0;
  wire [0:0]BCDAWOC_1_S1;
  wire [0:0]BCDAWOC_1_S2;
  wire [0:0]BCDAWOC_1_S3;
  wire [0:0]BCDAWOC_2_C_out;
  wire [0:0]BCDAWOC_2_S0;
  wire [0:0]BCDAWOC_2_S1;
  wire [0:0]BCDAWOC_2_S2;
  wire [0:0]BCDAWOC_2_S3;
  wire [0:0]BCDAWOC_3_C_out;
  wire [0:0]BCDAWOC_3_S0;
  wire [0:0]BCDAWOC_3_S1;
  wire [0:0]BCDAWOC_3_S2;
  wire [0:0]BCDAWOC_3_S3;
  wire [0:0]BCDAWOC_4_S0;
  wire [0:0]BCDAWOC_4_S1;
  wire [0:0]BCDAWOC_4_S2;
  wire [0:0]BCDAWOC_4_S3;
  wire [0:0]C0_1;
  wire [0:0]C1_1;
  wire [0:0]C2_1;
  wire [0:0]C3_1;
  wire [0:0]D0_1;
  wire [0:0]D1_1;
  wire [0:0]D2_1;
  wire [0:0]D3_1;
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
  assign D0_1 = D0[0];
  assign D1_1 = D1[0];
  assign D2_1 = D2[0];
  assign D3_1 = D3[0];
  assign S0[0] = BCDAWOC_4_S0;
  assign S1[0] = BCDAWOC_4_S1;
  assign S2[0] = BCDAWOC_4_S2;
  assign S3[0] = BCDAWOC_4_S3;
  dig_reduce_BCDAWOC_0_0 BCDAWOC_0
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .A3(A3_1),
        .B0(B0_1),
        .B1(B1_1),
        .B2(B2_1),
        .B3(B3_1),
        .C_in(xlconstant_0_dout),
        .C_out(BCDAWOC_0_C_out),
        .S0(BCDAWOC_0_S0),
        .S1(BCDAWOC_0_S1),
        .S2(BCDAWOC_0_S2),
        .S3(BCDAWOC_0_S3));
  dig_reduce_BCDAWOC_0_1 BCDAWOC_1
       (.A0(C0_1),
        .A1(C1_1),
        .A2(C2_1),
        .A3(C3_1),
        .B0(D0_1),
        .B1(D1_1),
        .B2(D2_1),
        .B3(D3_1),
        .C_in(xlconstant_0_dout),
        .C_out(BCDAWOC_1_C_out),
        .S0(BCDAWOC_1_S0),
        .S1(BCDAWOC_1_S1),
        .S2(BCDAWOC_1_S2),
        .S3(BCDAWOC_1_S3));
  dig_reduce_BCDAWOC_0_2 BCDAWOC_2
       (.A0(BCDAWOC_0_S0),
        .A1(BCDAWOC_0_S1),
        .A2(BCDAWOC_0_S2),
        .A3(BCDAWOC_0_S3),
        .B0(BCDAWOC_1_S0),
        .B1(BCDAWOC_1_S1),
        .B2(BCDAWOC_1_S2),
        .B3(BCDAWOC_1_S3),
        .C_in(BCDAWOC_1_C_out),
        .C_out(BCDAWOC_2_C_out),
        .S0(BCDAWOC_2_S0),
        .S1(BCDAWOC_2_S1),
        .S2(BCDAWOC_2_S2),
        .S3(BCDAWOC_2_S3));
  dig_reduce_BCDAWOC_2_1 BCDAWOC_3
       (.A0(BCDAWOC_0_C_out),
        .A1(xlconstant_0_dout),
        .A2(xlconstant_0_dout),
        .A3(xlconstant_0_dout),
        .B0(BCDAWOC_2_S0),
        .B1(BCDAWOC_2_S1),
        .B2(BCDAWOC_2_S2),
        .B3(BCDAWOC_2_S3),
        .C_in(BCDAWOC_2_C_out),
        .C_out(BCDAWOC_3_C_out),
        .S0(BCDAWOC_3_S0),
        .S1(BCDAWOC_3_S1),
        .S2(BCDAWOC_3_S2),
        .S3(BCDAWOC_3_S3));
  dig_reduce_BCDAWOC_3_0 BCDAWOC_4
       (.A0(xlconstant_0_dout),
        .A1(xlconstant_0_dout),
        .A2(xlconstant_0_dout),
        .A3(xlconstant_0_dout),
        .B0(BCDAWOC_3_S0),
        .B1(BCDAWOC_3_S1),
        .B2(BCDAWOC_3_S2),
        .B3(BCDAWOC_3_S3),
        .C_in(BCDAWOC_3_C_out),
        .S0(BCDAWOC_4_S0),
        .S1(BCDAWOC_4_S1),
        .S2(BCDAWOC_4_S2),
        .S3(BCDAWOC_4_S3));
  dig_reduce_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
