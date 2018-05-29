// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 24 17:51:07 2018
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_SingleCycleCPU_0_0/SingleCycleCPUDesign_SingleCycleCPU_0_0_stub.v
// Design      : SingleCycleCPUDesign_SingleCycleCPU_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SingleCycleCPU,Vivado 2017.2" *)
module SingleCycleCPUDesign_SingleCycleCPU_0_0(clk, Reset, Opcode, Data1, Data2, Address, Result, 
  DBData, nextAddress, rs, rt, DBDataSrc)
/* synthesis syn_black_box black_box_pad_pin="clk,Reset,Opcode[5:0],Data1[31:0],Data2[31:0],Address[31:0],Result[31:0],DBData[31:0],nextAddress[31:0],rs[4:0],rt[4:0],DBDataSrc" */;
  input clk;
  input Reset;
  output [5:0]Opcode;
  output [31:0]Data1;
  output [31:0]Data2;
  output [31:0]Address;
  output [31:0]Result;
  output [31:0]DBData;
  output [31:0]nextAddress;
  output [4:0]rs;
  output [4:0]rt;
  output DBDataSrc;
endmodule
