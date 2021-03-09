// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:BCDAdder:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mod11_BCDAdder_0_0 (
  C_in,
  C_out,
  a1,
  a2,
  a3,
  a4,
  b1,
  b2,
  b3,
  b4,
  s1,
  s2,
  s3,
  s4
);

input wire [0 : 0] C_in;
output wire [0 : 0] C_out;
input wire [0 : 0] a1;
input wire [0 : 0] a2;
input wire [0 : 0] a3;
input wire [0 : 0] a4;
input wire [0 : 0] b1;
input wire [0 : 0] b2;
input wire [0 : 0] b3;
input wire [0 : 0] b4;
output wire [0 : 0] s1;
output wire [0 : 0] s2;
output wire [0 : 0] s3;
output wire [0 : 0] s4;

  bcdAdder inst (
    .C_in(C_in),
    .C_out(C_out),
    .a1(a1),
    .a2(a2),
    .a3(a3),
    .a4(a4),
    .b1(b1),
    .b2(b2),
    .b3(b3),
    .b4(b4),
    .s1(s1),
    .s2(s2),
    .s3(s3),
    .s4(s4)
  );
endmodule
