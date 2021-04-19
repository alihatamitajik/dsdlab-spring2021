`timescale 1ns / 1ps

module booth_tb;
    reg [7:0] IN1 = -16;
    reg [7:0] IN2 = -13;
    reg clk;
    reg S = 0;
    wire f;
    wire [15:0] out;
    
    initial clk = 1'b0;
    always #10 clk = ~clk;
        
    booth uut(
    .IN1(IN1),.IN2(IN2),.clk(clk),.S(S),
    .f(f), .out (out));
    
    initial begin
        #80 S = 1;
        #40 S = 0;
        
        #500 $finish;
    end
    
endmodule
