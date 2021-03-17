`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2021 04:19:06 AM
// Design Name: 
// Module Name: Exp2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: Verilog test for design
// 
//////////////////////////////////////////////////////////////////////////////////


module Exp2(
    input Ent,
    input IN,
    input OUT,
    input reset_n,
    input T,
    input CLK,
    output reg Open,
    output reg Close,
    output reg [3:0] A
    );
    
    reg [0:0] U, Enable, J, K;
    wire [0:0] Open_n;
    //assign Close = ~(|A);
    
    // Counter counter(.U(U), .CLK(CLK), .Enable(Enable), .A(A));
    // JKFF_b jkff(.J(J), .K(K), .CLK(CLK), .Q(Open), .Qn(Open_n));
    
    initial begin
        A = 0;
        Open = 0;
        Close = 1;
    end
    
    //always @(Ent, IN, OUT, Open, Close, T, A) begin
    always @(posedge CLK) begin
        if((!Ent) && (IN ^ OUT) && IN && Open) begin
            A = A + 1;
            Open = 0;
        end
        if((!Ent) && (IN ^ OUT) && (!IN) && (!Close)) begin
            A = A - 1;
        end
        if(Ent) begin
            Open = (~&A) & T;
        end
        Close = ~(|A);
    end
    
endmodule
