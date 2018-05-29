// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 24 17:50:12 2018
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SingleCycleCPUDesign_SelectAndShow_0_0_stub.v
// Design      : SingleCycleCPUDesign_SelectAndShow_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SelectAndShow,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(PCAddress, nextAddress, rs, rt, Data1, Data2, 
  ALUResult, DBData, DBDataSrc, showControl0, showControl1, showResult)
/* synthesis syn_black_box black_box_pad_pin="PCAddress[31:0],nextAddress[31:0],rs[4:0],rt[4:0],Data1[31:0],Data2[31:0],ALUResult[31:0],DBData[31:0],DBDataSrc,showControl0,showControl1,showResult[15:0]" */;
  input [31:0]PCAddress;
  input [31:0]nextAddress;
  input [4:0]rs;
  input [4:0]rt;
  input [31:0]Data1;
  input [31:0]Data2;
  input [31:0]ALUResult;
  input [31:0]DBData;
  input DBDataSrc;
  input showControl0;
  input showControl1;
  output [15:0]showResult;
endmodule
