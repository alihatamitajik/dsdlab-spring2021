module processor_tb ();
    wire [7:0] direct_read_data;
    reg [7:0] direct_read_address;
    reg [7:0] direct_write_address;
    reg [7:0] direct_write_data;
    reg direct_memory_write;
    reg clk;
    reg resetN;
    reg haltN;

    processor p(
        .direct_read_data(direct_read_data), 
        .direct_read_address(direct_read_address),
        .direct_write_address(direct_write_address),
        .direct_write_data(direct_write_data),
        .direct_memory_write(direct_memory_write),
        .clk(clk),
        .resetN(resetN),
        .haltN(haltN)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    reg [11:0] instructions [0:127];
    integer i;
    initial begin
        $dumpfile("processor.vcd");
        $dumpvars(0, processor_tb);
        $dumpvars(0, p);

        instructions[0] = 12'b000111111111;
        instructions[1] = 12'b000000010111;
        instructions[2] = 12'b011000000000;
        instructions[3] = 12'b001011111111;
        instructions[4] = 12'b000111111111;
        instructions[5] = 12'b000111111111;
        instructions[6] = 12'b011000000000;
        instructions[7] = 12'b000000001100;
        instructions[8] = 12'b011100000000;
        instructions[9] = 12'b001011111111;

        haltN = 0;
        resetN = 0;
        direct_read_address = 255;
        direct_memory_write = 0;
        #10 resetN = 1;
        direct_memory_write = 1;
        direct_write_address = 0;
        for (i = 0; i < 10; i = i + 1) begin
            direct_write_data = {instructions[i][11:8], 4'b0000};
            #10;
            direct_write_address = direct_write_address + 1;
            if (instructions[i][11:8] < 3) begin
                direct_write_data = instructions[i][7:0];
                #10;
                direct_write_address = direct_write_address + 1;
            end
        end
        direct_write_address = 255;
        direct_write_data = 17;
        #10;
        direct_memory_write = 0;
        haltN = 1;
        #100;
        haltN = 0;
        #10;
        $finish;
    end
endmodule