//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 10 07:23:10 2021
//Host        : Hatam-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target mod11.bd
//Design      : mod11
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mod11,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mod11,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=4,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mod11.hwdef" *) 
module mod11
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

  wire [0:0]Adder_4bit_0_s1;
  wire [0:0]Adder_4bit_0_s2;
  wire [0:0]Adder_4bit_0_s3;
  wire [0:0]Adder_4bit_0_s4;
  wire [0:0]Adder_4bit_1_s1;
  wire [0:0]Adder_4bit_1_s2;
  wire [0:0]Adder_4bit_1_s3;
  wire [0:0]Adder_4bit_1_s4;
  wire [0:0]a1_1;
  wire [0:0]a2_1;
  wire [0:0]a3_1;
  wire [0:0]a4_1;
  wire [0:0]b1_1;
  wire [0:0]b2_1;
  wire [0:0]b3_1;
  wire [0:0]b4_1;
  wire [0:0]bcdAdder_0_C_out;
  wire [0:0]bcdAdder_0_s1;
  wire [0:0]bcdAdder_0_s2;
  wire [0:0]bcdAdder_0_s3;
  wire [0:0]bcdAdder_0_s4;
  wire [0:0]bcdAdder_1_C_out;
  wire [0:0]bcdAdder_1_s1;
  wire [0:0]bcdAdder_1_s2;
  wire [0:0]bcdAdder_1_s3;
  wire [0:0]bcdAdder_1_s4;
  wire [0:0]c1_1;
  wire [0:0]c2_1;
  wire [0:0]c3_1;
  wire [0:0]c4_1;
  wire [0:0]d1_1;
  wire [0:0]d2_1;
  wire [0:0]d3_1;
  wire [0:0]d4_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]xlconstant_0_dout;

  assign a1_1 = a1[0];
  assign a2_1 = a2[0];
  assign a3_1 = a3[0];
  assign a4_1 = a4[0];
  assign b1_1 = b1[0];
  assign b2_1 = b2[0];
  assign b3_1 = b3[0];
  assign b4_1 = b4[0];
  assign c1_1 = c1[0];
  assign c2_1 = c2[0];
  assign c3_1 = c3[0];
  assign c4_1 = c4[0];
  assign d1_1 = d1[0];
  assign d2_1 = d2[0];
  assign d3_1 = d3[0];
  assign d4_1 = d4[0];
  assign o[0] = util_vector_logic_7_Res;
  mod11_Adder_4bit_0_0 Adder_4bit_0
       (.C_in(xlconstant_0_dout),
        .a1(bcdAdder_0_C_out),
        .a2(bcdAdder_0_C_out),
        .a3(bcdAdder_0_C_out),
        .a4(bcdAdder_0_C_out),
        .b1(bcdAdder_0_s1),
        .b2(bcdAdder_0_s2),
        .b3(bcdAdder_0_s3),
        .b4(bcdAdder_0_s4),
        .s1(Adder_4bit_0_s1),
        .s2(Adder_4bit_0_s2),
        .s3(Adder_4bit_0_s3),
        .s4(Adder_4bit_0_s4));
  mod11_Adder_4bit_0_1 Adder_4bit_1
       (.C_in(xlconstant_0_dout),
        .a1(bcdAdder_1_C_out),
        .a2(bcdAdder_1_C_out),
        .a3(bcdAdder_1_C_out),
        .a4(bcdAdder_1_C_out),
        .b1(bcdAdder_1_s1),
        .b2(bcdAdder_1_s2),
        .b3(bcdAdder_1_s3),
        .b4(bcdAdder_1_s4),
        .s1(Adder_4bit_1_s1),
        .s2(Adder_4bit_1_s2),
        .s3(Adder_4bit_1_s3),
        .s4(Adder_4bit_1_s4));
  mod11_bcdAdder_0_0 bcdAdder_0
       (.C_in(xlconstant_0_dout),
        .C_out(bcdAdder_0_C_out),
        .a1(a1_1),
        .a2(a2_1),
        .a3(a3_1),
        .a4(a4_1),
        .b1(c1_1),
        .b2(c2_1),
        .b3(c3_1),
        .b4(c4_1),
        .s1(bcdAdder_0_s1),
        .s2(bcdAdder_0_s2),
        .s3(bcdAdder_0_s3),
        .s4(bcdAdder_0_s4));
  mod11_bcdAdder_0_1 bcdAdder_1
       (.C_in(xlconstant_0_dout),
        .C_out(bcdAdder_1_C_out),
        .a1(d1_1),
        .a2(d2_1),
        .a3(d3_1),
        .a4(d4_1),
        .b1(b1_1),
        .b2(b2_1),
        .b3(b3_1),
        .b4(b4_1),
        .s1(bcdAdder_1_s1),
        .s2(bcdAdder_1_s2),
        .s3(bcdAdder_1_s3),
        .s4(bcdAdder_1_s4));
  mod11_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Adder_4bit_0_s1),
        .Op2(Adder_4bit_1_s1),
        .Res(util_vector_logic_0_Res));
  mod11_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(Adder_4bit_0_s2),
        .Op2(Adder_4bit_1_s2),
        .Res(util_vector_logic_1_Res));
  mod11_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(Adder_4bit_0_s3),
        .Op2(Adder_4bit_1_s3),
        .Res(util_vector_logic_2_Res));
  mod11_util_vector_logic_2_0 util_vector_logic_3
       (.Op1(Adder_4bit_0_s4),
        .Op2(Adder_4bit_1_s4),
        .Res(util_vector_logic_3_Res));
  mod11_util_vector_logic_1_1 util_vector_logic_4
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_4_Res));
  mod11_util_vector_logic_4_0 util_vector_logic_5
       (.Op1(util_vector_logic_2_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_5_Res));
  mod11_util_vector_logic_5_0 util_vector_logic_6
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_5_Res),
        .Res(util_vector_logic_6_Res));
  mod11_util_vector_logic_6_0 util_vector_logic_7
       (.Op1(util_vector_logic_6_Res),
        .Res(util_vector_logic_7_Res));
  mod11_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
