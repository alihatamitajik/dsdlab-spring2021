//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:28:39 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target MY_NAND_wrapper.bd
//Design      : MY_NAND_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MY_NAND_wrapper
   (Op1,
    Op2,
    Res);
  input [0:0]Op1;
  input [0:0]Op2;
  output [0:0]Res;

  wire [0:0]Op1;
  wire [0:0]Op2;
  wire [0:0]Res;

  MY_NAND MY_NAND_i
       (.Op1(Op1),
        .Op2(Op2),
        .Res(Res));
endmodule
