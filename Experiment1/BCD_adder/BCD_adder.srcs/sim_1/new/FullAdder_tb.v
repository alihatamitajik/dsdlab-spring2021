`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 12:08:53 AM
// Design Name: 
// Module Name: FullAdder_tb
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


module FullAdder_tb;
    reg [0:0] A;
    reg [0:0] B;
    reg [0:0] c_in;
    wire [0:0] c_out;
    wire [0:0] s;
    
    localparam period = 10;
    integer i;
    FullAdder_wrapper FA(.A(A), .B(B), .C_in(c_in), .C_out(c_out), .S(s));
    
    initial begin
        for(i = 0; i < 8; i = i + 1) begin
            A <= i / 4;
            B <= (i / 2) % 2;
            c_in <= i % 2;
            #period;
        end
    end
endmodule
