//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 10 09:13:02 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target BCDAWOC.bd
//Design      : BCDAWOC
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BCDAWOC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BCDAWOC,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BCDAWOC.hwdef" *) 
module BCDAWOC
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    C_in,
    C_out,
    S0,
    S1,
    S2,
    S3);
  input [0:0]A0;
  input [0:0]A1;
  input [0:0]A2;
  input [0:0]A3;
  input [0:0]B0;
  input [0:0]B1;
  input [0:0]B2;
  input [0:0]B3;
  input [0:0]C_in;
  output [0:0]C_out;
  output [0:0]S0;
  output [0:0]S1;
  output [0:0]S2;
  output [0:0]S3;

  wire [0:0]A0_1;
  wire [0:0]A1_1;
  wire [0:0]A2_1;
  wire [0:0]A3_1;
  wire [0:0]B0_1;
  wire [0:0]B1_1;
  wire [0:0]B2_1;
  wire [0:0]B3_1;
  wire [0:0]C_in_1;
  wire [0:0]binadd4b_0_C_out;
  wire [0:0]binadd4b_0_S0;
  wire [0:0]binadd4b_0_S1;
  wire [0:0]binadd4b_0_S2;
  wire [0:0]binadd4b_0_S3;
  wire [0:0]binadd4b_1_C_out;
  wire [0:0]binadd4b_1_S0;
  wire [0:0]binadd4b_1_S1;
  wire [0:0]binadd4b_1_S2;
  wire [0:0]binadd4b_1_S3;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]xlconstant_0_dout;

  assign A0_1 = A0[0];
  assign A1_1 = A1[0];
  assign A2_1 = A2[0];
  assign A3_1 = A3[0];
  assign B0_1 = B0[0];
  assign B1_1 = B1[0];
  assign B2_1 = B2[0];
  assign B3_1 = B3[0];
  assign C_in_1 = C_in[0];
  assign C_out[0] = util_vector_logic_3_Res;
  assign S0[0] = binadd4b_1_S0;
  assign S1[0] = binadd4b_1_S1;
  assign S2[0] = binadd4b_1_S2;
  assign S3[0] = binadd4b_1_S3;
  BCDAWOC_binadd4b_0_0 binadd4b_0
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .A3(A3_1),
        .B0(B0_1),
        .B1(B1_1),
        .B2(B2_1),
        .B3(B3_1),
        .C_in(C_in_1),
        .C_out(binadd4b_0_C_out),
        .S0(binadd4b_0_S0),
        .S1(binadd4b_0_S1),
        .S2(binadd4b_0_S2),
        .S3(binadd4b_0_S3));
  BCDAWOC_binadd4b_0_1 binadd4b_1
       (.A0(binadd4b_0_S0),
        .A1(binadd4b_0_S1),
        .A2(binadd4b_0_S2),
        .A3(binadd4b_0_S3),
        .B0(xlconstant_0_dout),
        .B1(util_vector_logic_2_Res),
        .B2(util_vector_logic_2_Res),
        .B3(xlconstant_0_dout),
        .C_in(xlconstant_0_dout),
        .C_out(binadd4b_1_C_out),
        .S0(binadd4b_1_S0),
        .S1(binadd4b_1_S1),
        .S2(binadd4b_1_S2),
        .S3(binadd4b_1_S3));
  BCDAWOC_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(binadd4b_0_S1),
        .Op2(binadd4b_0_S2),
        .Res(util_vector_logic_0_Res));
  BCDAWOC_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(binadd4b_0_S3),
        .Op2(util_vector_logic_0_Res),
        .Res(util_vector_logic_1_Res));
  BCDAWOC_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(binadd4b_0_C_out),
        .Op2(util_vector_logic_1_Res),
        .Res(util_vector_logic_2_Res));
  BCDAWOC_util_vector_logic_2_0 util_vector_logic_3
       (.Op1(binadd4b_1_C_out),
        .Op2(binadd4b_0_C_out),
        .Res(util_vector_logic_3_Res));
  BCDAWOC_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
