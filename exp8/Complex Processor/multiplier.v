module multiplier (
    first,  // first number
    second, // second number
    result  // result number => first * second
);
    input wire signed [7:0]first, second;
    output wire signed [7:0] result;

    assign result = first * second;
endmodule