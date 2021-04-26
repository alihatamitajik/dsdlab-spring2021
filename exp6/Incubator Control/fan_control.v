module fan_control (
    T,
    Cooler,
    CRS,
    OUT,
    clk
);
    input signed [7:0] T;
    input Cooler, clk;
    output reg [3:0] CRS;
    output reg OUT;

    reg S1, S2, S3; // one-hot state indicators

    always @(*) begin
        if (S1) begin
            CRS = 4;
        end
        else if (S2) begin
            CRS = 6;
        end
        else if (S3) begin
            CRS = 8;
        end
        else if (OUT) begin
            CRS = 0;
        end
    end

    always @(posedge clk or negedge Cooler) begin
        if (~Cooler) begin
            S1 <= 0;
            S2 <= 0;
            S3 <= 0;
            OUT <= 1;
        end
        else begin
            if (S1) begin
                if (T < 25) begin
                    S1 <= 0;
                    OUT <= 1;
                end
                if (T > 40) begin
                    S1 <= 0;
                    S2 <= 1;
                end
            end
            else if (S2) begin
                if (T < 35) begin
                    S2 <= 0;
                    S1 <= 1;
                end
                if (T > 45) begin
                    S2 <= 0;
                    S3 <= 1;
                end
            end
            else if (S3) begin
                if (T < 40) begin
                    S3 <= 0;
                    S2 <= 1;
                end
            end
            else if (OUT) begin
                if (T > 35) begin
                    OUT <= 0;
                    S1 <= 1;
                end
            end
        end
    end
endmodule