
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/06/2021 10:19:26 AM
// Module Name: one_bit_comparator
//////////////////////////////////////////////////////////////////////////////////

module four_bit_comparator (
    A,
    B,
    G,
    E,
    L
);
    input wire [3:0] A;
    input wire [3:0] B;
    output wire G, E, L;
    wire [3:0] G_in;
    wire [3:0] E_in;
    wire [3:0] L_in;

    assign G_in[0] = 0;
    assign E_in[0] = 1;
    assign L_in[0] = 0;

    one_bit_comparator c0(
        .A(A[0]), .B(B[0]), 
        .G_in(G_in[0]), .E_in(E_in[0]), .L_in(L_in[0]),
        .G_o(G_in[1]), .E_o(E_in[1]), .L_o(L_in[1])
    );
    one_bit_comparator c1(
        .A(A[1]), .B(B[1]), 
        .G_in(G_in[1]), .E_in(E_in[1]), .L_in(L_in[1]),
        .G_o(G_in[2]), .E_o(E_in[2]), .L_o(L_in[2])
    );
    one_bit_comparator c2(
        .A(A[2]), .B(B[2]), 
        .G_in(G_in[2]), .E_in(E_in[2]), .L_in(L_in[2]),
        .G_o(G_in[3]), .E_o(E_in[3]), .L_o(L_in[3])
    );
    one_bit_comparator c3(
        .A(A[3]), .B(B[3]), 
        .G_in(G_in[3]), .E_in(E_in[3]), .L_in(L_in[3]),
        .G_o(G), .E_o(E), .L_o(L)
    );

endmodule