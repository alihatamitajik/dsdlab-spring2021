//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 08:30:38 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target Counter.bd
//Design      : Counter
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Counter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Counter,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=4,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Counter.hwdef" *) 
module Counter
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

  wire [0:0]CLK_1;
  wire [0:0]JKFF_0_Q;
  wire [0:0]JKFF_0_Q1;
  wire [0:0]JKFF_0_Q2;
  wire [0:0]JKFF_0_Qn;
  wire [0:0]JKFF_0_Qn1;
  wire [0:0]JKFF_0_Qn2;
  wire [0:0]JKFF_3_Q;
  wire [0:0]U_1;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_1_Res1;
  wire [0:0]util_vector_logic_1_Res3;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_2_Res1;
  wire [0:0]util_vector_logic_2_Res3;
  wire [0:0]util_vector_logic_4_Res;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_0_dout1;
  wire [0:0]xlconstant_0_dout2;
  wire [0:0]xlconstant_0_dout3;

  assign A0[0] = JKFF_0_Q;
  assign A1[0] = JKFF_0_Q1;
  assign A2[0] = JKFF_0_Q2;
  assign A3[0] = JKFF_3_Q;
  assign CLK_1 = CLK[0];
  assign U_1 = U[0];
  assign xlconstant_0_dout = Enable[0];
  Counter_JKFF_0_0 JKFF_0
       (.CLK(CLK_1),
        .J(xlconstant_0_dout),
        .K(xlconstant_0_dout),
        .Q(JKFF_0_Q),
        .Qn(JKFF_0_Qn));
  Counter_JKFF_0_4 JKFF_1
       (.CLK(CLK_1),
        .J(xlconstant_0_dout1),
        .K(xlconstant_0_dout1),
        .Q(JKFF_0_Q1),
        .Qn(JKFF_0_Qn1));
  Counter_JKFF_1_0 JKFF_2
       (.CLK(CLK_1),
        .J(xlconstant_0_dout2),
        .K(xlconstant_0_dout2),
        .Q(JKFF_0_Q2),
        .Qn(JKFF_0_Qn2));
  Counter_JKFF_2_0 JKFF_3
       (.CLK(CLK_1),
        .J(xlconstant_0_dout3),
        .K(xlconstant_0_dout3),
        .Q(JKFF_3_Q));
  Counter_util_vector_logic_0_2 util_vector_logic_1
       (.Op1(U_1),
        .Op2(JKFF_0_Q),
        .Res(util_vector_logic_1_Res));
  Counter_util_vector_logic_7_0 util_vector_logic_10
       (.Op1(util_vector_logic_1_Res3),
        .Op2(util_vector_logic_2_Res3),
        .Res(xlconstant_0_dout3));
  Counter_util_vector_logic_1_2 util_vector_logic_2
       (.Op1(JKFF_0_Qn),
        .Op2(util_vector_logic_4_Res),
        .Res(util_vector_logic_2_Res));
  Counter_util_vector_logic_1_3 util_vector_logic_3
       (.Op1(util_vector_logic_1_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(xlconstant_0_dout1));
  Counter_util_vector_logic_2_0 util_vector_logic_4
       (.Op1(U_1),
        .Res(util_vector_logic_4_Res));
  Counter_util_vector_logic_1_4 util_vector_logic_5
       (.Op1(util_vector_logic_1_Res),
        .Op2(JKFF_0_Q1),
        .Res(util_vector_logic_1_Res1));
  Counter_util_vector_logic_2_1 util_vector_logic_6
       (.Op1(JKFF_0_Qn1),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_2_Res1));
  Counter_util_vector_logic_3_0 util_vector_logic_7
       (.Op1(util_vector_logic_1_Res1),
        .Op2(util_vector_logic_2_Res1),
        .Res(xlconstant_0_dout2));
  Counter_util_vector_logic_5_0 util_vector_logic_8
       (.Op1(util_vector_logic_1_Res1),
        .Op2(JKFF_0_Q2),
        .Res(util_vector_logic_1_Res3));
  Counter_util_vector_logic_6_0 util_vector_logic_9
       (.Op1(JKFF_0_Qn2),
        .Op2(util_vector_logic_2_Res1),
        .Res(util_vector_logic_2_Res3));
endmodule
