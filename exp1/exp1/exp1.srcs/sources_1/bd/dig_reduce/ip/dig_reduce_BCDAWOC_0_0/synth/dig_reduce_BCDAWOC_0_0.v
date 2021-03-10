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


// IP VLNV: Group5:user:BCDAWOC:1.0
// IP Revision: 3

(* X_CORE_INFO = "BCDAWOC,Vivado 2019.1" *)
(* CHECK_LICENSE_TYPE = "dig_reduce_BCDAWOC_0_0,BCDAWOC,{}" *)
(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module dig_reduce_BCDAWOC_0_0 (
  A0,
  A1,
  A2,
  A3,
  B0,
  B1,
  B2,
  B3,
  C_in,
  C_out,
  S0,
  S1,
  S2,
  S3
);

input wire [0 : 0] A0;
input wire [0 : 0] A1;
input wire [0 : 0] A2;
input wire [0 : 0] A3;
input wire [0 : 0] B0;
input wire [0 : 0] B1;
input wire [0 : 0] B2;
input wire [0 : 0] B3;
input wire [0 : 0] C_in;
output wire [0 : 0] C_out;
output wire [0 : 0] S0;
output wire [0 : 0] S1;
output wire [0 : 0] S2;
output wire [0 : 0] S3;

  BCDAWOC inst (
    .A0(A0),
    .A1(A1),
    .A2(A2),
    .A3(A3),
    .B0(B0),
    .B1(B1),
    .B2(B2),
    .B3(B3),
    .C_in(C_in),
    .C_out(C_out),
    .S0(S0),
    .S1(S1),
    .S2(S2),
    .S3(S3)
  );
endmodule