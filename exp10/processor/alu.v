module alu (
    first,
    second,
    addSubN,
    result,
    z,
    s,
    v   // Overflow Flag
);

input signed [7:0] first, second;
input addSubN;
output signed [7:0] result;
output z,s,v;
wire signed [8:0] first_extended, second_extended, result_extended;

assign first_extended = {first[7], first};
assign second_extended = {second[7], second};

assign result_extended = addSubN? first_extended + second_extended
                                : first_extended - second_extended;



assign result = result_extended[7:0];

assign z = (result == 0);
assign s = (result[7]==1);
assign v = (result_extended > 127 || result_extended < -128);

endmodule