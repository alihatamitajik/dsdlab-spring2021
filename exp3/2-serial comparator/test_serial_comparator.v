`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Group 5
// Engineer: Ali Hatami Tajik
// Create Date: 04/05/2021 02:31:34 AM
// Module Name: test_serial_comparator
//////////////////////////////////////////////////////////////////////////////////


module test_serial_comparator;
    reg [7:0]num1 = 48;
    reg [7:0]num2 = 48;
    reg a=0, b=0, reset = 0, clk = 0;
    wire greater, less, equal;
    serial_comparator uut(clk,a,b,reset,greater,equal,less);
    initial begin 
    forever
        #5 clk = ~clk;
     end
    integer i=0;
    initial begin
        reset = 1; 
        #10 reset = 0;
        for (i=0; i<8; i = i+1) begin
           a = num1[i];
           b = num2[i];
           #10; 
        end
        #10 reset = 1;
        #10 reset = 0;
        num1 = 32;
        num2 = 11;
        for (i=0; i<8; i = i+1) begin
           a = num1[i];
           b = num2[i];
           #10; 
        end
        #10 reset = 1;
        #10 reset = 0;
        num1 = 37;
        num2 = 53;
        for (i=0; i<8; i = i+1) begin
           a = num1[i];
           b = num2[i];
           #10; 
        end
        #5 $finish;
    end
endmodule
