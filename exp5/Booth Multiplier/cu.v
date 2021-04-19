`timescale 1ns / 1ps

module cu(
    clk, S, orleft, xorfirsttwo, amountlowerthanleft, secondbit, resetNinit, resetNmul,
    loadA, shiftA, selectA, loadM, loadleft, selectleft, resetleft, decleft
    );
    input clk, S, orleft, xorfirsttwo, amountlowerthanleft, secondbit,resetNinit, resetNmul;
    output loadA, shiftA, loadM, loadleft, selectleft, resetleft, decleft;
    output [2:0] selectA;
    
    // creating d filp flops for one hot 
    wire d_init, init, d_mul, mul;
    dff initdff(.clk(clk),.d(d_init),.resetN(resetNinit),.q(init));
    dff muldff(.clk(clk),.d(d_mul),.resetN(resetNmul),.q(mul));

    
    // assigning d inputs
    assign d_init = (init && ~S) 
                || (mul && ~orleft) 
                || (mul && orleft && ~xorfirsttwo && ~amountlowerthanleft);
    assign d_mul = (mul && orleft && ~xorfirsttwo && amountlowerthanleft) 
                || (mul && orleft && xorfirsttwo) 
                || (init && S);
    // assigning outputs based on statuses and flip-flops
    // assignments for register A
    assign selectA = {init && S, mul && secondbit, mul && ~secondbit};
    assign loadA = (init && S)
                || (mul && orleft && xorfirsttwo);
    assign shiftA = mul && orleft && ~xorfirsttwo;
    
    // assignments for register M
    assign loadM = init && S;
    
    // assignments for register left
    assign loadleft = (init && S)
                    ||(mul && orleft && ~xorfirsttwo && amountlowerthanleft);
    assign decleft = mul && orleft && xorfirsttwo;
    assign resetleft = ~(mul && orleft && ~xorfirsttwo && ~amountlowerthanleft);
    assign selectleft = (~(init && S) && (mul && orleft && ~xorfirsttwo && amountlowerthanleft));
    
endmodule
