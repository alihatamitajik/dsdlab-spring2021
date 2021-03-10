`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2021 02:20:29 AM
// Design Name: 
// Module Name: adder4bittest
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


module adder4bittest;
    reg [3:0] num1 = 0;
    reg [3:0] num2 = 0;
    reg [0:0] c_in = 0;
    wire [3:0] sum;
    wire [0:0] c_out;
 Adder_4bit_wrapper uut(
    .C_in (c_in),
    .C_out (c_out),
    .a1 (num1[0]),
    .a2 (num1[1]),
    .a3 (num1[2]),
    .a4 (num1[3]),
    .b1 (num2[0]),
    .b2 (num2[1]),
    .b3 (num2[2]),
    .b4 (num2[3]),
    .s1 (sum[0]),
    .s2 (sum[1]),
    .s3 (sum[2]),
    .s4 (sum[3])
    );
    
    integer i = 0, j=0, k=0;
    initial begin
    for (k = 0; k < 2; k= k +1)begin
        c_in = k;
        for (i = 0; i < 16; i = i + 1)
            for (j = 0; j < 16; j = j + 1) begin
                #10 num1 = i;
                num2 = j;
            end  
    end
        #5 $finish;
    end
endmodule
