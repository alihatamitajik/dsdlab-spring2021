`timescale 1ns / 1ps

module dff(
    input clk,input d,input resetN,output q);
    reg bit = 1;
    assign q = bit;
    always @ (posedge clk or negedge resetN)
        if (~resetN) bit <= 1'b0;
        else bit <= d;
endmodule
