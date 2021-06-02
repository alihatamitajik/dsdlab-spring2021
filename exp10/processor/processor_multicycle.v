module multicycle_processor (
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
    overflow,
    stack_error,
    finish_flag
);
// ports
input wire clk, haltN, resetN, stack_full, stack_empty;
input wire [7:0] ram_data_in, stack_data_in;
output reg [7:0] ram_address, ram_data_out, stack_data_out;
output reg ram_readWriteN, stack_push, stack_pop;
output reg overflow, stack_error, finish_flag;

// States
localparam HALTED =     4'd15;// FINISH   
localparam INITS =      4'd14;
localparam FETCH1 =     4'd12;
localparam FETCH2 =     4'd13;
localparam PUSHC =      4'd0; // pushc opcode
localparam PUSHM_READ = 4'd1; // push  opcode
localparam POP =        4'd2; // pop   opcode
localparam JUMP =       4'd3; // jump  opcode
localparam JZ =         4'd4; // z     opcode
localparam JS =         4'd5; // js    opcode
localparam ADD_FIRST =  4'd6; // add   opcode
localparam ADD_SECOND = 4'd10;           
localparam SUB =        4'd7; // sub   opcode

// Local used registers
reg [3:0] current_state = 4'd14;
reg [3:0] opcode;
reg [7:0] oprand;

// PROGRAM COUNTER
reg [7:0] pc;

// ALU
reg [7:0] first;
reg addSubN;
wire [7:0] result;
wire z,s,v;

alu alu_instance(first, stack_data_in, addSubN, result, z, s);

// Flags
reg z_flag, s_flag;

always @(posedge clk) begin
    if (~resetN) begin
        current_state <= INITS;
    end else if (haltN) begin   // When the processor is halted we are changing inputs and so
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
                
                // make pop signal ready
                if (opcode == POP ||
                    opcode == JUMP ||
                    (opcode == JZ && z_flag) ||
                    (opcode == JS && s_flag)) stack_pop <= 1'b1;
                else stack_pop <= 1'b0;
                // make stack push signal ready. 
                if (opcode == PUSHC) stack_push <= 1'b1;
                else stack_push <= 1'b1;
                
                // reset ram mode to read
                ram_readWriteN <= 1b'1;

                case (opcode) begin
                    PUSHC: begin    // data to push prepared here
                        // prepare data to be pushed
                        stack_push <= 1'b1;
                        stack_data_out <= ram_data_in;
                        current_state = PUSHC;

                        // if the stack is full the overflow flag turn 1
                        if (stack_full) stack_error <= 1'b1; 
                        
                        // prepare to fetch next instruction
                        ram_address <= pc;
                    end

                    PUSHM_READ: begin // prepare data to be read
                        ram_address <= ram_data_in; // fetch oprand as address indirect
                        current_state <= PUSHM_READ;

                        // if the stack is full the overflow flag turn 1
                        if (stack_full) stack_error <= 1'b1; 
                    end

                    POP: begin
                        // prepare to get the data
                        oprand <= ram_data_in;
                        stack_pop <= 1'b1;
                        current_state <= POP;

                        // prepare to fetch next instruction
                        ram_address <= pc;

                        // if the stack is empty the overflow flag turn 1
                        if (stack_empty) stack_error <= 1'b1; 
                    end

                    JUMP:
                        current_state <= JUMP;
                    
                    JZ: begin
                        if (z_flag) begin // if we have the flag 1 then we should pop the address and
                            // store it in pc
                            current_state <= JUMP;
                        end else begin // else the next instruction must be fetched
                            current_state <= FETCH1;
                            address <= pc;
                        end
                    end
                    
                    JS: begin
                        if (s_flag) begin // if we have the flag 1 then we should pop the address and
                            // store it in pc
                            current_state <= JUMP;
                        end else begin // else the next instruction must be fetched
                            current_state <= FETCH1;
                            address <= pc;
                        end
                    end

                    ADD_FIRST: begin
                        stack_pop <= 1'b1;
                        addSubN <= 1;
                        current_state <= ADD_FIRST;
                    end

                    SUB: begin
                        stack_pop <= 1'b1;
                        addSubN <= 0;
                        current_state <= ADD_FIRST;
                    end

                    HALTED: begin
                        finish_flag <= 1;
                    end
                end
            end

            PUSHC: begin // the push signal is one from last state
            // this state do the job, change the signal, and fetch the next opcode
                stack_push <= 1'b0;
                
                // fetch1 procedures
                opcode <= ram_data_in[3:0];
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
                // prepare read data to be pushed
                stack_data_out <= ram_data_in;
                stack_push <= 1'b1;
                current_state <= PUSHC; // the works that would be done is completly the same
                                        // as in the PUSHC state
                // prepare for fetch instruction
                ram_address <= pc;
            end

            POP: begin  // pop signal is 1 from last state, so the data will be stored in the ram_data_out
            // pop signal become 0 and next opcode should be fetched
                stack_pop <= 1'b0;
                // prepare data to be stored
                ram_data_out <= stack_data_in;
                ram_readWriteN <= 1'b0;
                address <= oprand;

                // catch the next instruction
                // fetch1 procedures
                opcode <= ram_data_in[3:0];
                if (ram_data_in < 4 ) begin // if opcode is pushc/push/pop and need operand
                    address <= pc + 1;
                    pc <= pc + 2;
                end else begin
                    pc <= pc + 1;
                end
                current_state <= FETCH2;
            end

            JUMP begin // here pop flag is enabled from the last state, so the data will be popped to the
            // pc.  then we go to the FETCH1 state
            // we use this state for JZ and JS too, becuase the condition is checked in fetch2 state
                stack_pop <= 1'b0;
                pc <= stack_data_in;
                address <= stack_data_in;
                current_state <= FETCH1;
            end


            // Same procedures goes for the addition and subtraction! so we just change the addSubN
            // in fetch2 and use same states for the addition and subtraction
            ADD_FIRST: begin // first data that is poped will be caught here
                first <= stack_data_in;

                // prepare to fetch next instruction
                ram_address <= pc;
                current_state <= ADD_SECOND;
            end

            ADD_SECOND: begin // second number is poped and is on stack data in. this wire goes
            // to ALU directly to prepare the result faster
                stack_data_out <= result;
                stack_pop <= 1'b0;
                // push this result to the stack in next clock
                stack_push <= 1'b1;
                
                // update flags
                z_flag <= z;
                s_flag <= s;
                if (v) overflow <= 1'b1;

                // catch the next instruction
                // fetch1 procedures
                opcode <= ram_data_in[3:0];
                if (ram_data_in < 4 ) begin // if opcode is pushc/push/pop and need operand
                    address <= pc + 1;
                    pc <= pc + 2;
                end else begin
                    pc <= pc + 1;
                end
                current_state <= FETCH2;
            end

        endcase
    end
end

endmodule