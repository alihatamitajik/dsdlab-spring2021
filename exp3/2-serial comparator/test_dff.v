`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 03:09:16 AM
// Design Name: 
// Module Name: test_dff
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


module test_dff;
    reg d = 0;
    reg reset = 0;
    reg clk=0;
    wire q;
    
    dff uut (
    d,
    reset,
    clk,
    q
    );
    
    initial begin 
    forever
        #5 clk = ~clk;
     end
     
     initial begin
     #10 d = 1;
     #20 d = 0;
     #20 d = 1;
     d = 0;
     #10 reset = 1;
     #5 reset = 0;
     
     #5 $finish;
     end
endmodule
