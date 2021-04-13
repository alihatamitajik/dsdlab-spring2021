`timescale 1ns / 1ps

module stack(
    input clk,
    input rstN,
    input [3:0] data_in,
    input push,
    input pop,
    output [3:0] data_out,
    output full,
    output empty
    );
    // point to the empty index of stack
    reg [3:0]emptyPos = 0;
    // stack with depth 8 and width 4
    reg [3:0]stack[0:7];
    // out register
    reg [3:0] out = 0;
    
    // assign empty and full signals
    assign full = (emptyPos == 8);
    assign empty = (emptyPos == 0);
    assign data_out = out;
    
    always @ (posedge clk or negedge rstN) begin
       if (~rstN) begin
            emptyPos <= 0;
            out <= 0;
       end else if (pop && push) begin
            if (empty) begin // If Pop and Push together but pop can't be done
                stack[emptyPos] <= data_in;
                emptyPos <= emptyPos + 1;
            end else begin // push and pop together
                out <= stack[emptyPos - 1];
                stack[emptyPos - 1] <= data_in;
            end
        end else if (pop && ~empty) begin // if only pop and pop is valid
            out <= stack[emptyPos - 1];
            emptyPos <= emptyPos - 1;
        end else if (push && ~full) begin // if only push and push is valid
            stack[emptyPos] <= data_in;
            emptyPos <= emptyPos + 1;      
        end
    end
endmodule
