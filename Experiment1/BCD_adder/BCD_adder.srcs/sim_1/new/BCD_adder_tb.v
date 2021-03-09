`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 03:05:17 AM
// Design Name: 
// Module Name: BCD_adder_tb
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


module BCD_adder_tb;
    reg [0:3] A;
    reg [0:3] B;
    reg [0:3] c_in;
    wire [0:3] c_out;
    wire [0:3] s0;
    wire [0:3] s1;
    
    localparam period = 10;
    integer i, j;
    BCD_adder_wrapper BCDAdder(
        .A0(A[0]), .A1(A[1]), .A2(A[2]), .A3(A[3]),
        .B0(B[0]), .B1(B[1]), .B2(B[2]), .B3(B[3]),
        .C0(c_in[0]), .C1(c_in[1]), .C2(c_in[2]), .C3(c_in[3]),
        .CO0(c_out[0]), .CO1(c_out[1]), .CO2(c_out[2]), .CO3(c_out[3]),
        .S0_0(s0[0]), .S0_1(s0[1]), .S0_2(s0[2]), .S0_3(s0[3]),
        .S1_0(s1[0]), .S1_1(s1[1]), .S1_2(s1[2]), .S1_3(s1[3]));
    
    initial begin
        c_in <= 0;
        for(i = 0; i < 10; i = i + 1) begin
            for(j = 0; j < 10; j = j + 1) begin 
                A <= i;
                B <= j;
                #period;
            end
        end
    end
endmodule
