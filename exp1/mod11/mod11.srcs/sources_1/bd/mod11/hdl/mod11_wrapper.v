//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 10 07:23:10 2021
//Host        : Hatam-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target mod11_wrapper.bd
//Design      : mod11_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mod11_wrapper
   (a1,
    a2,
    a3,
    a4,
    b1,
    b2,
    b3,
    b4,
    c1,
    c2,
    c3,
    c4,
    d1,
    d2,
    d3,
    d4,
    o);
  input [0:0]a1;
  input [0:0]a2;
  input [0:0]a3;
  input [0:0]a4;
  input [0:0]b1;
  input [0:0]b2;
  input [0:0]b3;
  input [0:0]b4;
  input [0:0]c1;
  input [0:0]c2;
  input [0:0]c3;
  input [0:0]c4;
  input [0:0]d1;
  input [0:0]d2;
  input [0:0]d3;
  input [0:0]d4;
  output [0:0]o;

  wire [0:0]a1;
  wire [0:0]a2;
  wire [0:0]a3;
  wire [0:0]a4;
  wire [0:0]b1;
  wire [0:0]b2;
  wire [0:0]b3;
  wire [0:0]b4;
  wire [0:0]c1;
  wire [0:0]c2;
  wire [0:0]c3;
  wire [0:0]c4;
  wire [0:0]d1;
  wire [0:0]d2;
  wire [0:0]d3;
  wire [0:0]d4;
  wire [0:0]o;

  mod11 mod11_i
       (.a1(a1),
        .a2(a2),
        .a3(a3),
        .a4(a4),
        .b1(b1),
        .b2(b2),
        .b3(b3),
        .b4(b4),
        .c1(c1),
        .c2(c2),
        .c3(c3),
        .c4(c4),
        .d1(d1),
        .d2(d2),
        .d3(d3),
        .d4(d4),
        .o(o));
endmodule
