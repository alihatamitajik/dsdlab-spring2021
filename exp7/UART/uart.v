module uart (
    [7:0] data_in,
    [7:0] data_out,
    tx,
    rx,
    resetN,
    clk,
    error,
    parity_out,
    busy
);
    input [7:0] data_in;
    output [7:0] data_out;
    input resetN, clk;
    input rx;
    output tx, error, parity_out, busy;

    wire r_clk, t_clk;

    bitrate_converter bitrate_converter_inst(.clk_in(clk), .r_clk(r_clk), .t_clk(t_clk), .rx_en(rx), .tx_en(tx), .resetN(resetN));
    receiver receiver_inst(.rx(rx), .rx_clk(rx_clk), .data_out(data_out), .rx_en(rx_en), .resetN(resetN), .error(error), .busy(busy), .parity(parity_out));
endmodule