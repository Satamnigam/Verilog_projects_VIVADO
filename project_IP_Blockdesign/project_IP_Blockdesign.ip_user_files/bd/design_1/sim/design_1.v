//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Thu May 20 00:19:46 2021
//Host        : DESKTOP-KIPS5FP running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_in1_0,
    dout_0,
    sel_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_in1_0;
  output [3:0]dout_0;
  input [1:0]sel_0;

  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire [1:0]sel_0_1;
  wire [3:0]top_0_dout;

  assign clk_in1_0_1 = clk_in1_0;
  assign dout_0[3:0] = top_0_dout;
  assign sel_0_1 = sel_0[1:0];
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_top_0_0 top_0
       (.clk(clk_wiz_0_clk_out1),
        .dout(top_0_dout),
        .sel(sel_0_1));
endmodule
