`timescale 1ns / 1ps

module ram_tb();
    reg [7:0] address = 255;
    reg [7:0] data_to_write = 6;
    reg rwn = 1;
    wire [7:0] data_read;
    wire [7:0] data;
    
    ino8bit ino (data_to_write ,data_read,~ rwn, data);
    ram ram1(address, data, rwn);
    
    initial begin
        #5 rwn = 0;
        #5 address = 254;
        data_to_write = 8;
        #5 data_to_write = 4;
        #5 address = 253;
        data_to_write = 10;
        #5 rwn = 1;
        address = 254;
        #10 $finish;
    end
    
endmodule