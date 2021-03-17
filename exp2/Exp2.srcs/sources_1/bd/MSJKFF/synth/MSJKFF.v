//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Wed Mar 17 03:24:50 2021
//Host        : SOROUSHJAHA7F01 running 64-bit major release  (build 9200)
//Command     : generate_target MSJKFF.bd
//Design      : MSJKFF
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MSJKFF,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MSJKFF,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "MSJKFF.hwdef" *) 
module MSJKFF
   (CLK);
  input [0:0]CLK;

  wire [0:0]CLK_1;
  wire [0:0]util_vector_logic_0_Res;

  assign CLK_1 = CLK[0];
  MSJKFF_JKFF_0_3 JKFF_0
       (.CLK(CLK_1),
        .J(1'b0),
        .K(1'b0));
  MSJKFF_JKFF_0_4 JKFF_1
       (.CLK(util_vector_logic_0_Res),
        .J(1'b0),
        .K(1'b0));
  MSJKFF_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(CLK_1),
        .Res(util_vector_logic_0_Res));
endmodule
