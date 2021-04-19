`timescale 1ns / 1ps


// 17 bit register with capability of multiple shift in one clock
module shift_register(
    clk,
    data,
    load,
    shift,
    amount,
    out_data
    );
    
    // Terminal Deceleration
    // clk : the universal clock 
    // load : load command
    // shift: shift command (the load is prior to shift)
    // reset: asynchronous reset for register
    input clk, load, shift;
    // data : the input data for load command
    input [16:0] data;
    // amount : the amount of shift for variable shift
    input [4:0] amount;
    // out_data : the output data of the register (assigned memory register)
    output [16:0] out_data;
    
    // Base register that we use for keeping data
    reg [16:0] memory=0;
    reg [4:0] amountkeeper;

    // keep amount at last clock
    always @ (negedge clk) amountkeeper <= amount;
    // sending the register value to the output
    assign out_data = memory;
        
    always @ (posedge clk) begin
        if (load) begin // if load commmand requested
            memory <= data;
        end else if (shift && (|amountkeeper)) begin  // else if shift command was requested
                if (amountkeeper == 1) memory <= {memory[16],memory[16:1]};
                else if (amountkeeper == 2) memory <= {memory[16],memory[16],memory[16:2]};
                else if (amountkeeper == 3) memory <= {memory[16],memory[16],memory[16],memory[16:3]};            
                else if (amountkeeper == 4) memory <= {memory[16],memory[16],memory[16],memory[16],memory[16:4]};            
                else if (amountkeeper == 5) memory <= {memory[16],memory[16],memory[16],memory[16],memory[16],memory[16:5]};            
                else if (amountkeeper == 6) memory <= {memory[16],memory[16],memory[16],memory[16],memory[16],memory[16],memory[16:6]};            
                else if (amountkeeper == 7) memory <= {memory[16],memory[16],memory[16],memory[16],memory[16],memory[16],memory[16],memory[16:7]};            
                else if (amountkeeper == 8) memory <= {memory[16],memory[16],memory[16],memory[16],memory[16],memory[16],memory[16],memory[16],memory[16:8]};            
        end
    end
    
endmodule
