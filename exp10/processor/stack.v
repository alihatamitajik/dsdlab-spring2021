module stack #(
    parameter width = 8, depth = 8, address_width = $clog2(depth)
) (
    output [width - 1:0] data_out,
    output full,
    output empty,
    input push,
    input pop,
    input [width - 1:0] data_in,
    input clk,
    input resetN
);
    reg [address_width:0] stack_pointer; // empty position at the top of stack
    reg [width - 1:0] stack_mem [0:depth - 1];
    reg [width - 1:0] out;

    assign data_out = out;
    assign full = (stack_pointer == 8);
    assign empty = (stack_pointer == 0);

    always @(negedge clk or negedge resetN) begin
        if (~resetN) begin
            stack_pointer <= 0;
            out <= 0;
        end
        else begin
            if (pop & push) begin
                if (empty) begin
                    stack_mem[0] <= data_in;
                    stack_pointer <= 1;
                end
                else begin
                    out <= stack_mem[stack_pointer - 1];
                    stack_mem[stack_pointer - 1] <= data_in;
                end
            end
            else if (pop & ~empty) begin
                out <= stack_mem[stack_pointer - 1];
                stack_pointer <= stack_pointer - 1;
            end
            else if (push & ~full) begin
                stack_mem[stack_pointer] <= data_in;
                stack_pointer <= stack_pointer + 1;
            end
        end
    end
endmodule