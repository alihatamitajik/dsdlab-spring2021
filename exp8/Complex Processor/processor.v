module processor (
    clk,            // incomming clock
    data_in,        // data read from Memory
    data_out,       // data to be written in Memory
    readwriteN,     // if 0 data will be writen else data will be read
    address         // the access address of memory
);

input wire clk;
input wire [15:0] data_in;
output wire [15:0] data_out;
output wire readwriteN;
output wire [4:0] address;

wire mul, sub;
wire [7:0] first, second, result;

pipeline pipe(
    .clk(clk),            // incomming clock
    .data_in(data_in),        // data read from Memory
    .data_out(data_out),       // data to be written in Memory
    .readwriteN(readwriteN),     // if 0 data will be writen else data will be read
    .address(address),        // the access address of memory
    .result_of_alu(result),  // attributes for ALU
    .first_alu(first),
    .second_alu(second),
    .mul(mul),
    .sub(sub)
);

alu alu_unit(
    .first(first),  // first operator
    .second(second), // second operator
    .mul(mul),    // is mul requested
    .sub(sub),    // is sub requested
    .result(result)  // 8 bit result
);

endmodule