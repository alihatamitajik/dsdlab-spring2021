//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 07:59:00 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target Counter.bd
//Design      : Counter
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Counter,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Counter,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Counter.hwdef" *) 
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

  wire [0:0]Net;
  wire [0:0]Net1;
  wire [0:0]Net2;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;

  assign A0[0] = util_vector_logic_2_Res;
  assign A1[0] = util_vector_logic_3_Res;
  assign A2[0] = util_vector_logic_1_Res;
  assign A3[0] = util_vector_logic_0_Res;
  assign Net = U[0];
  assign Net1 = Enable[0];
  assign Net2 = CLK[0];
  Counter_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Net),
        .Op2(Net),
        .Res(util_vector_logic_0_Res));
  Counter_util_vector_logic_0_1 util_vector_logic_1
       (.Op1(Net1),
        .Op2(Net1),
        .Res(util_vector_logic_1_Res));
  Counter_util_vector_logic_1_0 util_vector_logic_2
       (.Op1(Net2),
        .Op2(Net2),
        .Res(util_vector_logic_2_Res));
  Counter_util_vector_logic_1_1 util_vector_logic_3
       (.Op1(Net1),
        .Op2(Net1),
        .Res(util_vector_logic_3_Res));
endmodule
