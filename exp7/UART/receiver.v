module receiver(
    rx, 
    clk, 
    data_out,
    rx_en,
    resetN, 
    error, 
    busy,
    parity);
    
    input rx, clk, rx_en, resetN;
    output [7:0]data_out;
    output error, busy, parity;

    reg state; // 0 is ready, 1 is receiving
    reg [3:0] counter;
    reg [7:0] data;

    assign busy = state;
    assign error = (data[7] == ^data[6:0]);
    assign data_out = {1'b0, data};
    assign parity = data[7];

    always @(posedge clk or negedge resetN) begin
        if (~resetN) begin
            state <= 0;
            data <= 0;
        end
        else if (rx_en) begin
            if (state == 0) begin
                if (~rx) begin
                    state = 1;
                end
                counter <= 0;
            end
            else begin // state == 1
                if(counter <8) begin // 0 through 8 -> start, parity, data[6:0]
                    data <= {data[6:0], rx};
                end
                else begin // stop
                    state <= 0;
                end
                counter <= counter + 1;
            end
        end
    end
endmodule 