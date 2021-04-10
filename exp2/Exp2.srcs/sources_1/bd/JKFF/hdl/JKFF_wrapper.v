//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:38:02 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target JKFF_wrapper.bd
//Design      : JKFF_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module JKFF_wrapper
   (CLK,
    J,
    K,
    Q,
    Qn);
  input [0:0]CLK;
  input [0:0]J;
  input [0:0]K;
  output [0:0]Q;
  output [0:0]Qn;

  wire [0:0]CLK;
  wire [0:0]J;
  wire [0:0]K;
  wire [0:0]Q;
  wire [0:0]Qn;

  JKFF JKFF_i
       (.CLK(CLK),
        .J(J),
        .K(K),
        .Q(Q),
        .Qn(Qn));
endmodule
