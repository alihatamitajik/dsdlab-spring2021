module digital_control_rand_tb ();
    reg clk, rstN;
    reg [7:0] T;
    wire Heater, Cooler, OUT;
    wire [3:0] CRS;

    digital_control dcu(.Heater(Heater), .Cooler(Cooler), .T(T), .clk(clk), .rstN(rstN), .OUT(OUT), .CRS(CRS));
    
    initial begin
        clk <= 0;
        forever #10 clk <= ~clk;
    end

    reg [6:0] i;
    integer seed;
    initial begin
        $dumpfile("dcu_rand.vcd");
        $dumpvars(0, digital_control_rand_tb);
        seed = $time;
        rstN <= 0;
        #20 rstN <= 1;
        for (i = 0; ~i[6]; i = i + 1) begin
            T = $random(seed) % 71 - 11;
            // rstN = $random(seed);
            #100;
        end
        $finish;
    end
endmodule