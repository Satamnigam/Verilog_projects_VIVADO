//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sun May 16 14:19:55 2021
//Host        : DESKTOP-KIPS5FP running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (CLK,
    douta_0,
    ena_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN design_1_CLK_0, FREQ_HZ 10000000, INSERT_VIP 0, PHASE 0.000" *) input CLK;
  output [7:0]douta_0;
  input ena_0;

  wire CLK;
  wire [7:0]blk_mem_gen_0_douta;
  wire [9:0]c_counter_binary_0_Q;
  wire ena_0_1;

  assign douta_0[7:0] = blk_mem_gen_0_douta;
  assign ena_0_1 = ena_0;
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(c_counter_binary_0_Q),
        .clka(CLK),
        .douta(blk_mem_gen_0_douta),
        .ena(ena_0_1));
  design_1_c_counter_binary_0_0 c_counter_binary_0
       (.CLK(CLK),
        .Q(c_counter_binary_0_Q));
endmodule
