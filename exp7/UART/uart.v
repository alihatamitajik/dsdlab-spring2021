module uart (
    data_in,
    data_out,
    tx,
    rx,
    resetN,
    clk,
    error,
    parity_out,
    rx_busy,
    tx_busy,
    start
);
    input [7:0]data_in;
    output [7:0] data_out;
    input resetN, clk;
    input rx, start;
    output tx, error, parity_out, tx_busy,rx_busy;

    wire rx_enable, tx_enable;

    bitrate_converter bitrate_converter_inst(
        .clk(clk),
        .rx_en(rx_enable), 
        .tx_en(tx_enable), 
        .resetN(resetN)
    );
    
    receiver receiver_inst(
        .rx(rx), 
        .clk(clk), 
        .data_out(data_out),
        .rx_en(rx_enable),
        .resetN(resetN), 
        .error(error), 
        .busy(rx_busy),
        .parity(parity_out)
    );
    
    transmiter transmitter(
        .tx(tx), 
        .clk(clk), 
        .tx_en(tx_enable), 
        .data_in(data_in), 
        .start(start), 
        .busy(tx_busy), 
        .resetN(resetN)
    );
endmodule