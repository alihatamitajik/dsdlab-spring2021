//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Mar  9 04:15:09 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target two_dig_add.bd
//Design      : two_dig_add
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "two_dig_add,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=two_dig_add,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=3,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=3,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "two_dig_add.hwdef" *) 
module two_dig_add
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    C_in,
    S0_0,
    S0_1,
    S0_2,
    S0_3,
    S1_0,
    S1_1,
    S1_2,
    S1_3);
  input [0:0]A0;
  input [0:0]A1;
  input [0:0]A2;
  input [0:0]A3;
  input [0:0]B0;
  input [0:0]B1;
  input [0:0]B2;
  input [0:0]B3;
  input [0:0]C_in;
  output [0:0]S0_0;
  output [0:0]S0_1;
  output [0:0]S0_2;
  output [0:0]S0_3;
  output [0:0]S1_0;
  output [0:0]S1_1;
  output [0:0]S1_2;
  output [0:0]S1_3;

  wire [0:0]A0_1;
  wire [0:0]A1_1;
  wire [0:0]A2_1;
  wire [0:0]A3_1;
  wire [0:0]B0_1;
  wire [0:0]B1_1;
  wire [0:0]B2_1;
  wire [0:0]B3_1;
  wire [0:0]C_in_1;
  wire [0:0]HalfAdder_0_C_out;
  wire [0:0]HalfAdder_0_S;
  wire [0:0]binary_4_bit_adder_0_C_out;
  wire [0:0]binary_4_bit_adder_0_S0;
  wire [0:0]binary_4_bit_adder_0_S1;
  wire [0:0]binary_4_bit_adder_0_S2;
  wire [0:0]binary_4_bit_adder_0_S3;
  wire [0:0]binary_4_bit_adder_1_C_out;
  wire [0:0]binary_4_bit_adder_1_S0;
  wire [0:0]binary_4_bit_adder_1_S1;
  wire [0:0]binary_4_bit_adder_1_S2;
  wire [0:0]binary_4_bit_adder_1_S3;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  assign A0_1 = A0[0];
  assign A1_1 = A1[0];
  assign A2_1 = A2[0];
  assign A3_1 = A3[0];
  assign B0_1 = B0[0];
  assign B1_1 = B1[0];
  assign B2_1 = B2[0];
  assign B3_1 = B3[0];
  assign C_in_1 = C_in[0];
  assign S0_0[0] = binary_4_bit_adder_1_S0;
  assign S0_1[0] = binary_4_bit_adder_1_S1;
  assign S0_2[0] = binary_4_bit_adder_1_S2;
  assign S0_3[0] = binary_4_bit_adder_1_S3;
  assign S1_0[0] = HalfAdder_0_S;
  assign S1_1[0] = HalfAdder_0_C_out;
  assign S1_2[0] = xlconstant_1_dout;
  assign S1_3[0] = xlconstant_2_dout;
  two_dig_add_HalfAdder_0_0 HalfAdder_0
       (.A(binary_4_bit_adder_1_C_out),
        .B(binary_4_bit_adder_0_C_out),
        .C_out(HalfAdder_0_C_out),
        .S(HalfAdder_0_S));
  two_dig_add_binary_4_bit_adder_0_0 binary_4_bit_adder_0
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .A3(A3_1),
        .B0(B0_1),
        .B1(B1_1),
        .B2(B2_1),
        .B3(B3_1),
        .C_in(C_in_1),
        .C_out(binary_4_bit_adder_0_C_out),
        .S0(binary_4_bit_adder_0_S0),
        .S1(binary_4_bit_adder_0_S1),
        .S2(binary_4_bit_adder_0_S2),
        .S3(binary_4_bit_adder_0_S3));
  two_dig_add_binary_4_bit_adder_1_0 binary_4_bit_adder_1
       (.A0(binary_4_bit_adder_0_S0),
        .A1(binary_4_bit_adder_0_S1),
        .A2(binary_4_bit_adder_0_S2),
        .A3(binary_4_bit_adder_0_S3),
        .B0(xlconstant_0_dout),
        .B1(util_vector_logic_0_Res),
        .B2(util_vector_logic_0_Res),
        .B3(xlconstant_0_dout),
        .C_in(xlconstant_0_dout),
        .C_out(binary_4_bit_adder_1_C_out),
        .S0(binary_4_bit_adder_1_S0),
        .S1(binary_4_bit_adder_1_S1),
        .S2(binary_4_bit_adder_1_S2),
        .S3(binary_4_bit_adder_1_S3));
  two_dig_add_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_vector_logic_1_Res),
        .Op2(binary_4_bit_adder_0_S3),
        .Res(util_vector_logic_0_Res));
  two_dig_add_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(binary_4_bit_adder_0_S1),
        .Op2(binary_4_bit_adder_0_S2),
        .Res(util_vector_logic_1_Res));
  two_dig_add_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  two_dig_add_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  two_dig_add_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule
