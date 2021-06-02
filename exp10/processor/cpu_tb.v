`timescale 1ns / 1ps

module cpu_tb;
    reg [7:0] indata1,
    indata2,indata3,
    indata4,indata5,
    indata6,indata7;
    
    // Clock and control signals
    reg clk = 0,
    resetN = 0, haltN = 0;

    // Error flag (If overflowed or inputs were negative)
    wire error, finish_flag;

    // Seven Segment LEDs digits and sign
    // We assumed that negative sign will be shown by input 15 (4'b1111)
    // and 14 for off
    wire [3:0] seven_seg_sign,
    seven_seg_digit_1,
    seven_seg_digit_2,
    seven_seg_digit_3;
    
    multiCycle machine(
    indata1,indata2,indata3,indata4,
    indata5,indata6,indata7,
    error,clk,resetN,haltN,
    seven_seg_sign,
    seven_seg_digit_1,
    seven_seg_digit_2,
    seven_seg_digit_3,
    finish_flag);
    
    initial begin
        forever 
            #1 clk = ~clk;
    end
    
    initial begin
        indata1 = 105;
        indata2 = 0;
        indata3 = 0;
        indata4 = 0;
        indata5 = 0;
        indata6 = 0;
        indata7 = 0;

        #2 haltN = 1;
        resetN = 1;
    
        #62 $finish;
    end
endmodule