`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2021 04:19:06 AM
// Design Name: 
// Module Name: Counter
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


module Counter(
    input U,
    input CLK,
    input CLR,
    input Enable,
    output reg [3:0] A
    );
    initial A <= 0;
    always @(posedge CLK or negedge CLR) begin
        if(CLR == 0) A <= 4'b0000;
        else
        case({Enable, U})
            2'b10: A <= A - 1;
            2'b11: A <= A + 1;
        endcase
    end
endmodule
