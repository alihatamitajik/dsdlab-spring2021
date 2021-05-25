module alu (
    first,  // first operator
    second, // second operator
    mul,    // is mul requested
    sub,    // is sub requested
    result  // 8 bit result
);
    input wire signed [7:0] first, second;
    input wire mul, sub;
    output wire signed [7:0] result;

    wire signed [7:0] mul_result;
    wire signed [7:0] addsub_result;

    multiplier mul_nit(
        .first(first),  
        .second(second), 
        .result(mul_result) 
    );

    addsub addsub_unit(
        .mode(sub),
        .first(first),
        .second(second),
        .result(addsub_result)
    );

    assign result = mul? mul_result : addsub_result;

endmodule