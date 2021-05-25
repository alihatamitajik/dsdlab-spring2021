module tcam (
    output reg [3:0] found_address,
    output reg hit,
    input [15:0] data,
    input write_readN,
    input [15:0] dontcare_mask,
    input [3:0] write_address,
    input clk,
    input resetN
);
    reg [15:0] mem [0:15];
    reg [15:0] mem_dontcare_masks [0:15];
    integer i;
    always @(*) begin
        hit = 0;
        for (i = 0; i < 16; i = i + 1) begin
            if ((mem[i] | mem_dontcare_masks[i]) == (data | dontcare_mask)) begin
                found_address = i;
                hit = 1;
            end
        end
    end

    always @(posedge clk or negedge resetN) begin
        if (~resetN) begin
            for (i = 0; i < 16; i = i + 1) begin
                mem[i] <= 0;
                mem_dontcare_masks[i] <= 0;
            end
        end
        else begin
            if (write_readN) begin
                mem[write_address] <= data;
                mem_dontcare_masks[write_address] <= dontcare_mask;
            end
        end
    end
endmodule