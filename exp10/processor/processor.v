module processor (
    output signed [7:0] direct_read_data,
    input [7:0] direct_read_address,
    input [7:0] direct_write_address,
    input signed [7:0] direct_write_data,
    input direct_memory_write,
    input clk,
    input resetN,
    input haltN
);
    localparam PUSHC = 4'b0000;
    localparam PUSH = 4'b0001;
    localparam POP = 4'b0010;
    localparam JUMP = 4'b0011;
    localparam JZ = 4'b0100;
    localparam JS = 4'b0101;
    localparam ADD = 4'b0110;
    localparam SUB = 4'b0111;

    reg [7:0] pc, next_pc;
    reg z_flag, s_flag, push, pop, mem_write;

    // stack
    reg [3:0] stack_pointer; // empty position at the top of stack
    reg signed [7:0] stack_mem [0:7];
    reg signed [7:0] data_to_memory, data_to_stack;
    wire stack_full = (stack_pointer == 8);
    wire stack_empty = (stack_pointer == 0);
    wire [7:0] top_of_stack = stack_empty ? 0 : stack_mem[stack_pointer - 1];

    // instruction memory
    // reg [11:0] instruction_memory [0:255];
    // wire [11:0] instruction = instruction_memory[pc];
    wire [11:0] instruction = {data_memory[pc][7:4], data_memory[pc + 1][7:0]};
    wire [3:0] opcode = instruction[11:8];
    wire [7:0] operand = instruction[7:0];

    // data memory
    reg signed [7:0] data_memory [0:255];
    wire [7:0] memory_read_address = operand;
    wire [7:0] memory_write_address = operand;
    wire [7:0] data_from_memory = data_memory[memory_read_address];
    assign direct_read_data = data_memory[direct_read_address];

    always @(*) begin
        next_pc = pc + 1;
        push = 0;
        pop = 0;
        mem_write = 0;
        case (opcode)
            PUSHC: begin
                next_pc = pc + 2;
                push = 1;
                data_to_stack = operand;
            end
            PUSH: begin
                next_pc = pc + 2;
                push = 1;
                data_to_stack = data_from_memory;
            end
            POP: begin
                next_pc = pc + 2;
                pop = 1;
                mem_write = 1;
                data_to_memory = top_of_stack;
            end
            JUMP: begin
                pop = 1;
                next_pc = top_of_stack;
            end
            JZ: begin
                if (z_flag) begin
                    pop = 1;
                    next_pc = top_of_stack;
                end
            end
            JS: begin
                if (s_flag) begin
                    pop = 1;
                    next_pc = top_of_stack;
                end
            end
        endcase
    end

    integer i;
    always @(posedge clk or negedge resetN) begin
        if (~resetN) begin
            pc <= 0;
            z_flag <= 0;
            s_flag <= 0;
            stack_pointer <= 0;
            for (i = 0; i < 256; i = i + 1) begin
                data_memory[i] <= 8'b0;
            end
        end
        else if (haltN) begin
            pc <= next_pc;
            case (opcode)
                ADD: begin
                    stack_mem[stack_pointer - 2] <= stack_mem[stack_pointer - 1] + stack_mem[stack_pointer - 2];
                    stack_pointer <= stack_pointer - 1;
                    z_flag <= (stack_mem[stack_pointer - 1] + stack_mem[stack_pointer - 2] == 0);
                    s_flag <= (stack_mem[stack_pointer - 1] + stack_mem[stack_pointer - 2] < 0);
                end
                SUB: begin
                    stack_mem[stack_pointer - 2] <= stack_mem[stack_pointer - 2] - stack_mem[stack_pointer - 1];
                    stack_pointer <= stack_pointer - 1;
                    z_flag <= (stack_mem[stack_pointer - 2] - stack_mem[stack_pointer - 1] == 0);
                    s_flag <= (stack_mem[stack_pointer - 2] - stack_mem[stack_pointer - 1] < 0);
                end
                default: begin
                    if (pop & ~stack_empty) begin
                        stack_pointer <= stack_pointer - 1;
                    end
                    if (push & ~stack_full) begin
                        stack_mem[stack_pointer] <= data_to_stack;
                        stack_pointer <= stack_pointer + 1;
                    end
                    if (mem_write) begin
                        data_memory[memory_write_address] <= data_to_memory;
                    end
                end
            endcase
        end
        else begin
            if (direct_memory_write) begin
                data_memory[direct_write_address] <= direct_write_data;
            end
        end
    end
endmodule
