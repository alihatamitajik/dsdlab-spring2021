`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 07:57:10 PM
// Design Name: 
// Module Name: testbench
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


module testbench;
    reg [3:0] dig1 = 0;
    reg [3:0] dig2 = 0;
    reg [3:0] dig3 = 0;
    reg [3:0] dig4 = 0;
    wire o;
    
    mod11_wrapper uut(
        .a1 (dig1[0]),
        .a2 (dig1[1]),
        .a3 (dig1[2]),
        .a4 (dig1[3]),
        .b1 (dig2[0]),
        .b2 (dig2[1]),
        .b3 (dig2[2]),
        .b4 (dig2[3]),
        .c1 (dig3[0]),
        .c2 (dig3[1]),
        .c3 (dig3[2]),
        .c4 (dig3[3]),
        .d1 (dig4[0]),
        .d2 (dig4[1]),
        .d3 (dig4[2]),
        .d4 (dig4[3]),
        .o (o)
    );
    integer i = 0;
    integer j = 0;
    integer k = 0;
    integer l = 0;
    
    initial
    begin
        for (i = 0; i < 10; i=i+1)
            for (j = 0; j < 10; j = j + 1)
                for (k = 0; k < 10; k = k + 1)
                    for (l = 0; l < 10; l = l + 1) begin
                        #5 
                        dig1 = l;
                        dig2 = k;
                        dig3 = j;
                        dig4 = i;                        
                    end
                 
             

        #5 $finish;
    end
endmodule
