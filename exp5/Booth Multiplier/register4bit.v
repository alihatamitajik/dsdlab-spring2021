`timescale 1ns / 1ps

module register4bit(
    input clk, input dec, input load, input resetN, input [3:0] data,
    output [3:0] out
    );
    reg [3:0]memory = 0;
    assign out = memory;
    always @ (posedge clk) 
        if (~resetN) memory = 4'b0;
        else if (dec) memory = memory - 1;
        else if (load) memory = data;
endmodule
