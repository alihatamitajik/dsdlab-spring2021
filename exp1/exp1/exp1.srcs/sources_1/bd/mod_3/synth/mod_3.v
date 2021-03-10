//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 10 09:22:28 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target mod_3.bd
//Design      : mod_3
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mod_3,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mod_3,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=29,numReposBlks=29,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=1,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mod_3.hwdef" *) 
module mod_3
   (A0,
    A1,
    A2,
    A3,
    B0,
    B1,
    B2,
    B3,
    C0,
    C1,
    C2,
    C3,
    D0,
    D1,
    D2,
    D3,
    Res);
  input [0:0]A0;
  input [0:0]A1;
  input [0:0]A2;
  input [0:0]A3;
  input [0:0]B0;
  input [0:0]B1;
  input [0:0]B2;
  input [0:0]B3;
  input [0:0]C0;
  input [0:0]C1;
  input [0:0]C2;
  input [0:0]C3;
  input [0:0]D0;
  input [0:0]D1;
  input [0:0]D2;
  input [0:0]D3;
  output [0:0]Res;

  wire [0:0]A0_1;
  wire [0:0]A1_1;
  wire [0:0]A2_1;
  wire [0:0]A3_1;
  wire [0:0]B0_1;
  wire [0:0]B1_1;
  wire [0:0]B2_1;
  wire [0:0]B3_1;
  wire [0:0]C0_1;
  wire [0:0]C1_1;
  wire [0:0]C2_1;
  wire [0:0]C3_1;
  wire [0:0]D0_1;
  wire [0:0]D1_1;
  wire [0:0]D2_1;
  wire [0:0]D3_1;
  wire [0:0]dig_reduce_0_S0;
  wire [0:0]dig_reduce_0_S1;
  wire [0:0]dig_reduce_0_S2;
  wire [0:0]dig_reduce_0_S3;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_10_Res;
  wire [0:0]util_vector_logic_11_Res;
  wire [0:0]util_vector_logic_12_Res;
  wire [0:0]util_vector_logic_13_Res;
  wire [0:0]util_vector_logic_14_Res;
  wire [0:0]util_vector_logic_15_Res;
  wire [0:0]util_vector_logic_16_Res;
  wire [0:0]util_vector_logic_17_Res;
  wire [0:0]util_vector_logic_18_Res;
  wire [0:0]util_vector_logic_19_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_20_Res;
  wire [0:0]util_vector_logic_21_Res;
  wire [0:0]util_vector_logic_22_Res;
  wire [0:0]util_vector_logic_23_Res;
  wire [0:0]util_vector_logic_24_Res;
  wire [0:0]util_vector_logic_25_Res;
  wire [0:0]util_vector_logic_26_Res;
  wire [0:0]util_vector_logic_28_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0_1 = A0[0];
  assign A1_1 = A1[0];
  assign A2_1 = A2[0];
  assign A3_1 = A3[0];
  assign B0_1 = B0[0];
  assign B1_1 = B1[0];
  assign B2_1 = B2[0];
  assign B3_1 = B3[0];
  assign C0_1 = C0[0];
  assign C1_1 = C1[0];
  assign C2_1 = C2[0];
  assign C3_1 = C3[0];
  assign D0_1 = D0[0];
  assign D1_1 = D1[0];
  assign D2_1 = D2[0];
  assign D3_1 = D3[0];
  assign Res[0] = util_vector_logic_22_Res;
  mod_3_dig_reduce_0_0 dig_reduce_0
       (.A0(A0_1),
        .A1(A1_1),
        .A2(A2_1),
        .A3(A3_1),
        .B0(B0_1),
        .B1(B1_1),
        .B2(B2_1),
        .B3(B3_1),
        .C0(C0_1),
        .C1(C1_1),
        .C2(C2_1),
        .C3(C3_1),
        .D0(D0_1),
        .D1(D1_1),
        .D2(D2_1),
        .D3(D3_1),
        .S0(dig_reduce_0_S0),
        .S1(dig_reduce_0_S1),
        .S2(dig_reduce_0_S2),
        .S3(dig_reduce_0_S3));
  mod_3_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_vector_logic_1_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_0_Res));
  mod_3_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(dig_reduce_0_S0),
        .Res(util_vector_logic_1_Res));
  mod_3_util_vector_logic_0_5 util_vector_logic_10
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_10_Res));
  mod_3_util_vector_logic_5_2 util_vector_logic_11
       (.Op1(dig_reduce_0_S0),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_11_Res));
  mod_3_util_vector_logic_0_6 util_vector_logic_12
       (.Op1(dig_reduce_0_S0),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_12_Res));
  mod_3_util_vector_logic_5_3 util_vector_logic_13
       (.Op1(dig_reduce_0_S2),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_13_Res));
  mod_3_util_vector_logic_0_7 util_vector_logic_14
       (.Op1(util_vector_logic_1_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_14_Res));
  mod_3_util_vector_logic_5_4 util_vector_logic_15
       (.Op1(util_vector_logic_4_Res),
        .Op2(dig_reduce_0_S3),
        .Res(util_vector_logic_15_Res));
  mod_3_util_vector_logic_6_0 util_vector_logic_16
       (.Op1(util_vector_logic_0_Res),
        .Op2(util_vector_logic_5_Res),
        .Res(util_vector_logic_16_Res));
  mod_3_util_vector_logic_16_0 util_vector_logic_17
       (.Op1(util_vector_logic_11_Res),
        .Op2(util_vector_logic_10_Res),
        .Res(util_vector_logic_17_Res));
  mod_3_util_vector_logic_16_1 util_vector_logic_18
       (.Op1(util_vector_logic_8_Res),
        .Op2(util_vector_logic_9_Res),
        .Res(util_vector_logic_18_Res));
  mod_3_util_vector_logic_16_2 util_vector_logic_19
       (.Op1(util_vector_logic_18_Res),
        .Op2(util_vector_logic_16_Res),
        .Res(util_vector_logic_19_Res));
  mod_3_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(dig_reduce_0_S1),
        .Res(util_vector_logic_2_Res));
  mod_3_util_vector_logic_16_3 util_vector_logic_20
       (.Op1(util_vector_logic_19_Res),
        .Op2(util_vector_logic_17_Res),
        .Res(util_vector_logic_20_Res));
  mod_3_util_vector_logic_14_0 util_vector_logic_21
       (.Op1(util_vector_logic_28_Res),
        .Op2(util_vector_logic_20_Res),
        .Res(util_vector_logic_21_Res));
  mod_3_util_vector_logic_21_0 util_vector_logic_22
       (.Op1(util_vector_logic_21_Res),
        .Res(util_vector_logic_22_Res));
  mod_3_util_vector_logic_18_0 util_vector_logic_23
       (.Op1(util_vector_logic_14_Res),
        .Op2(util_vector_logic_15_Res),
        .Res(util_vector_logic_23_Res));
  mod_3_util_vector_logic_18_1 util_vector_logic_24
       (.Op1(util_vector_logic_12_Res),
        .Op2(util_vector_logic_13_Res),
        .Res(util_vector_logic_24_Res));
  mod_3_util_vector_logic_18_2 util_vector_logic_25
       (.Op1(util_vector_logic_7_Res),
        .Op2(util_vector_logic_6_Res),
        .Res(util_vector_logic_25_Res));
  mod_3_util_vector_logic_18_3 util_vector_logic_26
       (.Op1(util_vector_logic_23_Res),
        .Op2(util_vector_logic_24_Res),
        .Res(util_vector_logic_26_Res));
  mod_3_util_vector_logic_18_5 util_vector_logic_28
       (.Op1(util_vector_logic_26_Res),
        .Op2(util_vector_logic_25_Res),
        .Res(util_vector_logic_28_Res));
  mod_3_util_vector_logic_1_1 util_vector_logic_3
       (.Op1(dig_reduce_0_S3),
        .Res(util_vector_logic_3_Res));
  mod_3_util_vector_logic_1_2 util_vector_logic_4
       (.Op1(dig_reduce_0_S2),
        .Res(util_vector_logic_4_Res));
  mod_3_util_vector_logic_0_2 util_vector_logic_5
       (.Op1(dig_reduce_0_S2),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_5_Res));
  mod_3_util_vector_logic_0_3 util_vector_logic_6
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_6_Res));
  mod_3_util_vector_logic_5_0 util_vector_logic_7
       (.Op1(util_vector_logic_1_Res),
        .Op2(dig_reduce_0_S1),
        .Res(util_vector_logic_7_Res));
  mod_3_util_vector_logic_0_4 util_vector_logic_8
       (.Op1(dig_reduce_0_S0),
        .Op2(dig_reduce_0_S1),
        .Res(util_vector_logic_8_Res));
  mod_3_util_vector_logic_5_1 util_vector_logic_9
       (.Op1(dig_reduce_0_S2),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_9_Res));
endmodule
