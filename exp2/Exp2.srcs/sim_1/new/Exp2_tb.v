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


module Exp2_tb;

    reg [0:0]Ent, IN, OUT, CLK, reset_n, T;
    wire [0:0] Open, Close;
    wire [3:0] A;
    integer i;
    
    Exp2 exp_c(
        .Ent(Ent),
        .IN(IN),
        .OUT(OUT),
        .reset_n(reset_n),
        .T(T),
        .Open(Open),
        .Close(Close),
        .A(A),
        .CLK(CLK)
    );
    
    initial begin
        reset_n = 1;
        CLK = 1;
        IN = 0;
        for(i = 0; i < 200; i = i + 1) begin
            if(Ent) IN = $random % 2;
            Ent = $random % 2;
            OUT = $random % 2;
            T = i < 180;
            #40;
        end
    end
    
    always #20 CLK = ~CLK;

endmodule
