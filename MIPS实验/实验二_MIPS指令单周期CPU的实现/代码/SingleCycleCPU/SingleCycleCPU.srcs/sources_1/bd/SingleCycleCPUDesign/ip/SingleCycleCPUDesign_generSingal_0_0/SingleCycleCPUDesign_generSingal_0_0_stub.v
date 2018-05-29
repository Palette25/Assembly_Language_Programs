// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 24 17:50:12 2018
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_generSingal_0_0/SingleCycleCPUDesign_generSingal_0_0_stub.v
// Design      : SingleCycleCPUDesign_generSingal_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "generSingal,Vivado 2017.2" *)
module SingleCycleCPUDesign_generSingal_0_0(clk, showInput, AN1, AN2, AN3, AN4, t3, t2, t1, t0)
/* synthesis syn_black_box black_box_pad_pin="clk,showInput[15:0],AN1,AN2,AN3,AN4,t3,t2,t1,t0" */;
  input clk;
  input [15:0]showInput;
  output AN1;
  output AN2;
  output AN3;
  output AN4;
  output t3;
  output t2;
  output t1;
  output t0;
endmodule
