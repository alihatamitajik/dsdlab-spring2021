module power_control (
    T,
    Heater,
    Cooler,
    clk,
    rstN
);
    input signed [7:0] T;
    input clk, rstN;
    output Heater, Cooler;

    reg S1, S2, S3; // one-hot state indicators

    assign Heater = S3;
    assign Cooler = S2;

    always @(posedge clk or negedge rstN) begin
        if (~rstN) begin
            S1 <= 1;
            S2 <= 0;
            S3 <= 0;
        end
        else begin
            if (S1) begin
                if (T < 15) begin
                    S1 <= 0;
                    S3 <= 1;
                end
                if (T > 35) begin
                    S1 <= 0;
                    S2 <= 1;
                end
            end
            else if (S2) begin
                if (T < 25) begin
                    S2 <= 0;
                    S1 <= 1;
                end
            end
            else if (S3) begin
                if (T > 30) begin
                    S3 <= 0;
                    S1 <= 1;
                end
            end
        end
    end
endmodule