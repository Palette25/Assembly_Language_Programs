// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu May 24 17:50:12 2018
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_generSingal_0_0/SingleCycleCPUDesign_generSingal_0_0_sim_netlist.v
// Design      : SingleCycleCPUDesign_generSingal_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SingleCycleCPUDesign_generSingal_0_0,generSingal,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "generSingal,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module SingleCycleCPUDesign_generSingal_0_0
   (clk,
    showInput,
    AN1,
    AN2,
    AN3,
    AN4,
    t3,
    t2,
    t1,
    t0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [15:0]showInput;
  output AN1;
  output AN2;
  output AN3;
  output AN4;
  output t3;
  output t2;
  output t1;
  output t0;

  wire AN1;
  wire AN2;
  wire AN3;
  wire AN4;
  wire clk;
  wire [15:0]showInput;
  wire t0;
  wire t1;
  wire t2;
  wire t3;

  SingleCycleCPUDesign_generSingal_0_0_generSingal inst
       (.AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .AN4(AN4),
        .clk(clk),
        .showInput(showInput),
        .t0(t0),
        .t1(t1),
        .t2(t2),
        .t3(t3));
endmodule

(* ORIG_REF_NAME = "generSingal" *) 
module SingleCycleCPUDesign_generSingal_0_0_generSingal
   (t0,
    t1,
    t2,
    t3,
    AN1,
    AN2,
    AN3,
    AN4,
    showInput,
    clk);
  output t0;
  output t1;
  output t2;
  output t3;
  output AN1;
  output AN2;
  output AN3;
  output AN4;
  input [15:0]showInput;
  input clk;

  wire AN1;
  wire AN1_INST_0_i_1_n_0;
  wire AN2;
  wire AN2_INST_0_i_1_n_0;
  wire AN3;
  wire AN3_INST_0_i_1_n_0;
  wire AN4;
  wire AN4_INST_0_i_1_n_0;
  wire clk;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire [15:0]showInput;
  wire t0;
  wire t1;
  wire t2;
  wire t3;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    AN1_INST_0
       (.I0(t3),
        .I1(showInput[3]),
        .I2(AN1_INST_0_i_1_n_0),
        .O(AN1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AN1_INST_0_i_1
       (.I0(t0),
        .I1(showInput[0]),
        .I2(showInput[2]),
        .I3(t2),
        .I4(showInput[1]),
        .I5(t1),
        .O(AN1_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    AN2_INST_0
       (.I0(t3),
        .I1(showInput[7]),
        .I2(AN2_INST_0_i_1_n_0),
        .O(AN2));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AN2_INST_0_i_1
       (.I0(t0),
        .I1(showInput[4]),
        .I2(showInput[6]),
        .I3(t2),
        .I4(showInput[5]),
        .I5(t1),
        .O(AN2_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    AN3_INST_0
       (.I0(t3),
        .I1(showInput[11]),
        .I2(AN3_INST_0_i_1_n_0),
        .O(AN3));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AN3_INST_0_i_1
       (.I0(t0),
        .I1(showInput[8]),
        .I2(showInput[10]),
        .I3(t2),
        .I4(showInput[9]),
        .I5(t1),
        .O(AN3_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    AN4_INST_0
       (.I0(t3),
        .I1(showInput[15]),
        .I2(AN4_INST_0_i_1_n_0),
        .O(AN4));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    AN4_INST_0_i_1
       (.I0(t0),
        .I1(showInput[12]),
        .I2(showInput[14]),
        .I3(t2),
        .I4(showInput[13]),
        .I5(t1),
        .O(AN4_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(t0),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(t0),
        .I1(t1),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(t0),
        .I1(t1),
        .I2(t2),
        .O(\counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[3]_i_1 
       (.I0(t3),
        .I1(t2),
        .I2(t0),
        .I3(t1),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_2 
       (.I0(t1),
        .I1(t0),
        .I2(t2),
        .I3(t3),
        .O(\counter[3]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(t0),
        .R(\counter[3]_i_1_n_0 ));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(t1),
        .R(\counter[3]_i_1_n_0 ));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(t2),
        .R(\counter[3]_i_1_n_0 ));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter[3]_i_2_n_0 ),
        .Q(t3),
        .R(\counter[3]_i_1_n_0 ));
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
