`timescale 1ns / 1ps

// connecting dp and cu together
module booth(
    input [7:0] IN1,
    input [7:0] IN2,
    input clk,
    input S,
    output f,
    output [15:0] out
    );
    wire loadA, shiftA, loadM, loadleft, selectleft, resetleft,
    decleft, Snet, orleft, xorfirsttwo, amountlowerthanleft, secondbit;
    wire [2:0] selectA;
    reg resetNinit=1, resetNmul = 0;
    
    dp datapath(
    .clk(clk), .loadA(loadA), .shiftA(shiftA), .selectA(selectA), .IN1(IN1), .IN2(IN2),
    .loadM(loadM), .loadleft(loadleft), .selectleft(selectleft), .resetleft(resetleft), .decleft(decleft),
    .Sin(S), .Sout(Snet), .orleft(orleft), .xorfirsttwo(xorfirsttwo),
    .amountlowerthanleft(amountlowerthanleft), .secondbit(secondbit), .F(f), .out(out)
    );
    
    cu controlunit(
    .clk(clk), .S(Snet), .orleft(orleft), .xorfirsttwo(xorfirsttwo), 
    .amountlowerthanleft(amountlowerthanleft), .secondbit(secondbit), 
    .resetNinit(resetNinit), .resetNmul(resetNmul),
    .loadA(loadA), .shiftA(shiftA), .selectA(selectA), .loadM(loadM), 
    .loadleft(loadleft), .selectleft(selectleft), .resetleft(resetleft), .decleft(decleft)
    );
    
    initial begin 
        #10 resetNmul <= 1;
    end
endmodule
