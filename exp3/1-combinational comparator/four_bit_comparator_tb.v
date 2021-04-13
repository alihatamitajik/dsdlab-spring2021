
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 04/06/2021 10:20:18 AM
// Module Name: four_bit_comparator_tb
//////////////////////////////////////////////////////////////////////////////////

module four_bit_comparator_tb;
    reg [3:0] A;
    reg [3:0] B;
    wire G, E, L;

    four_bit_comparator comparator(.A(A), .B(B), .G(G), .E(E), .L(L));

    reg [3:0] i;
    initial begin
        // $dumpfile("4_comparator_test.vcd");
        // $dumpvars(0,four_bit_comparator_tb);
        for(i = 0; i < 15; i = i + 1) begin
            A = $random;
            B = $random;
            #10;
        end
    end
endmodule
