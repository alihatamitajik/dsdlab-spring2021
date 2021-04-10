`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2021 03:40:37 AM
// Design Name: 
// Module Name: JKFF_b
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


module JKFF_b(CLK,
    J,
    K,
    Q,
    Qn);
  input [0:0]CLK;
  input [0:0]J;
  input [0:0]K;
  output [0:0]Q;
  output [0:0]Qn;
  
  reg [0:0] Q, Qn;
  initial begin
  Q = 1'b0;
  Qn = ~Q;
  end
  
  always @(posedge CLK) begin
      case({J,K})
          2'b01: Q = 0;
          2'b10: Q = 1;
          2'b11: Q = ~Q;
      endcase
      Qn = ~Q;
  end
  
endmodule
