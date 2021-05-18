module memory (
    clk,
    read,
    write,
    read_address,
    write_address,
    data_to_write,
    data_read
);
    input wire [4:0] write_address, read_address;
    input wire clk;
    input wire [3:0] data_to_write;
    output reg [3:0] data_read;
    
    reg [3:0] ram [31:0];

    always @(posedge clk) begin
    
        if (write) begin
            ram [write_address] <= data_to_write;
        end

        if (read)begin
            data_read <= ram [read_address];
        end
    
    end
    
endmodule