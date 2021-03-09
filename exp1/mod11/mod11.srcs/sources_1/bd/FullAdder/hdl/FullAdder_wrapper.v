//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  9 14:41:28 2021
//Host        : Hatam-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target FullAdder_wrapper.bd
//Design      : FullAdder_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FullAdder_wrapper
   (A,
    B,
    C_in,
    C_out,
    Sum);
  input A;
  input [0:0]B;
  input [0:0]C_in;
  output [0:0]C_out;
  output [0:0]Sum;

  wire A;
  wire [0:0]B;
  wire [0:0]C_in;
  wire [0:0]C_out;
  wire [0:0]Sum;

  FullAdder FullAdder_i
       (.A(A),
        .B(B),
        .C_in(C_in),
        .C_out(C_out),
        .Sum(Sum));
endmodule
