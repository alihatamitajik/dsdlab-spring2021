`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2021 11:34:14 PM
// Design Name: 
// Module Name: HalfAdder_tb
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


module HalfAdder_tb;
    reg [0:0] A;
    reg [0:0] B;
    wire [0:0] c_out;
    wire [0:0] s;
    
    localparam period = 10;
    HalfAdder_wrapper HA(.A(A), .B(B), .C_out(c_out), .S(s));
    
    initial begin
        A <= 0;
        B <= 0;
        #period;
        
        A <= 0;
        B <= 1;
        #period;
        
        A <= 1;
        B <= 0;
        #period;
        
        A <= 1;
        B <= 1;
        #period;
    end
endmodule
