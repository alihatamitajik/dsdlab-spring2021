module multiplier (
    first,  // first number
    second, // second number
    result  // result number => fisrt * second
);
    input signed wire [3:0]first, second;
    output signed wire [7:0] result;

    assign result = first * second;
endmodule