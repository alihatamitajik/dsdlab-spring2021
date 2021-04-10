//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 10 08:26:41 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target dig_reduce_wrapper.bd
//Design      : dig_reduce_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module dig_reduce_wrapper
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

  wire [0:0]A0;
  wire [0:0]A1;
  wire [0:0]A2;
  wire [0:0]A3;
  wire [0:0]B0;
  wire [0:0]B1;
  wire [0:0]B2;
  wire [0:0]B3;
  wire [0:0]C0;
  wire [0:0]C1;
  wire [0:0]C2;
  wire [0:0]C3;
  wire [0:0]D0;
  wire [0:0]D1;
  wire [0:0]D2;
  wire [0:0]D3;
  wire [0:0]S0;
  wire [0:0]S1;
  wire [0:0]S2;
  wire [0:0]S3;

  dig_reduce dig_reduce_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .C0(C0),
        .C1(C1),
        .C2(C2),
        .C3(C3),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
endmodule
