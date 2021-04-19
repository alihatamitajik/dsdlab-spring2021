`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2021 04:11:29 AM
// Design Name: 
// Module Name: shift_amount
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


module shift_amount(
    input [16:0] number,
    output [5:0] amount
    );
    assign amount = number[ 0] ^ number[ 1] ? 5'b00000
                   :number[ 1] ^ number[ 2] ? 5'b00001
                   :number[ 2] ^ number[ 3] ? 5'b00010
                   :number[ 3] ^ number[ 4] ? 5'b00011
                   :number[ 4] ^ number[ 5] ? 5'b00100
                   :number[ 5] ^ number[ 6] ? 5'b00101
                   :number[ 6] ^ number[ 7] ? 5'b00110
                   :number[ 7] ^ number[ 8] ? 5'b00111
                   :number[ 8] ^ number[ 9] ? 5'b01000
                   :number[ 9] ^ number[10] ? 5'b01001
                   :number[10] ^ number[11] ? 5'b01010
                   :number[11] ^ number[12] ? 5'b01011
                   :number[12] ^ number[13] ? 5'b01100
                   :number[13] ^ number[14] ? 5'b01101
                   :number[14] ^ number[15] ? 5'b01110
                   :5'b01111;
                   
endmodule
