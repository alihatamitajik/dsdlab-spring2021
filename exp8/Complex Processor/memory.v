module memory (
    clk,
    readwriteN,
    address,
    data_in,
    data_out
);
    input wire [4:0] address;
    input wire clk;
    input wire [15:0] data_in;
    output reg [15:0] data_out;

    reg [15:0] ram [31:0];

    always @(posedge clk) begin
    
        if (~readwriteN) begin
            ram [write_address] <= data_in;
        end else begin
            data_out <= ram [read_address];
        end
    
    end
    
endmodule