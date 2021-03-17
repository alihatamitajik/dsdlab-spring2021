//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:24:50 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target MSJKFF_wrapper.bd
//Design      : MSJKFF_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MSJKFF_wrapper
   (CLK);
  input [0:0]CLK;

  wire [0:0]CLK;

  MSJKFF MSJKFF_i
       (.CLK(CLK));
endmodule
