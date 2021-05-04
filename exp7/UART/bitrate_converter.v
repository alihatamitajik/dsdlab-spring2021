module bitrate_converter (
    clk_in,
    r_clk,
    t_clk,
    rx_en, 
    tx_en,
    resetN
);
    input clk_in;
    output r_clk, t_clk, rx_en, tx_en;
    
    parameter r_count_width = 1;
    parameter t_count_width = 1;

    reg [r_count_width - 1:0] r_count;
    reg [t_count_width - 1:0] t_count;

    assign r_clk = ~|r_count;
    assign t_clk = ~|t_count;
    assign rx_en = 1;
    assign tx_en = 1;

    always @(posedge clk_in or negedge resetN) begin
        if (~resetN) begin
            r_count <= 0;
            t_count <= 0;
        end
        r_count <= r_count + 1;
        t_count <= t_count + 1;
    end
endmodule