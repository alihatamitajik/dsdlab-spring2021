`timescale 1ns / 1ps

module alu_tb();
    reg signed [7:0] first = 10, second = -4;
    reg mul = 0, sub = 0;
    wire signed [7:0] result;
    
    alu alu_unit(
        first,  // first operator
        second, // second operator
        mul,    // is mul requested
        sub,    // is sub requested
        result  // 8 bit result
    );
    
    initial begin
        #5 sub = 1;
        #5 mul = 1;
        #5 $finish;
    end

endmodule
