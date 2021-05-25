module tcam (
    output wire [3:0] found_address,
    output wire hit,
    input [15:0] data,
    input write_readN,
    input [15:0] dontcare_mask,
    input [3:0] write_address,
    input clk,
    input resetN
);
    reg [15:0] mem [0:15];
    reg [15:0] mem_dontcare_masks [0:15];
    reg result [15:0];

    pr_encoder_16_to_4 encoder (result, found_address, hit);

    integer i;
    always @(posedge clk) begin
        for (i = 0; i < 16; i = i + 1) begin
            result[i] <= ((mem[i] | mem_dontcare_masks[i]) == (data | mem_dontcare_masks[i]));
        end
    end

    always @(posedge clk or negedge resetN) begin
        if (~resetN) begin
            for (i = 0; i < 16; i = i + 1) begin
                mem[i] <= 16'b0;
                mem_dontcare_masks[i] <= 16'b0;
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