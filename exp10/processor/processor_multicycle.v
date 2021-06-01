module multicycle (
    clk,
    haltN
);

localparam FETCH1 =     4'd12;
localparam FETCH2 =     4'd13;
localparam PUSHC =      4'd0; // also pushc   opcode
localparam PUSHM_READ = 4'd1; // also push    opcode
localparam PUSHM_PUSH = 4'd8;           
localparam POP_POP =    4'd2; // also pop     opcode
localparam POP_WRITE =  4'd9;
localparam JUMP =       4'd3; // also jump    opcode
localparam JZ =         4'd4; // also jz      opcode
localparam JS =         4'd5; // also js      opcode
localparam ADD_FIRST =  4'd6; // also add     opcode
localparam ADD_SECOND = 4'd10;           
localparam SUB_FIRST =  4'd7; // also sub     opcode
localparam SUB_SECOND = 4'd11;

reg current_state; // TODO

always @(clk) begin
    if (haltN) begin
        case (current_state)
            FETCH1: begin // opcode be fetched
                
            end 

            FETCH2: begin // oprand will be fetched: this state is important even if
            // no oprand is fetched because it  will decide where we go next
            // oprand will be fetched if opcode need it and the oprand will be loaded where it is nedded
            // based on the opcode
                
                //TODO: push and pop sould goes off
            end

            PUSHC: begin // the push signal is one from last state
            // this state do the job, change the signal, and fetch the next opcode
                
            end

            PUSHM_READ: begin   // read signal is one from last state - it will store the data
            // in stack in-data reg to be pushed next clock, push signal should become one here
                
            end

            PUSHM_PUSH: begin   // push will be done by this state, so the push signal goes of in this state
            // and the next opcode should be fetched
                
            end

            POP_POP: begin  // pop signal is 1 from last state, so the data will be stored in the data_to_write
            // pop signal become 0 and next opcode should be fetched
                
            end

            POP_WRITE: begin // poped data will be written in this state, and ram mode should chage to read here
                
            end

            JUMP begin // here pop flag is enabled from the last state, so the data will be popped to the
            // pc.  then we go to the FETCH1 state
                
            end
            
            JZ: begin // the pop signal is enabled from last state according to the flag,
            // and we go to this state if flag was 1. so the PC will be updated and 
            // we go back to the FETCH1
                
            end

            JS: begin // the pop signal is enabled from last state according to the flag,
            // and we go to this state if flag was 1. so the PC will be updated and 
            // we go back to the FETCH1
                
            end

            ADD_FIRST: begin // first data that is poped will be caught here
                
            end

            ADD_SECOND: begin // second data that is poped will be caught here and the sum is on write data
            // of stack, push siganl become 1 and pop become 0, the opcode is fetched here, push signal goes
            // on here and goes off in FETCH2.
                
            end

            SUB_FIRST: begin // first data that is poped will be caught here
                
            end

            SUB_SECOND: begin // second data that is poped will be caught here and the sum is on write data
            // of stack, push siganl become 1 and pop become 0, the opcode is fetched here, push signal goes
            // on here and goes off in FETCH2.
                
            end
        endcase
    end
end

endmodule