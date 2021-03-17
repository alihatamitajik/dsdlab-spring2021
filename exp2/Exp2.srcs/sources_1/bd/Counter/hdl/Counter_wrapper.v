//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 08:30:38 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target Counter_wrapper.bd
//Design      : Counter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Counter_wrapper
   (A0,
    A1,
    A2,
    A3,
    CLK,
    Enable,
    U);
  output [0:0]A0;
  output [0:0]A1;
  output [0:0]A2;
  output [0:0]A3;
  input [0:0]CLK;
  input [0:0]Enable;
  input [0:0]U;

  wire [0:0]A0;
  wire [0:0]A1;
  wire [0:0]A2;
  wire [0:0]A3;
  wire [0:0]CLK;
  wire [0:0]Enable;
  wire [0:0]U;

  Counter Counter_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .CLK(CLK),
        .Enable(Enable),
        .U(U));
endmodule
