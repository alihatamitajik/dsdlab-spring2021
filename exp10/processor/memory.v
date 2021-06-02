module memory (
    clk,
    readwriteN,
    address,
    data_in,
    data_out,
    indata1,
    indata2,
    indata3,
    indata4,
    indata5,
    indata6,
    indata7,
    outdataio,
    resetN
);
    input wire [7:0] address;
    input wire clk, resetN;
    input wire [7:0] data_in;
    input wire readwriteN;
    output reg [7:0] data_out;
    input wire [7:0] indata1,
        indata2,
        indata3,
        indata4,
        indata5,
        indata6,
        indata7;

    output wire [7:0] outdataio;

    reg signed [7:0] ram [255:0];

    // F8 OUT DATA IS MEMORY MAPPED OUTPUT
    assign outdataio = ram[8'hF8];

    always @(negedge clk or negedge resetN) begin
        if (~resetN) begin
            // Code goes here and when we reset code harcoded in the ram
            ram[0] <= 8'h00; ram[1] <= 8'd12;       // PUSHC 12     # push 12
            ram[2] <= 8'h00; ram[3] <= 8'd23;       // PUSHC 23     # push 23
            ram[4] <= 8'h01; ram[5] <= 8'hF9;       // PUSH h'F8    # Push the X to stack from i/o
            ram[6] <= 8'h06;                        // ADD          # X + 23
            ram[7] <= 8'h02; ram[8] <= 8'hF0;       // POP h'F0     # F0 <= X + 23
            ram[9] <= 8'h01; ram[10] <= 8'hF0;      // PUSH h'F0   # X + 23 in stack
            ram[11] <= 8'h01; ram[12] <= 8'hF0;     // PUSH h'F0    # 2 (X + 23) s in stack
            ram[13] <= 8'h06;                       // ADD          # (X + 23)*2
            ram[14] <= 8'h07;                       // SUB          # (X + 23)*2 - 12
            ram[15] <= 8'h02; ram[16] <= 8'hF8;     // POP h'F8     # Wrtie answer in mapped output
            ram[17] <= 8'h0F;                       // FINISH
        end else if (~readwriteN && (address < 8'hF9)) begin
            ram [address] <= data_in;
        end else begin
            data_out <= ram [address];
        end
    end

    // Memory mapped inputs
    always @(*) begin
        ram[8'hF9] = indata1;
        ram[8'hFA] = indata2;
        ram[8'hFB] = indata3;
        ram[8'hFC] = indata4;
        ram[8'hFD] = indata5;
        ram[8'hFE] = indata6;
        ram[8'hFF] = indata7;
    end
    
endmodule