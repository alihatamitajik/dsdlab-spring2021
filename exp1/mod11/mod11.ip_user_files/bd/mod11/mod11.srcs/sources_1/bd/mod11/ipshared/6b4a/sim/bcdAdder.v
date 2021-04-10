//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 10 07:15:09 2021
//Host        : Hatam-Desktop running 64-bit major release  (build 9200)
//Command     : generate_target bcdAdder.bd
//Design      : bcdAdder
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bcdAdder,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bcdAdder,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bcdAdder.hwdef" *) 
module bcdAdder
   (C_in,
    C_out,
    a1,
    a2,
    a3,
    a4,
    b1,
    b2,
    b3,
    b4,
    s1,
    s2,
    s3,
    s4);
  input [0:0]C_in;
  output [0:0]C_out;
  input [0:0]a1;
  input [0:0]a2;
  input [0:0]a3;
  input [0:0]a4;
  input [0:0]b1;
  input [0:0]b2;
  input [0:0]b3;
  input [0:0]b4;
  output [0:0]s1;
  output [0:0]s2;
  output [0:0]s3;
  output [0:0]s4;

  wire [0:0]Adder_4bit_0_C_out;
  wire [0:0]Adder_4bit_0_s1;
  wire [0:0]Adder_4bit_0_s2;
  wire [0:0]Adder_4bit_0_s3;
  wire [0:0]Adder_4bit_0_s4;
  wire [0:0]Adder_4bit_1_s1;
  wire [0:0]Adder_4bit_1_s2;
  wire [0:0]Adder_4bit_1_s3;
  wire [0:0]Adder_4bit_1_s4;
  wire [0:0]C_in_1;
  wire [0:0]a1_1;
  wire [0:0]a2_1;
  wire [0:0]a3_1;
  wire [0:0]a4_1;
  wire [0:0]b1_1;
  wire [0:0]b2_1;
  wire [0:0]b3_1;
  wire [0:0]b4_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]xlconstant_0_dout;

  assign C_in_1 = C_in[0];
  assign C_out[0] = util_vector_logic_3_Res;
  assign a1_1 = a1[0];
  assign a2_1 = a2[0];
  assign a3_1 = a3[0];
  assign a4_1 = a4[0];
  assign b1_1 = b1[0];
  assign b2_1 = b2[0];
  assign b3_1 = b3[0];
  assign b4_1 = b4[0];
  assign s1[0] = Adder_4bit_1_s1;
  assign s2[0] = Adder_4bit_1_s2;
  assign s3[0] = Adder_4bit_1_s3;
  assign s4[0] = Adder_4bit_1_s4;
  bcdAdder_Adder_4bit_0_0 Adder_4bit_0
       (.C_in(C_in_1),
        .C_out(Adder_4bit_0_C_out),
        .a1(a1_1),
        .a2(a2_1),
        .a3(a3_1),
        .a4(a4_1),
        .b1(b1_1),
        .b2(b2_1),
        .b3(b3_1),
        .b4(b4_1),
        .s1(Adder_4bit_0_s1),
        .s2(Adder_4bit_0_s2),
        .s3(Adder_4bit_0_s3),
        .s4(Adder_4bit_0_s4));
  bcdAdder_Adder_4bit_0_1 Adder_4bit_1
       (.C_in(xlconstant_0_dout),
        .a1(Adder_4bit_0_s1),
        .a2(Adder_4bit_0_s2),
        .a3(Adder_4bit_0_s3),
        .a4(Adder_4bit_0_s4),
        .b1(xlconstant_0_dout),
        .b2(util_vector_logic_3_Res),
        .b3(util_vector_logic_3_Res),
        .b4(xlconstant_0_dout),
        .s1(Adder_4bit_1_s1),
        .s2(Adder_4bit_1_s2),
        .s3(Adder_4bit_1_s3),
        .s4(Adder_4bit_1_s4));
  bcdAdder_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Adder_4bit_0_s4),
        .Op2(Adder_4bit_0_s3),
        .Res(util_vector_logic_0_Res));
  bcdAdder_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(Adder_4bit_0_s4),
        .Op2(Adder_4bit_0_s2),
        .Res(util_vector_logic_1_Res));
  bcdAdder_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_2_Res));
  bcdAdder_util_vector_logic_2_0 util_vector_logic_3
       (.Op1(Adder_4bit_0_C_out),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_3_Res));
  bcdAdder_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
