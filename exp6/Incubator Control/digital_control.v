module digital_control (
    T,
    Heater,
    Cooler,
    CRS,
    OUT,
    clk,
    rstN
);
    input [7:0] T;
    input clk, rstN;
    output Heater, Cooler, OUT;
    output [3:0] CRS;

    power_control pcu(.T(T), .Heater(Heater), .Cooler(Cooler), .clk(clk), .rstN(rstN));
    fan_control fcu(.T(T), .Cooler(Cooler), .CRS(CRS), .OUT(OUT), .clk(clk));
endmodule