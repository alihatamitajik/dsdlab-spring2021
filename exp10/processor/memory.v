// Tri state buffer
module tristate(
    a,
    c,
    b
    );
    
    input a,c;
    output reg b;
    
    always @ (a or c) begin
        if (c) begin
            b <= a;
        end else begin
            b <= 'bz;
        end
    end
endmodule

// a structure to handle inout memory
module ino(
    a_in, a_out,c,
    b
    );
    
    inout b;
    input a_in, c;
    output a_out;
    
    tristate tristate_in  (a_in,c,b);
    tristate tristate_out (b,~c,a_out);
    
endmodule

// 8bit version of privous module
// Helper module to separate read/write data pathes
module ino8bit(
    a_in,
    a_out,
    c,
    b
);

    input  [15:0] a_in;
    output [15:0] a_out;
    input c;
    inout  [15:0] b;
    
    ino ino0(a_in[0],a_out[0],c,b[0]);
    ino ino1(a_in[1],a_out[1],c,b[1]);
    ino ino2(a_in[2],a_out[2],c,b[2]);
    ino ino3(a_in[3],a_out[3],c,b[3]);
    ino ino4(a_in[4],a_out[4],c,b[4]);
    ino ino5(a_in[5],a_out[5],c,b[5]);
    ino ino6(a_in[6],a_out[6],c,b[6]);
    ino ino7(a_in[7],a_out[7],c,b[7]);
endmodule

// ram with inout data port - only read or write at a time
module ram (
    address,
    data,
    rwn,
    enable
);

    input [7:0] address;
    inout [7:0] data;
    input rwn;
    input enable;
    
    reg [7:0] memory [255:0];
    reg [7:0] data_out;
    wire [7:0] data_in;
    
    ino8bit ino (data_out, data_in, rwn, data);
    
    always @ (negedge rwn or posedge rwn or address or data_in) begin
        if (enable)
            if (rwn) begin
                data_out <= memory[address];
            end else begin
                memory [address] <= data_in;
            end
    end
endmodule

module memory (
    clk,
    readwriteN,
    address,
    data_in,
    data_out,
    indata1,
    indata2,
    indata3,
    indata4,
    indata5,
    indata6,
    indata7,
    outdataio
);
    input wire [7:0] address;
    input wire clk;
    input wire [7:0] data_in;
    input wire readwriteN;
    output reg [7:0] data_out;
    input wire [7:0] indata1,
    indata2,
    indata3,
    indata4,
    indata5,
    indata6,
    indata7;

    output wire [7:0] outdataio;

    reg signed [7:0] ram [255:0];

    // F8 OUT DATA IS MEMORY MAPPED OUTPUT
    assign outdataio = ram[8'hF8];

    always @(negedge clk) begin
        if (~readwriteN && (address < 8'hF9)) begin
            ram [address] <= data_in;
        end else begin
            data_out <= ram [address];
        end
    end

    // Memory mapped inputs
    always @(*) begin
        ram[8'hF9] = indata1;
        ram[8'hFA] = indata2;
        ram[8'hFB] = indata3;
        ram[8'hFC] = indata4;
        ram[8'hFD] = indata5;
        ram[8'hFE] = indata6;
        ram[8'hFF] = indata7;
    end
    
endmodule