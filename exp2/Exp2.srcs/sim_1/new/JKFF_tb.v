`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2021 01:05:44 AM
// Design Name: 
// Module Name: JKFF_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module JKFF_tb;

  reg [0:0]CLK;
  reg [0:0]CLR;
  reg [0:0]J;
  reg [0:0]K;
  wire [0:0]Q;
  wire [0:0]Qn;

  localparam clkperiod = 20;
  localparam jkperiod = 60;

  JKFF_b JKFF_w
       (.CLK(CLK),
        .J(J),
        .K(K),
        .Q(Q),
        .Qn(Qn));
        
   initial begin
     CLK = 0;
     CLR = 0;
     J = 0;
     K = 0;
     #jkperiod;
     J = 1;
     K = 0;
     #jkperiod;
     J = 0;
     K = 1;
     #jkperiod;
     J = 1;
     K = 1;
     #jkperiod;
   end
   
   always #clkperiod CLK = ~CLK;

endmodule
