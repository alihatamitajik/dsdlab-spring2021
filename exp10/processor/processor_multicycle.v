module multicycle (
    clk,
    haltN,
    resetN,
    ram_readWriteN,
    ram_address,
    ram_data_in,
    ram_data_out,
    stack_data_out,
    stack_data_in,
    stack_full,
    stack_empty,
    stack_push,
    stack_pop,
);

input wire clk, haltN, resetN, stack_full, stack_empty;
input wire [7:0] ram_data_in, stack_data_in;
output reg [7:0] ram_address, ram_data_out, stack_data_out;
output reg ram_readWriteN, stack_push, stack_pop;

localparam INITS =      4'd14;
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

reg [3:0] current_state = 4'd14;
reg [3:0] opcode;
reg [7:0] oprand;

reg z_flag, s_flag;

reg [7:0] pc;  // PROGRAM COUNTER

always @(posedge clk) begin
    if (~resetN) begin
        // TODO: RESET PROCEDURE
            // program counter set to zero
    end else if (haltN) begin
        case (current_state)
            INITS: begin // program counter will be set, read signal will be set
                pc <= 16'b0;
                ram_readWriteN <= 1b'1;
                stack_pop <= 1'b0;
                stack_push <= 1'b0;   
                ram_address <=  1'b0;
                ram_readWriteN <= 1b'1;
                current_state <= FETCH1; 
            end
            
            FETCH1: begin // opcode be fetched, the address must be updated in the last state/clock
                opcode <= ram_data_in[3:0];
                ram_readWriteN <= 1b'1;
                if (ram_data_in < 4 ) begin // if opcode is pushc/push/pop
                    address <= pc + 1;
                    pc <= pc + 2;
                end else begin
                    pc <= pc + 1;
                end

                current_state <= FETCH2;
            end 

            FETCH2: begin // oprand will be fetched: this state is important even if
            // no oprand is fetched because it  will decide where we go next
            // oprand will be fetched if opcode need it and the oprand will be loaded where it is nedded
            // based on the opcode
                oprand <= ram_data_in;
                stack_pop <= 1'b0;
                // make stack push signal ready. 
                if (opcode == PUSHC) stack_push <= 1'b1;
                else stack_push <= 1'b1;

                case (opcode) begin
                    PUSHC: begin    // data to push prepared here
                        // prepare data to be pushed
                        stack_push <= 1'b1;
                        stack_data_out <= ram_data_in;
                        current_state = PUSHC;
                        
                        // prepare to fetch next instruction
                        ram_address <= pc;
                        ram_readWriteN <= 1b'1;
                    end
                end
            end

            PUSHC: begin // the push signal is one from last state
            // this state do the job, change the signal, and fetch the next opcode
                stack_push <= 1'b0;
                
                // fetch1 procedures
                opcode <= ram_data_in[3:0];
                ram_readWriteN <= 1b'1;
                if (ram_data_in < 4 ) begin // if opcode is pushc/push/pop
                    address <= pc + 1;
                    pc <= pc + 2;
                end else begin
                    pc <= pc + 1;
                end
                current_state <= FETCH2;
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