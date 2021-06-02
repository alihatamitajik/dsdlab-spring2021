// Source : https://my.eng.utah.edu/~nmcdonal/Tutorials/BCDTutorial/BCDConversion.html
module seven_seg_encoder (
    number,
    sign,
    hun,
    ten,
    one
);
    input signed [7:0] number;
    output reg [3:0]sign,
                one,
                ten,
                hun; 

    wire [6:0] abs_number;

    // Get the abslout value to decode
    assign abs_number = (number < 0)? ~number + 1 : number;

    // encodong binary to BCD
    integer i;
    always @(number) begin
        sign = (number < 0)? 4'd15 : 4'd14;
        hun = 4'd0;
        ten = 4'd0;
        one = 4'd0;

        for (i = 7; i >= 0; i = i-1) begin
            // add 3 to columns >= 5
            if (hun >= 5) 
                hun = hun + 3;
            if (ten >= 5)
                ten = ten + 3;
            if (one >= 5)
                one = one + 3;
            
            // shifts
            hun = hun << 1;
            hun[0] = ten[3];

            ten = ten <<1 ;
            ten[0] = one[3];

            one = one << 1;
            one[0] = number[i];

        end 
    end
endmodule