module addsub (
    mode, // zero for addition, one for subtraction
    first,// first operator
    second,//second operator
    result
);
    input wire mode;
    input signed wire[7:0] first, second;
    output signed wire [7:0] result;

    assign result = mode? first - second: first + second;
endmodule