//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  9 19:40:57 2021
//Host        : Hatam-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target bcdAdder_wrapper.bd
//Design      : bcdAdder_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bcdAdder_wrapper
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

  wire [0:0]C_in;
  wire [0:0]C_out;
  wire [0:0]a1;
  wire [0:0]a2;
  wire [0:0]a3;
  wire [0:0]a4;
  wire [0:0]b1;
  wire [0:0]b2;
  wire [0:0]b3;
  wire [0:0]b4;
  wire [0:0]s1;
  wire [0:0]s2;
  wire [0:0]s3;
  wire [0:0]s4;

  bcdAdder bcdAdder_i
       (.C_in(C_in),
        .C_out(C_out),
        .a1(a1),
        .a2(a2),
        .a3(a3),
        .a4(a4),
        .b1(b1),
        .b2(b2),
        .b3(b3),
        .b4(b4),
        .s1(s1),
        .s2(s2),
        .s3(s3),
        .s4(s4));
endmodule
