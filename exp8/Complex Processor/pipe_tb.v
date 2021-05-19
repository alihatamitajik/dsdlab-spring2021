`timescale 1ns / 1ps

module pipe_tb();
    wire [4:0] address;
    reg clk = 0;
    wire [15:0] data_in;
    wire readwriteN;
    wire [15:0] data_out;
    
    initial begin
        forever #5 clk = ~clk;
    end
    
    memory memory_unit(
        .clk(clk),
        .readwriteN(readwriteN),
        .address(address),
        .data_in(data_in),
        .data_out(data_out)
    );
    
    processor processor_instant(
        .clk(clk),            // incomming clock
        .data_in(data_out),        // data read from Memory
        .data_out(data_in),       // data to be written in Memory
        .readwriteN(readwriteN),     // if 1 data will be writen else data will be read
        .address(address)         // the access address of memory
    );
    
    initial begin
        #2000 $finish;
    end
endmodule
