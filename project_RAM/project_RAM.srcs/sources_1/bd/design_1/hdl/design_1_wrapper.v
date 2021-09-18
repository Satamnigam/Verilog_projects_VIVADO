//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sun May 16 14:19:55 2021
//Host        : DESKTOP-KIPS5FP running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (CLK,
    douta_0,
    ena_0);
  input CLK;
  output [7:0]douta_0;
  input ena_0;

  wire CLK;
  wire [7:0]douta_0;
  wire ena_0;

  design_1 design_1_i
       (.CLK(CLK),
        .douta_0(douta_0),
        .ena_0(ena_0));
endmodule
