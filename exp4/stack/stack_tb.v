`timescale 1ns / 1ps
// Stack Test Bench

module stack_tb();
    reg clk = 0, pop = 0, push = 0, rstN = 1;
    reg [3:0]data_in = 0;
    wire [3:0] data_out;
    wire full, empty;
    stack uut(
        .clk (clk),.rstN (rstN),.data_in (data_in),.push (push),.pop (pop),
        .data_out (data_out),.full (full),.empty (empty)
    );
    
    // Generating Clock Signal
    initial begin 
        forever
            #5 clk = ~clk;
    end
    integer i = 0;
    initial begin 
        $dumpfile("stack_test.vcd");
        $dumpvars(0,stack_tb);
        #10;
        // push 5 data every clock
        push = 1;
        for (i = 0; i<5; i = i + 1) begin data_in = $random; #10; end
        // pop last data
        push = 0;
        pop = 1; #10;
        // push pop in one clock
        data_in = 4;
        push = 1; #10;
        // pop again result must be 4
        push = 0; #10;
        // push 6 data (5 valid push / one invelid push)
        pop = 0; push =1;
        for (i = 0; i<6; i = i + 1) begin data_in = $random; #10; end
        // pop last 3 data (it should be the 5th data in last push part)
        push = 0; 
        pop =1; #30;
        // reset the stack
        pop =0; rstN = 0; #5 rstN = 1; #5;
        // 2 invalid pop
        pop = 1; #20;
        // push a new data with pop on and pop it
        data_in = 14; push = 1; #10; // push data with push and pop on but pop is invalid
        push = 0; #10; //pop the last entry
        // change in data with push off
        pop = 0;
        for (i = 0; i<3; i = i + 1) begin data_in = $random; #10; end // change data in with push off
        #5 $finish;
    end
endmodule
