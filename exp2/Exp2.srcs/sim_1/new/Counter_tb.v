`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2021 04:33:13 AM
// Design Name: 
// Module Name: Counter_tb
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


module Counter_tb;

    reg [0:0]U, CLK, CLR, Enable;
    wire [3:0] A;
    
    Counter counter(.U(U), .CLK(CLK), .Enable(Enable), .A(A));
    
    initial begin 
        CLK = 0;
        CLR = 1;
        U = 1;
        Enable = 0;
        #40 Enable = 1;
        #80 U = 0;
        #65 U = 1; CLR = 1;
    end
    
    always #20 CLK = ~CLK;

endmodule
