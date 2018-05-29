// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue May 22 19:31:37 2018
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               e:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_SelectAndShow_0_0/SingleCycleCPUDesign_SelectAndShow_0_0_sim_netlist.v
// Design      : SingleCycleCPUDesign_SelectAndShow_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SingleCycleCPUDesign_SelectAndShow_0_0,SelectAndShow,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "SelectAndShow,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module SingleCycleCPUDesign_SelectAndShow_0_0
   (PCAddress,
    rs,
    rt,
    Data1,
    Data2,
    ALUResult,
    DataMemOut,
    DBDataSrc,
    showControl0,
    showControl1,
    showResult);
  input [31:0]PCAddress;
  input [4:0]rs;
  input [4:0]rt;
  input [31:0]Data1;
  input [31:0]Data2;
  input [31:0]ALUResult;
  input [31:0]DataMemOut;
  input DBDataSrc;
  input showControl0;
  input showControl1;
  output [15:0]showResult;

  wire [31:0]ALUResult;
  wire DBDataSrc;
  wire [31:0]Data1;
  wire [31:0]Data2;
  wire [31:0]DataMemOut;
  wire [31:0]PCAddress;
  wire [4:0]rs;
  wire [4:0]rt;
  wire showControl0;
  wire showControl1;
  wire [15:0]showResult;

  SingleCycleCPUDesign_SelectAndShow_0_0_SelectAndShow inst
       (.ALUResult(ALUResult[7:0]),
        .DBDataSrc(DBDataSrc),
        .Data1(Data1[7:0]),
        .Data2(Data2[7:0]),
        .DataMemOut(DataMemOut[7:0]),
        .PCAddress(PCAddress[15:0]),
        .rs(rs),
        .rt(rt),
        .showControl0(showControl0),
        .showControl1(showControl1),
        .showResult(showResult));
endmodule

