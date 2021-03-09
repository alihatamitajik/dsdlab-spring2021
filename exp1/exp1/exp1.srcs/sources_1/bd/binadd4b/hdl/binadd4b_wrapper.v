//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  9 10:14:41 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target binadd4b_wrapper.bd
//Design      : binadd4b_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module binadd4b_wrapper
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

  wire [0:0]A0;
  wire [0:0]A1;
  wire [0:0]A2;
  wire [0:0]A3;
  wire [0:0]B0;
  wire [0:0]B1;
  wire [0:0]B2;
  wire [0:0]B3;
  wire [0:0]C_in;
  wire [0:0]C_out;
  wire [0:0]S0;
  wire [0:0]S1;
  wire [0:0]S2;
  wire [0:0]S3;

  binadd4b binadd4b_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .C_in(C_in),
        .C_out(C_out),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
endmodule
