`timescale 1ns / 1ps
// this madule acts like a 8 bit register with load signal
module register8bit(
    input [7:0] data, input load, input clk,
    output [7:0] out
    );
    reg [7:0] memory=0;
    assign out = memory;
    always @ (posedge clk) if (load) memory <= data;
endmodule
