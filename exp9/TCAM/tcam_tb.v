module tcam_tb;
    wire [3:0] found_address;
    wire found_any;
    reg [15:0] data;
    reg write_readN = 1;
    reg [15:0] dontcare;
    reg [3:0] write_address;
    reg clk = 0;
    reg resetN = 0;

    tcam memory(
     found_address,
     found_any,
     data,
     write_readN,
     dontcare,
     write_address,
     clk,
     resetN);

     initial begin
         forever begin
             #1 clk = ~clk;
         end
     end

    initial begin
	# 2 resetN = 1;
	// First Entery : 12: X1101XXX_X1101XXX
        data =     16'b0_1101_110_1_1101_010;
	dontcare = 16'b1_0000_111_1_0000_111;
	write_address = 4'd14;
	# 2;
	// Second Entery : 8: 10XXXXXXXXXXXXXX
        data =     16'b10_00010011001001;
	dontcare = 16'b10_11111111111111;
	#2 write_readN = 0;
	// Search for data (??01101110????01101110??) Must be found in 12
	data = 16'b??01101110????01101110;
	#2
	// Search for data (11101001_01101100) Must be found in 12
	data = 16'b11101001_01101100;
	#2
	// Search for data (10_01001010110101) Must be found in 8
	#2
	data = 16'b10_01001010110101;
	// Search for data (0000000000000000) Must not be found
	#2
	data = 16'b0;
	#10 $finish;
    end
endmodule