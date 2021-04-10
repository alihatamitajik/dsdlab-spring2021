`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 02:25:20 PM
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;

    reg [0:0]A;
    reg [0:0]B;
    reg [0:0]C_in;
    wire [0:0]C_out;
    wire [0:0]S;

    FA_wrapper FA_w
       (.A(A),
        .B(B),
        .C_in(C_in),
        .C_out(C_out),
        .S(S));
    
    reg [0:2] i;
    localparam period = 10;
    initial begin
        for(i = 0; i <= 7; i = i + 1) begin
            A <= i[0];
            B <= i[1];
            C_in <= i[2];
            #period;
        end
    end
endmodule
