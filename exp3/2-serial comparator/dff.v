`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 03:06:58 AM
// Design Name: 
// Module Name: dff
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dff(
    input d,
    input reset,
    input clk,
    output q
    );
   
   wire connectorFF[7:0];
   assign connectorFF[0] = d && (~clk);
   assign connectorFF[1] = (~d) && (~clk);
   assign connectorFF[2] = ~(connectorFF[0] || connectorFF[3]);
   assign connectorFF[3] = ~(connectorFF[1] || connectorFF[2]);
   assign connectorFF[4] = connectorFF[3] && clk;
   assign connectorFF[5] = connectorFF[2] && clk;
   assign connectorFF[6] = connectorFF[5] || reset;
   assign connectorFF[7] = ~(connectorFF[4] || q);
   assign q              = ~(connectorFF[7] || connectorFF[6]) ;
endmodule
