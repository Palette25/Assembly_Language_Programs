// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue May 22 19:30:51 2018
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_bcdToseg7_0_0/SingleCycleCPUDesign_bcdToseg7_0_0_sim_netlist.v
// Design      : SingleCycleCPUDesign_bcdToseg7_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SingleCycleCPUDesign_bcdToseg7_0_0,bcdToseg7,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bcdToseg7,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module SingleCycleCPUDesign_bcdToseg7_0_0
   (t3,
    t2,
    t1,
    t0,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  input t3;
  input t2;
  input t1;
  input t0;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;

  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  wire t0;
  wire t1;
  wire t2;
  wire t3;

  SingleCycleCPUDesign_bcdToseg7_0_0_bcdToseg7 inst
       (.a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .t0(t0),
        .t1(t1),
        .t2(t2),
        .t3(t3));
endmodule

(* ORIG_REF_NAME = "bcdToseg7" *) 
module SingleCycleCPUDesign_bcdToseg7_0_0_bcdToseg7
   (a,
    b,
    c,
    d,
    e,
    f,
    g,
    t1,
    t2,
    t3,
    t0);
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  input t1;
  input t2;
  input t3;
  input t0;

  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;
  wire t0;
  wire t1;
  wire t2;
  wire t3;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6104)) 
    a__0
       (.I0(t1),
        .I1(t2),
        .I2(t3),
        .I3(t0),
        .O(a));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hAC48)) 
    b__0
       (.I0(t1),
        .I1(t2),
        .I2(t0),
        .I3(t3),
        .O(b));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hD004)) 
    c__0
       (.I0(t0),
        .I1(t1),
        .I2(t2),
        .I3(t3),
        .O(c));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8924)) 
    d__0
       (.I0(t1),
        .I1(t2),
        .I2(t3),
        .I3(t0),
        .O(d));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h232A)) 
    e__0
       (.I0(t0),
        .I1(t3),
        .I2(t1),
        .I3(t2),
        .O(e));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h480E)) 
    f__0
       (.I0(t1),
        .I1(t0),
        .I2(t3),
        .I3(t2),
        .O(f));
  LUT4 #(
    .INIT(16'h1805)) 
    g__0
       (.I0(t1),
        .I1(t0),
        .I2(t3),
        .I3(t2),
        .O(g));
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