(* ORIG_REF_NAME = "SelectAndShow" *) 
module SingleCycleCPUDesign_SelectAndShow_0_0_SelectAndShow
   (showResult,
    showControl0,
    DataMemOut,
    DBDataSrc,
    ALUResult,
    showControl1,
    Data1,
    Data2,
    PCAddress,
    rs,
    rt);
  output [15:0]showResult;
  input showControl0;
  input [7:0]DataMemOut;
  input DBDataSrc;
  input [7:0]ALUResult;
  input showControl1;
  input [7:0]Data1;
  input [7:0]Data2;
  input [15:0]PCAddress;
  input [4:0]rs;
  input [4:0]rt;

  wire [7:0]ALUResult;
  wire DBDataSrc;
  wire [7:0]Data1;
  wire [7:0]Data2;
  wire [7:0]DataMemOut;
  wire [15:0]PCAddress;
  wire [4:0]rs;
  wire [4:0]rt;
  wire showControl0;
  wire showControl1;
  wire [15:0]showResult;
  wire \showResult[0]_INST_0_i_1_n_0 ;
  wire \showResult[0]_INST_0_i_2_n_0 ;
  wire \showResult[1]_INST_0_i_1_n_0 ;
  wire \showResult[1]_INST_0_i_2_n_0 ;
  wire \showResult[2]_INST_0_i_1_n_0 ;
  wire \showResult[2]_INST_0_i_2_n_0 ;
  wire \showResult[3]_INST_0_i_1_n_0 ;
  wire \showResult[3]_INST_0_i_2_n_0 ;
  wire \showResult[4]_INST_0_i_1_n_0 ;
  wire \showResult[4]_INST_0_i_2_n_0 ;
  wire \showResult[5]_INST_0_i_1_n_0 ;
  wire \showResult[5]_INST_0_i_2_n_0 ;
  wire \showResult[6]_INST_0_i_1_n_0 ;
  wire \showResult[6]_INST_0_i_2_n_0 ;
  wire \showResult[7]_INST_0_i_1_n_0 ;
  wire \showResult[7]_INST_0_i_2_n_0 ;

  MUXF7 \showResult[0]_INST_0 
       (.I0(\showResult[0]_INST_0_i_1_n_0 ),
        .I1(\showResult[0]_INST_0_i_2_n_0 ),
        .O(showResult[0]),
        .S(showControl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \showResult[0]_INST_0_i_1 
       (.I0(Data2[0]),
        .I1(showControl1),
        .I2(PCAddress[0]),
        .O(\showResult[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \showResult[0]_INST_0_i_2 
       (.I0(DataMemOut[0]),
        .I1(DBDataSrc),
        .I2(ALUResult[0]),
        .I3(showControl1),
        .I4(Data1[0]),
        .O(\showResult[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \showResult[10]_INST_0 
       (.I0(ALUResult[2]),
        .I1(rs[2]),
        .I2(showControl0),
        .I3(rt[2]),
        .I4(showControl1),
        .I5(PCAddress[10]),
        .O(showResult[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \showResult[11]_INST_0 
       (.I0(ALUResult[3]),
        .I1(rs[3]),
        .I2(showControl0),
        .I3(rt[3]),
        .I4(showControl1),
        .I5(PCAddress[11]),
        .O(showResult[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \showResult[12]_INST_0 
       (.I0(ALUResult[4]),
        .I1(rs[4]),
        .I2(showControl0),
        .I3(rt[4]),
        .I4(showControl1),
        .I5(PCAddress[12]),
        .O(showResult[12]));
  LUT4 #(
    .INIT(16'h8830)) 
    \showResult[13]_INST_0 
       (.I0(ALUResult[5]),
        .I1(showControl0),
        .I2(PCAddress[13]),
        .I3(showControl1),
        .O(showResult[13]));
  LUT4 #(
    .INIT(16'h8830)) 
    \showResult[14]_INST_0 
       (.I0(ALUResult[6]),
        .I1(showControl0),
        .I2(PCAddress[14]),
        .I3(showControl1),
        .O(showResult[14]));
  LUT4 #(
    .INIT(16'h8830)) 
    \showResult[15]_INST_0 
       (.I0(ALUResult[7]),
        .I1(showControl0),
        .I2(PCAddress[15]),
        .I3(showControl1),
        .O(showResult[15]));
  MUXF7 \showResult[1]_INST_0 
       (.I0(\showResult[1]_INST_0_i_1_n_0 ),
        .I1(\showResult[1]_INST_0_i_2_n_0 ),
        .O(showResult[1]),
        .S(showControl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \showResult[1]_INST_0_i_1 
       (.I0(Data2[1]),
        .I1(showControl1),
        .I2(PCAddress[1]),
        .O(\showResult[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \showResult[1]_INST_0_i_2 
       (.I0(DataMemOut[1]),
        .I1(DBDataSrc),
        .I2(ALUResult[1]),
        .I3(showControl1),
        .I4(Data1[1]),
        .O(\showResult[1]_INST_0_i_2_n_0 ));
  MUXF7 \showResult[2]_INST_0 
       (.I0(\showResult[2]_INST_0_i_1_n_0 ),
        .I1(\showResult[2]_INST_0_i_2_n_0 ),
        .O(showResult[2]),
        .S(showControl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \showResult[2]_INST_0_i_1 
       (.I0(Data2[2]),
        .I1(showControl1),
        .I2(PCAddress[2]),
        .O(\showResult[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \showResult[2]_INST_0_i_2 
       (.I0(DataMemOut[2]),
        .I1(DBDataSrc),
        .I2(ALUResult[2]),
        .I3(showControl1),
        .I4(Data1[2]),
        .O(\showResult[2]_INST_0_i_2_n_0 ));
  MUXF7 \showResult[3]_INST_0 
       (.I0(\showResult[3]_INST_0_i_1_n_0 ),
        .I1(\showResult[3]_INST_0_i_2_n_0 ),
        .O(showResult[3]),
        .S(showControl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \showResult[3]_INST_0_i_1 
       (.I0(Data2[3]),
        .I1(showControl1),
        .I2(PCAddress[3]),
        .O(\showResult[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \showResult[3]_INST_0_i_2 
       (.I0(DataMemOut[3]),
        .I1(DBDataSrc),
        .I2(ALUResult[3]),
        .I3(showControl1),
        .I4(Data1[3]),
        .O(\showResult[3]_INST_0_i_2_n_0 ));
  MUXF7 \showResult[4]_INST_0 
       (.I0(\showResult[4]_INST_0_i_1_n_0 ),
        .I1(\showResult[4]_INST_0_i_2_n_0 ),
        .O(showResult[4]),
        .S(showControl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \showResult[4]_INST_0_i_1 
       (.I0(Data2[4]),
        .I1(showControl1),
        .I2(PCAddress[4]),
        .O(\showResult[4]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \showResult[4]_INST_0_i_2 
       (.I0(DataMemOut[4]),
        .I1(DBDataSrc),
        .I2(ALUResult[4]),
        .I3(showControl1),
        .I4(Data1[4]),
        .O(\showResult[4]_INST_0_i_2_n_0 ));
  MUXF7 \showResult[5]_INST_0 
       (.I0(\showResult[5]_INST_0_i_1_n_0 ),
        .I1(\showResult[5]_INST_0_i_2_n_0 ),
        .O(showResult[5]),
        .S(showControl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \showResult[5]_INST_0_i_1 
       (.I0(Data2[5]),
        .I1(showControl1),
        .I2(PCAddress[5]),
        .O(\showResult[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \showResult[5]_INST_0_i_2 
       (.I0(DataMemOut[5]),
        .I1(DBDataSrc),
        .I2(ALUResult[5]),
        .I3(showControl1),
        .I4(Data1[5]),
        .O(\showResult[5]_INST_0_i_2_n_0 ));
  MUXF7 \showResult[6]_INST_0 
       (.I0(\showResult[6]_INST_0_i_1_n_0 ),
        .I1(\showResult[6]_INST_0_i_2_n_0 ),
        .O(showResult[6]),
        .S(showControl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \showResult[6]_INST_0_i_1 
       (.I0(Data2[6]),
        .I1(showControl1),
        .I2(PCAddress[6]),
        .O(\showResult[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \showResult[6]_INST_0_i_2 
       (.I0(DataMemOut[6]),
        .I1(DBDataSrc),
        .I2(ALUResult[6]),
        .I3(showControl1),
        .I4(Data1[6]),
        .O(\showResult[6]_INST_0_i_2_n_0 ));
  MUXF7 \showResult[7]_INST_0 
       (.I0(\showResult[7]_INST_0_i_1_n_0 ),
        .I1(\showResult[7]_INST_0_i_2_n_0 ),
        .O(showResult[7]),
        .S(showControl0));
  LUT3 #(
    .INIT(8'hB8)) 
    \showResult[7]_INST_0_i_1 
       (.I0(Data2[7]),
        .I1(showControl1),
        .I2(PCAddress[7]),
        .O(\showResult[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \showResult[7]_INST_0_i_2 
       (.I0(DataMemOut[7]),
        .I1(DBDataSrc),
        .I2(ALUResult[7]),
        .I3(showControl1),
        .I4(Data1[7]),
        .O(\showResult[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \showResult[8]_INST_0 
       (.I0(ALUResult[0]),
        .I1(rs[0]),
        .I2(showControl0),
        .I3(rt[0]),
        .I4(showControl1),
        .I5(PCAddress[8]),
        .O(showResult[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \showResult[9]_INST_0 
       (.I0(ALUResult[1]),
        .I1(rs[1]),
        .I2(showControl0),
        .I3(rt[1]),
        .I4(showControl1),
        .I5(PCAddress[9]),
        .O(showResult[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
