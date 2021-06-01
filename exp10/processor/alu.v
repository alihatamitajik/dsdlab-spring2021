module alu (
    first,
    second,
    addSubN,
    result,
    z,
    s
);

input signed [7:0] first, second;
input addSubN;
output signed [7:0] result;

assign result = addSubN? first + second:
                         first - second;
assign z = (result == 0);
assign s = (result[7]==1);
endmodule