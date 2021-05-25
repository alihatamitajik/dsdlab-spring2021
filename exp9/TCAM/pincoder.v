module pr_encoder_4_to_2 (
    D,      /* input bits/signals */
    Y,      /* Encoded Signal */
    valid   /* if is valid (there is at least one 1 bit) */
);
    input wire D [3:0];
    output wire [1:0] Y;
    output wire valid;

    assign Y[0] = D[3] || ((~D[2])&&D[1]);
    assign Y[1] = D[3] || D[2];
    assign valid = Y[1] || D[1] || D[0];
endmodule


module pr_encoder_16_to_4 (
    D,
    Y,
    valid
);
    input wire D [15:0];
    output wire [3:0] Y;
    output wire valid;

    wire valids [5:0];
    wire [1:0] results [3:0];

    pr_encoder_4_to_2 encoder1 (D[3:0], results[0], valids[0]);
    pr_encoder_4_to_2 encoder2 (D[7:4], results[1], valids[1]);
    pr_encoder_4_to_2 encoder3 (D[11:8],results[2], valids[2]);
    pr_encoder_4_to_2 encoder4 (D[15:12],results[3],valids[3]);
    pr_encoder_4_to_2 encoder5 ({results[1],results[0]},Y[1:0],);
    pr_encoder_4_to_2 encoder6 ({results[3],results[2]},Y[3:2],);

    assign valid = valids [0] || valids [1] || valids [2] ||valids [3];
    
endmodule