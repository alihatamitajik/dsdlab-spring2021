module multiCycle (
    indata1,
    indata2,
    indata3,
    indata4,
    indata5,
    indata6,
    indata7,
    error,
    clk,
    resetN,
    haltN,
    seven_seg_sign,
    seven_seg_digit_1,
    seven_seg_digit_2,
    seven_seg_digit_3,
    finish_flag
);
    // PORTS
    // I/O Mapped Inputs
    input [7:0] indata1,
    indata2,indata3,
    indata4,indata5,
    indata6,indata7;
    
    // Clock and control signals
    input clk,
    resetN, haltN;

    // Error flag (If overflowed or inputs were negative)
    output error, finish_flag;

    // Seven Segment LEDs digits and sign
    // We assumed that negative sign will be shown by input 15 (4'b1111)
    // and 14 for off
    output [3:0] seven_seg_sign,
    seven_seg_digit_1,
    seven_seg_digit_2,
    seven_seg_digit_3;
    
    // Stack
    wire stack_full,stack_empty, stack_push, stack_pop;
    wire [7:0] stack_data_in, stack_data_out;
    stack stack1(
        stack_data_out,
        stack_full,stack_empty,
        stack_push,stack_pop,
        stack_data_in,
        clk,resetN);

    // RAM
    wire [7:0] outmapped;
    wire ram_readWriteN;
    wire [7:0] ram_address;
    wire [7:0] ram_data_in;
    wire [7:0] ram_data_out;
    memory memory1(
        clk,ram_readWriteN,
        ram_address,ram_data_in,ram_data_out,
        indata1,indata2,indata3,indata4,
        indata5,indata6,indata7,
        outmapped, resetN);
    
    // PROCESSOR
    wire overflow, stack_error;
    multicycle_processor processor(
        clk,
        haltN,
        resetN,
        ram_readWriteN,
        ram_address,
        ram_data_out,
        ram_data_in,        
        stack_data_in,
        stack_data_out, 
        stack_full,
        stack_empty,
        stack_push,
        stack_pop,
        overflow,
        stack_error,
        finish_flag);
    
    // ERROR
    wire inputs_sign;
    assign inputs_sign = indata1[7] |
                         indata2[7] |
                         indata3[7] |
                         indata4[7] |
                         indata5[7] |
                         indata6[7] |
                         indata7[7]; // If one of them is 1 then error signal should turn on.

    assign error =  overflow ||     // If overflowed over procedures
                    stack_error ||  // If stack error occured (Pop from empty stack or push into full stack)
                    inputs_sign ||
                    (outmapped > 127);    // If inputs were negative
    // 7-segment
    seven_seg_encoder encoder(
        outmapped,
        seven_seg_sign,
        seven_seg_digit_3,
        seven_seg_digit_2,
        seven_seg_digit_1);
endmodule