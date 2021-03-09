`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 08:30:37 PM
// Design Name: 
// Module Name: bcdtest
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


module bcdtest;
    reg [3:0] dig1 = 0;
    reg [3:0] dig2 = 0;
    wire [0:0]c_out;
    wire [0:0]s1;
    wire [0:0]s2;
    wire [0:0]s3;
    wire [0:0]s4;
    
    bcdAdder_wrapper uut (
        .C_in (0),
        .C_out (c_out),
        .a1 (dig1[0]),
        .a2 (dig1[1]),
        .a3 (dig1[2]),
        .a4 (dig1[3]),
        .b1 (dig2[0]),
        .b2 (dig2[1]),
        .b3 (dig2[2]),
        .b4 (dig2[3]),
        .s1 (s1),
        .s2 (s2),
        .s3 (s3),
        .s4 (s4)
    );
    
    integer i = 0;
    integer j = 0;
    
    initial
    begin
        for (i = 0; i < 10; i = i + 1) begin
            for (j = 0; j < 10; j = j + 1) begin
                # 10 
                dig1 = j;
                dig2 = i;
            end
        end
        
        #5 $finish;
    end
    
endmodule
