`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/10/2021 03:01:36 AM
// Design Name: 
// Module Name: dig_reduce_tb
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


module dig_reduce_tb;

  wire [0:0]A0;
  wire [0:0]A1;
  wire [0:0]A2;
  wire [0:0]A3;
  wire [0:0]B0;
  wire [0:0]B1;
  wire [0:0]B2;
  wire [0:0]B3;
  wire [0:0]C0;
  wire [0:0]C1;
  wire [0:0]C2;
  wire [0:0]C3;
  wire [0:0]D0;
  wire [0:0]D1;
  wire [0:0]D2;
  wire [0:0]D3;
  wire [0:0]S0;
  wire [0:0]S1;
  wire [0:0]S2;
  wire [0:0]S3;

  dig_reduce_wrapper dig_reduce_w
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B0(B0),
        .B1(B1),
        .B2(B2),
        .B3(B3),
        .C0(C0),
        .C1(C1),
        .C2(C2),
        .C3(C3),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .S0(S0),
        .S1(S1),
        .S2(S2),
        .S3(S3));
    
    reg [0:3] a, b, c, d;
    wire [0:3] s;
    assign s[0] = S3;
    assign s[1] = S2;
    assign s[2] = S1;
    assign s[3] = S0;
    
    assign A0 = a[3];
    assign A1 = a[2];
    assign A2 = a[1];
    assign A3 = a[0];
    
    assign B0 = b[3];
    assign B1 = b[2];
    assign B2 = b[1];
    assign B3 = b[0];
    
    assign C0 = c[3];
    assign C1 = c[2];
    assign C2 = c[1];
    assign C3 = c[0];
    
    assign D0 = d[3];
    assign D1 = d[2];
    assign D2 = d[1];
    assign D3 = d[0];
    
    localparam period = 10;
    initial begin
        for(a = 0; a < 10; a = a + 1) begin
            for(b = 0; b < 10; b = b + 1) begin
                for(c = 0; c < 10; c = c + 1) begin
                    for(d = 0; d < 10; d = d + 1) begin
                        #period;
                    end
                end
            end
        end
    end
endmodule
