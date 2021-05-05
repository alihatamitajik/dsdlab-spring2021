module bitrate_converter(
    clk,
    rx_en, 
    tx_en,
    resetN
);
  
  parameter baudrate = 100000000 / 9600;  // 100 MHz clock, baud : 9600
  
  input clk, resetN;
  output wire rx_en, tx_en;
  
  reg[15:0] buadCountRX, buadCountTX;
  reg[15:0] rate = baudrate;
  
  // RX RATE
  always @ (posedge clk or negedge resetN) begin
    if (~resetN) begin
        buadCountRX <= 16'b1;
    end else if (rx_en) begin
        buadCountRX <= 16'b1;
    end else begin
        buadCountRX <= buadCountRX + 1'b1;
    end
  end 
  assign rx_en = (buadCountRX == rate);
  
  // TX RATE
  always @ (posedge clk or negedge resetN) begin
    if (~resetN) begin
        buadCountTX <= 16'b1;
    end else if (tx_en) begin
        buadCountTX <= 16'b1;
    end else begin
        buadCountTX <= buadCountTX + 1'b1;
    end
  end 
  assign tx_en = (buadCountTX == rate);
  
endmodule