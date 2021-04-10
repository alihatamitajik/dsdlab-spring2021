//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 08:30:49 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target Exp2.bd
//Design      : Exp2
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Exp2,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Exp2,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=23,numReposBlks=23,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Exp2.hwdef" *) 
module Exp2
   (A0,
    A1,
    A2,
    A3,
    CLK,
    Close_d,
    Ent,
    IN_d,
    OUT_d,
    Open_d,
    T);
  output [0:0]A0;
  output [0:0]A1;
  output [0:0]A2;
  output [0:0]A3;
  input [0:0]CLK;
  output [0:0]Close_d;
  input [0:0]Ent;
  input [0:0]IN_d;
  input [0:0]OUT_d;
  output [0:0]Open_d;
  input [0:0]T;

  wire [0:0]Counter_0_A0;
  wire [0:0]Counter_0_A1;
  wire [0:0]Counter_0_A2;
  wire [0:0]Counter_0_A3;
  wire [0:0]Ent_1;
  wire [0:0]IN_d_1;
  wire [0:0]JKFF_0_Q;
  wire [0:0]Net;
  wire [0:0]OUT_d_1;
  wire [0:0]T_1;
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
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]util_vector_logic_5_Res;
  wire [0:0]util_vector_logic_6_Res;
  wire [0:0]util_vector_logic_7_Res;
  wire [0:0]util_vector_logic_8_Res;
  wire [0:0]util_vector_logic_9_Res;

  assign A0[0] = Counter_0_A0;
  assign A1[0] = Counter_0_A1;
  assign A2[0] = Counter_0_A2;
  assign A3[0] = Counter_0_A3;
  assign Close_d[0] = util_vector_logic_8_Res;
  assign Ent_1 = Ent[0];
  assign IN_d_1 = IN_d[0];
  assign Net = CLK[0];
  assign OUT_d_1 = OUT_d[0];
  assign Open_d[0] = JKFF_0_Q;
  assign T_1 = T[0];
  Exp2_Counter_0_0 Counter_0
       (.A0(Counter_0_A0),
        .A1(Counter_0_A1),
        .A2(Counter_0_A2),
        .A3(Counter_0_A3),
        .CLK(Net),
        .Enable(util_vector_logic_0_Res),
        .U(util_vector_logic_20_Res));
  Exp2_JKFF_0_0 JKFF_0
       (.CLK(Net),
        .J(util_vector_logic_14_Res),
        .K(util_vector_logic_12_Res),
        .Q(JKFF_0_Q));
  Exp2_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_vector_logic_1_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_0_Res));
  Exp2_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(util_vector_logic_4_Res),
        .Op2(util_vector_logic_3_Res),
        .Res(util_vector_logic_1_Res));
  Exp2_util_vector_logic_2_2 util_vector_logic_10
       (.Op1(Counter_0_A0),
        .Op2(Counter_0_A1),
        .Res(util_vector_logic_10_Res));
  Exp2_util_vector_logic_2_3 util_vector_logic_11
       (.Op1(Counter_0_A2),
        .Op2(Counter_0_A3),
        .Res(util_vector_logic_11_Res));
  Exp2_util_vector_logic_0_5 util_vector_logic_12
       (.Op1(util_vector_logic_1_Res),
        .Op2(IN_d_1),
        .Res(util_vector_logic_12_Res));
  Exp2_util_vector_logic_1_1 util_vector_logic_13
       (.Op1(T_1),
        .Op2(util_vector_logic_15_Res),
        .Res(util_vector_logic_13_Res));
  Exp2_util_vector_logic_13_0 util_vector_logic_14
       (.Op1(Ent_1),
        .Op2(util_vector_logic_13_Res),
        .Res(util_vector_logic_14_Res));
  Exp2_util_vector_logic_7_1 util_vector_logic_15
       (.Op1(util_vector_logic_16_Res),
        .Res(util_vector_logic_15_Res));
  Exp2_util_vector_logic_5_1 util_vector_logic_16
       (.Op1(util_vector_logic_18_Res),
        .Op2(util_vector_logic_17_Res),
        .Res(util_vector_logic_16_Res));
  Exp2_util_vector_logic_5_2 util_vector_logic_17
       (.Op1(Counter_0_A2),
        .Op2(Counter_0_A3),
        .Res(util_vector_logic_17_Res));
  Exp2_util_vector_logic_5_3 util_vector_logic_18
       (.Op1(Counter_0_A0),
        .Op2(Counter_0_A1),
        .Res(util_vector_logic_18_Res));
  Exp2_util_vector_logic_15_0 util_vector_logic_19
       (.Op1(util_vector_logic_8_Res),
        .Res(util_vector_logic_19_Res));
  Exp2_util_vector_logic_0_2 util_vector_logic_2
       (.Op1(util_vector_logic_5_Res),
        .Op2(util_vector_logic_7_Res),
        .Res(util_vector_logic_2_Res));
  Exp2_util_vector_logic_12_0 util_vector_logic_20
       (.Op1(util_vector_logic_19_Res),
        .Op2(JKFF_0_Q),
        .Res(util_vector_logic_20_Res));
  Exp2_util_vector_logic_0_3 util_vector_logic_3
       (.Op1(IN_d_1),
        .Op2(OUT_d_1),
        .Res(util_vector_logic_3_Res));
  Exp2_util_vector_logic_0_4 util_vector_logic_4
       (.Op1(Ent_1),
        .Res(util_vector_logic_4_Res));
  Exp2_util_vector_logic_1_0 util_vector_logic_5
       (.Op1(IN_d_1),
        .Op2(JKFF_0_Q),
        .Res(util_vector_logic_5_Res));
  Exp2_util_vector_logic_2_0 util_vector_logic_6
       (.Op1(IN_d_1),
        .Op2(util_vector_logic_8_Res),
        .Res(util_vector_logic_6_Res));
  Exp2_util_vector_logic_4_0 util_vector_logic_7
       (.Op1(util_vector_logic_6_Res),
        .Res(util_vector_logic_7_Res));
  Exp2_util_vector_logic_7_0 util_vector_logic_8
       (.Op1(util_vector_logic_9_Res),
        .Res(util_vector_logic_8_Res));
  Exp2_util_vector_logic_2_1 util_vector_logic_9
       (.Op1(util_vector_logic_10_Res),
        .Op2(util_vector_logic_11_Res),
        .Res(util_vector_logic_9_Res));
endmodule
