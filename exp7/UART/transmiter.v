
module transmiter (tx, clk, tx_en, data_in, start, busy, resetN);
    output reg tx;
    output wire busy;
    input wire start, resetN, clk, tx_en ;
    input [6:0] data_in;

    reg [7:0] data_send;
    reg [1:0] current_state = 0;
    reg [2:0] pos = 0;
    reg isStarted = 0;

    assign busy = ~(current_state == 2'b00);       // if we are not relaxing, we are busy =)

    always @ (posedge clk or negedge resetN or posedge start) begin
        if (~resetN) begin                         // if module was reset
            current_state <= 2'b00;                // go to Relax State
            isStarted <= 1'b0;                     // make not started
            tx <= 1'b1;                            // make tx 1
        end else if (start && ~isStarted) begin
            isStarted <= 1;                        // set started flag
            current_state <= 2'b01;                // Current State to Send Start Bit
            data_send <= {~^data_in,data_in};      // set data to send
        end else if (current_state == 2'b01) begin // If in Send Start Bit State
            if (tx_en) begin                       // If we are on rate
                tx <= 1'b0;                        // send start bit
                current_state <= 2'b10;            // go to next state - send data
            end
        end else if (current_state == 2'b10) begin // if in send data state
            if (tx_en) begin                       // if we are on rate
                tx <= data_send[7-pos];            // make tx the data in send position
                pos <= pos + 1;                    // add to position
                if (pos == 3'b111)begin            // if we reach position 7
                    current_state <= 2'b11;        // go to next state - send stop bit
                end                  
            end 
        end else if (current_state == 2'b11) begin // if in send stop bit state
            if (tx_en) begin                       // if we are on rate
                tx <= 1'b1;                        // send stop bit (1)
                current_state <= 2'b00;            // go to relax state
            end
        end
    end
endmodule