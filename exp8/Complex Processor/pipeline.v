module pipeline (
    clk,            // incomming clock
    data_in,        // data read from Memory
    data_out,       // data to be written in Memory
    readwriteN,     // if 1 data will be writen else data will be read
    address,        // the access address of memory
    result_of_alu,  // attributes for ALU
    first_alu,
    second_alu,
    mul,
    sub
);

input wire clk;
input wire [15:0] data_in;
output reg [15:0] data_out;
output reg readwriteN = 1;
output reg [4:0] address;

// for the ALU
input wire [7:0] result_of_alu;
output reg [7:0] first_alu, second_alu;
output reg mul, sub;

// Define parameters for increase the readability of the code
parameter INIT = 5'd0;
parameter FETCH1 = 5'd1;
parameter DECODE1 = 5'd2;
parameter ENDS = 5'd3;
parameter ASREAD1 = 5'd4;
parameter ASREAD2 = 5'd5;
parameter ASADD1 = 5'd6;
parameter ASADD2 = 5'd7;
parameter ASWRITE = 5'd8;
parameter MREAD1 = 5'd9;
parameter MREAD2 = 5'd10;
parameter MMUL1 = 5'd11;
parameter MMUL2 = 5'd12;
parameter MMUL3 = 5'd13;
parameter MMUL4 = 5'd14;
parameter MADD = 5'd15;
parameter MSUB = 5'd16;
parameter MWRITE = 5'd17;

// Current State of Machine
reg [4:0] current_state = 5'd0;
// Program Counter
reg [4:0] pc;
// Instruction Register
reg [15:0] ir;

// Instruction Parts
reg [4:0] first_address, second_address, result_address;
reg [1:0] opcode;

// Arithmatic Registers
reg [7:0]   first_re /* real part of first number */,
            first_im /* imagenary part of first number */, 
            second_re, 
            second_im,
            result_re,
            result_im;

// Temperoary regiters to keep multipplication and addition results
reg [7:0] temp [3:0];
reg [15:0] pre_num [1:0];


