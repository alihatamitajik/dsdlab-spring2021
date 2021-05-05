`timescale 1ns / 1ps

module uart_tb();
    reg clk = 0;
    reg [7:0] data_in1 = 164;
    reg  start1 = 0 ,resetN1 = 0;
    wire [7:0] data_out1;
    wire error1, parity_out1, tx_busy1,rx_busy1;
    
    wire wire1,wire2;
    
    uart u1(data_in1, data_out1,wire1,wire2,resetN1,clk,
    error1,parity_out1, rx_busy1,tx_busy1,start1
);
    
    reg [7:0]data_in2 = 354;
    reg  start2 = 0,resetN2 = 0;
    wire [7:0] data_out2;
    wire error2, parity_out2, tx_busy2,rx_busy2;
   
    
    uart u2(data_in2,data_out2,wire2,wire1,resetN2,clk,
        error2,parity_out2,rx_busy2,tx_busy2,start2);
    
    initial begin
        forever begin
            #5 clk = ~clk;
        end
    end
    
    initial begin
        #10
        resetN1 = 1;
        resetN2 = 1;
        start1 = 1;
        #40 start1 = 0;
        #5 start2 = 1;
        #5  start2 = 0;
    
    
    
       #10000000 $finish;
    end
endmodule
