module memory (
    clk,
    readwriteN,
    address,
    data_in,
    data_out
);
    input wire [4:0] address;
    input wire clk;
    input wire [15:0] data_in;
    input wire readwriteN;
    output reg [15:0] data_out;

    reg signed [15:0] ram [0:31];

    always @(negedge clk) begin
    
        if (~readwriteN) begin
            ram [address] <= data_in;
        end else begin
            data_out <= ram [address];
        end
    end
    
    initial begin 
        ram [5'b00000] <= 16'b00_1_0000_0001_10110;   // ram[22] = ram[16] + ram[17]    
        ram [5'b00001] <= 16'b10_1_0000_0010_10111;   // ram[23] = ram[16] * ram[18]
        ram [5'b00010] <= 16'b10_1_0011_0100_11000;   // ram[24] = ram[19] * ram[20]    
        ram [5'b00011] <= 16'b01_1_0101_0100_11001;   // ram[25] = ram[21] - ram[20]     
        ram [5'b00100] <= 16'b11_0_0000_0000_00000;   // end

        ram [5'b10000] <= {8'd2,8'd4};      // ram[16] = 2 + 4i
        ram [5'b10001] <= {8'd8,8'd9};      // ram[17] = 8 + 9i
        ram [5'b10010] <= {-8'd3,8'd1};     // ram[18] = -3 + i
        ram [5'b10011] <= {-8'd1,-8'd1};    // ram[19] = -1 - i
        ram [5'b10100] <= {8'd7,8'd5};      // ram[20] = 7 + 5i
        ram [5'b10101] <= {8'd6,-8'd1};     // ram[21] = 6 - i
    end
    
endmodule