always @(posedge clk) begin
    case (current_state)
        INIT: begin     // inititate the module for the first time
            pc <= 5'b00001;
            readwriteN <= 1;
            address <= 5'b00000;
            current_state <= FETCH1;
        end

        FETCH1: begin   // fetch the first instruction
            ir <= data_in;
            current_state <= DECODE1;
        end

        DECODE1: begin  // decoding the first insteruction
            // decode and partition the ir and free the ir for nect instruction to be fetched
            opcode <= ir[15:14]; 
            first_address <= {ir[13],ir[12:9]};
            second_address <= {ir[13],ir[8:5]};
            result_address <= ir[4:0];
            mul <= ir[15];
            sub <= ir[14];
            // if Add or Sub was the instruction
            if (ir[15] == 0) begin
                current_state <= ASREAD1;       // next state is reading the first number
                address <= {ir[13],ir[12:9]};   // prepare address for reading first
            end 

            // if EndInstruction Reached
            else if (ir[15:0] == 2'b11) begin
                current_state <= ENDS;          // next state is ENDState
            end

            // if multiplication instruction were there 
            else begin 
                current_state <= MREAD1;        // prepare for reading first number
                address <= {ir[13],ir[12:9]};
            end
        end


        ENDS: begin
            // Nothing Happens
        end

        ASREAD1: begin  // Reading first number for addition
            first_re <= data_in[15:8];  // partiiotn the number read into imaginary and real parts
            first_im <= data_in[7:0];
            address  <= second_address; // prepare to read the second number
            current_state <= ASREAD2;
        end

        ASREAD2: begin
            second_re <= data_in[15:8]; // partiiotn the number read into imaginary and real parts
            second_im <= data_in[7:0];
            
            address <= pc;              // prepare address to fetch the next instruction
            pc <= pc + 1;               // add to program counter

            first_alu <= first_re;      // set the first parameter of the ALU to real part of first number
            second_alu <= second_re;    // ... of second number
            
            mul <= opcode[1];           // set the mode of ALU by opcode
            sub <= opcode[0];
            
            current_state <= ASADD1;
        end

        ASADD1: begin
            result_re <= result_of_alu; // the result of add/sub is the real part of result
            
            first_alu <= first_im;
            second_alu <= second_im;

            ir <= data_in;              // fetching next instruction
            address <= result_address;  // save the address that we can store the result immediatly after last addition

            current_state <= ASADD2;
        end

        ASADD2: begin
            result_im <= result_of_alu; // the result of add/sub is the imagenary part of result

            opcode <= ir[15:14];        // decoding next instruciton
            first_address <= {ir[13],ir[12:9]};
            second_address <= {ir[13],ir[8:5]};
            result_address <= ir[4:0];

            data_out <= {result_re, result_of_alu};  // prepare the result to be written
            readwriteN <= 1'b0;

            current_state <= ASWRITE;
        end

        ASWRITE: begin
            readwriteN <= 1'b1;
            
            // if Add or Sub was the instruction
            if (ir[15] == 0) begin
                current_state <= ASREAD1;       // next state is reading the first number
                address <= {ir[13],ir[12:9]};   // prepare address for reading first
            end 

            // if EndInstruction Reached
            else if (ir[15:0] == 2'b11) begin
                current_state <= ENDS;          // next state is ENDState
            end

            // if multiplication instruction were there 
            else begin 
                current_state <= MREAD1;        // prepare for reading first number
                address <= {ir[13],ir[12:9]};
            end
        end

        MREAD1: begin
            first_re <= data_in[15:8];  // partiiotn the number read into imaginary and real parts
            first_im <= data_in[7:0];
            address  <= second_address; // prepare to read the second number
            current_state <= MREAD2;
        end

        MREAD2: begin
            second_re <= data_in[15:8]; // partiiotn the number read into imaginary and real parts
            second_im <= data_in[7:0];
            
            address <= pc;              // prepare address to fetch the next instruction
            pc <= pc + 1;               // add to program counter

            first_alu <= first_re;      // set the first parameter of the ALU to real part of first number
            second_alu <= second_re;    // ... of second number
            
            mul <= 1'b1;           // set the mode of ALU to multiplication
            sub <= 1'b0;
            
            current_state <= MMUL1;
        end

        MMUL1: begin
            temp[0] <= result_of_alu;   // first multiplication (ac)

            first_alu <= first_im;      // prepare c and d for next multiplication
            second_alu <= second_im;

            ir <= data_in;              // fetch the next instruction
            
            // address of first number
            address <= {data_in[13],data_in[12:9]}
            
            current_state <= MMUL2;
        end

        MMUL2: begin
            temp[1] <= result_of_alu;   // second product (bd)

            first_alu <= first_re;      // prepare for next production
            second_alu <= second_im;

            pre_num[0] <= data_in;      // store the first number of next instruction
            address <= ir[13],ir[8:5];  // prepare for reading next second number

            current_state <= MMUL3;
        end

        MMUL3: begin
            temp[2] <= result_of_alu;   // third product (ad)

            first_alu <= first_im;      // prepare for 4th product
            second_alu <= second_re;    

            pre_num[1] <= data_in;      // store the second number of next instruction
            address <= result_address   // store the result address of the current insreution that
                                        // we can decode the next instruction
            
            opcode <= ir[15:14];        // decoding next instruciton
            result_address <= ir[4:0];  // first and second address are trash becuase we retrived the numbers

            current_state <= MMUL4;
        end

        MMUL4: begin
            temp[3] <= result_of_alu;   // 4th product (cb)

            first_alu <= temp[2];       // prepare for addition of third and 4th product (ad + cb)
            second_alu <= result_of_alu;

            mul <= 1'b0;                // set alu mode to addition            
            sub <= 1'b0;

            current_state <= MADD;
        end

        MADD: begin
            result_im <= result_of_alu; // ad + cb is the imaginary part of the production

            first_alu <= temp[0];       // ac
            second_alu <= temp[1];      // bd

            sub <= 1'b1;                // set alu mode to subtraction

            current_state <= MSUB;
        end

        MSUB: begin
            result_re <= result_of_alu; // ac - bd is the real part of answer

            // prepare the writing data
            data_out <= {result_of_alu, result_im};
            readwriteN <= 1'b0;

            current_state <= MWRITE;
        end

        MWRITE: begin
            readwriteN <= 1'b1;         // change to read mode
            first_re <= pre_num[0][15:8];   // load preloadded numbers
            first_im <= pre_num[0][7:0];
            second_re <=  pre_num[1][15:8];
            second_im <=  pre_num[1][7:0];
                
            address <= pc;              // prepare address to fetch the next instruction
            pc <= pc + 1;               // add to program counter

            first_alu <= first_re;      // set the first parameter of the ALU to real part of first number
            second_alu <= second_re;    // ... of second number

            // if Add or Sub was the instruction
            if (ir[15] == 0) begin
                current_state <= ASADD1;       // next state is adding real parts because numbers are read
                
                mul <= opcode[1];           // set the mode of ALU by opcode
                sub <= opcode[0];
            end 

            // if EndInstruction Reached
            else if (ir[15:0] == 2'b11) begin
                current_state <= ENDS;          // next state is ENDState
            end

            // if multiplication instruction were there 
            else begin 
                current_state <= MMUL1;        // prepare for reading first number
                
                mul <= 1'b1;                   // set the mode of ALU to multiplication
                sub <= 1'b0;
            end
        end
        default: 
    endcase
end

endmodule