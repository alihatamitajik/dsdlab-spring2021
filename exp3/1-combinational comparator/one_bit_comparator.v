
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/06/2021 10:19:26 AM
// Module Name: one_bit_comparator
//////////////////////////////////////////////////////////////////////////////////

module one_bit_comparator (
    A,
    B,
    G_in,
    E_in,
    L_in,
    G_o,
    E_o,
    L_o
);

input wire A, B, G_in, E_in, L_in;
output wire G_o, E_o, L_o;
assign G_o = (A > B) || ((A == B) && G_in);
assign E_o = (A == B) && E_in;
assign L_o = (A < B) || ((A == B) && L_in);

endmodule
