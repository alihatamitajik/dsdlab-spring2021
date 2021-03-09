`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/09/2021 12:56:03 PM
// Design Name: 
// Module Name: binadd4b_tb
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


module binadd4b_tb;

  reg [0:0]A0;
  reg [0:0]A1;
  reg [0:0]A2;
  reg [0:0]A3;
  reg [0:0]B0;
  reg [0:0]B1;
  reg [0:0]B2;
  reg [0:0]B3;
  reg [0:0]C_in;
  wire [0:0]C_out;
  wire [0:0]S0;
  wire [0:0]S1;
  wire [0:0]S2;
  wire [0:0]S3;

  binadd4b_wrapper binadd4b_w
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .C_in(C_in),
        .C_out(C_out),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));

    reg [0:3] i, j;
    wire [0:3] s;
    assign s[0] = S3;
    assign s[1] = S2;
    assign s[2] = S1;
    assign s[3] = S0;
    
    localparam period = 20;
    initial begin
        C_in <= 0;
        for(i = 0; i < 10; i = i + 1) begin
            for(j = 0; j < 10; j = j + 1) begin
                A0 <= i[3];
                A1 <= i[2];
                A2 <= i[1];
                A3 <= i[0];
                B0 <= j[3];
                B1 <= j[2];
                B2 <= j[1];
                B3 <= j[0];
                #period;
            end
        end
    end

endmodule
