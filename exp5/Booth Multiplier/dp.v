`timescale 1ns / 1ps

module dp(
    clk, loadA, shiftA, selectA, IN1, IN2, loadM, loadleft, selectleft, resetleft, decleft,
    Sin, Sout, orleft, xorfirsttwo, amountlowerthanleft, secondbit, F, out
    );
    // list of inputs - else than clk, IN1 and IN2 other inputs are commands from CU
    input clk, loadA, shiftA, loadM, loadleft, selectleft, resetleft, decleft, Sin;
    input [2:0] selectA;
    input [7:0] IN1,IN2;
    output Sout, orleft, xorfirsttwo, amountlowerthanleft, secondbit, F;
    output [15:0] out;
    // Assigning M register
     wire signed [7:0]M;
     register8bit mregister(.data(IN2), .load(loadM), .clk(clk),
        .out(M));
    // send S directly to the output for CU
    assign Sout = Sin;
    // 17bit shift register coresponding to A
    wire [16:0]dataA;
    wire [4:0]amount;
    wire [16:0]A;
    wire signed [7:0]a8msb;
    assign a8msb = A[16:9];
    
    // Subtract and Add signals that always are calculated in combinational way
    wire signed [7:0]add, subtract;
    assign add = a8msb + M;
    assign subtract = a8msb + (~M + 1);
    
    //Assignment for dataA based on selectA (init, add, subtract)
    assign dataA = selectA[2] ? {8'b00000000, IN1, 1'b0} // init
                  :selectA[0] ? {add[7], add, A[8:1]}    // add
                  :selectA[1] ? {subtract[7], subtract, A[8:1]} // subtract 
                  : 17'b00000000000000000; // otherwie zero but this value is never used            
    
    wire [4:0] selected_amount;
    
    shift_register aregister(
        .clk(clk),
        .data(dataA),
        .load(loadA),
        .shift(shiftA),
        .amount(selected_amount),
        .out_data(A)
     );
     
     // Assigning the amount
     shift_amount amount_finder( .number(A),.amount(amount));
     
     // Assigning left register
     wire [3:0]left;
     wire [3:0]dataleft;
     assign selected_amount = (amountlowerthanleft) ? amount : left;
     
     // assigning left data to select
     assign dataleft = selectleft? left - amount[3:0]: 4'd8;
     register4bit leftregister(.clk(clk),.dec(decleft),.load(loadleft),.resetN(resetleft),.data(dataleft),
        .out(left));
     
     // Assigning outputs
     assign orleft = |left;
     assign xorfirsttwo = A[0] ^ A[1];
     assign amountlowerthanleft = ~(amount >= left);
     assign secondbit = A[1];
     assign F = ~|left;
     assign out = A[16:1];
     
endmodule
