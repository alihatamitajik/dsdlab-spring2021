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

    integer i = -10;
    initial begin
        T = -10;
        rstN <= 0;
        #20 rstN <= 1;
        for (i = -10; i <= 60; i = i + 1) begin
            T = i;
            #20;
        end
        for (i = 59; i >= -10; i = i - 1) begin
            T = i;
            #20;
        end
        $finish;
    end
endmodule