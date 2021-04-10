
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/06/2021 10:20:18 AM
// Module Name: one_bit_comparator_tb
//////////////////////////////////////////////////////////////////////////////////

module one_bit_comparator_tb;
    reg G_in, E_in, L_in, A, B;
    wire G_o, E_o, L_o;
    one_bit_comparator comparator(
        .A(A),
        .B(B),
        .G_in(G_in),
        .E_in(E_in),
        .L_in(L_in),
        .G_o(G_o),
        .E_o(E_o),
        .L_o(L_o)
    );

    initial begin
        // $dumpfile("test.vcd");
        // $dumpvars(0,one_bit_comparator_tb);
        G_in <= 0;
        E_in <= 1;
        L_in <= 0;
        A <= 0;
        B <= 0;
        #10;
        A <= 0;
        B <= 1;
        #10;
        A <= 1;
        B <= 0;
        #10;
        A <= 1;
        B <= 1;
        #10;

        G_in <= 1;
        E_in <= 0;
        L_in <= 0;
        A <= 0;
        B <= 0;
        #10;
        A <= 0;
        B <= 1;
        #10;
        A <= 1;
        B <= 0;
        #10;
        A <= 1;
        B <= 1;
        #10;

        G_in <= 0;
        E_in <= 0;
        L_in <= 1;
        A <= 0;
        B <= 0;
        #10;
        A <= 0;
        B <= 1;
        #10;
        A <= 1;
        B <= 0;
        #10;
        A <= 1;
        B <= 1;
        #10;
    end
endmodule
