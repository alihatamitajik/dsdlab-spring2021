//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 08:30:49 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target Exp2_wrapper.bd
//Design      : Exp2_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Exp2_wrapper
   (A0,
    A1,
    A2,
    A3,
    CLK,
    Close_d,
    Ent,
    IN_d,
    OUT_d,
    Open_d,
    T);
  output [0:0]A0;
  output [0:0]A1;
  output [0:0]A2;
  output [0:0]A3;
  input [0:0]CLK;
  output [0:0]Close_d;
  input [0:0]Ent;
  input [0:0]IN_d;
  input [0:0]OUT_d;
  output [0:0]Open_d;
  input [0:0]T;

  wire [0:0]A0;
  wire [0:0]A1;
  wire [0:0]A2;
  wire [0:0]A3;
  wire [0:0]CLK;
  wire [0:0]Close_d;
  wire [0:0]Ent;
  wire [0:0]IN_d;
  wire [0:0]OUT_d;
  wire [0:0]Open_d;
  wire [0:0]T;

  Exp2 Exp2_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .CLK(CLK),
        .Close_d(Close_d),
        .Ent(Ent),
        .IN_d(IN_d),
        .OUT_d(OUT_d),
        .Open_d(Open_d),
        .T(T));
endmodule
