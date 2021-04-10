//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:30:56 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target NAND3_wrapper.bd
//Design      : NAND3_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module NAND3_wrapper
   (Op1,
    Op2,
    Op3,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  input [0:0]Op3;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Op3;
  wire [0:0]Res;

  NAND3 NAND3_i
       (.Op1(Op1),
        .Op2(Op2),
        .Op3(Op3),
        .Res(Res));
endmodule
