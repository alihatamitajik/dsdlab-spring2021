`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Group 5
// Engineer: Ali Hatami Tajik
// 
// Create Date: 04/05/2021 01:43:23 AM
// Design Name: Serial Comparator
// Module Name: serial_comparator
// Project Name: DSD Laboratory
//////////////////////////////////////////////////////////////////////////////////


module serial_comparator(
    input clk,
    input a,
    input b,
    input reset,
    output greater,
    output equal,
    output less
    );
    
    // Assigning D0, D1
   wire D1;
   wire D0;
   wire q1;
   wire q0;
   assign D1 = (a && (~b)) || (q1 && (a || (~b)));
   assign D0 = (b && (~a)) || (q0 && (b || (~a)));
    
   // Q1 D-Flip-Flop Assignments
   wire connectorFF[7:0];
   assign connectorFF[0] = D1 && (~clk);
   assign connectorFF[1] = (~D1) && (~clk);
   assign connectorFF[2] = ~(connectorFF[0] || connectorFF[3]);
   assign connectorFF[3] = ~(connectorFF[1] || connectorFF[2]);
   assign connectorFF[4] = connectorFF[3] && clk;
   assign connectorFF[5] = connectorFF[2] && clk;
   assign connectorFF[6] = connectorFF[5] || reset;
   assign connectorFF[7] = ~(connectorFF[4] || q1);
   assign q1              = ~(connectorFF[6] || connectorFF[7]);
   
   // Q1 D-Flip-Flop Assignments
   wire connectorFF0[7:0];
   assign connectorFF0[0] = D0 && (~clk);
   assign connectorFF0[1] = (~D0) && (~clk);
   assign connectorFF0[2] = ~(connectorFF0[0] || connectorFF0[3]);
   assign connectorFF0[3] = ~(connectorFF0[1] || connectorFF0[2]);
   assign connectorFF0[4] = connectorFF0[3] && clk;
   assign connectorFF0[5] = connectorFF0[2] && clk;
   assign connectorFF0[6] = connectorFF0[5] || reset;
   assign connectorFF0[7] = ~(connectorFF0[4] || q0);
   assign q0              = ~(connectorFF0[6] || connectorFF0[7]);
   
   
   // Assigning Outputs
   assign less = q0;
   assign greater = q1;
   assign equal = (~q1) && (~q0);
endmodule
