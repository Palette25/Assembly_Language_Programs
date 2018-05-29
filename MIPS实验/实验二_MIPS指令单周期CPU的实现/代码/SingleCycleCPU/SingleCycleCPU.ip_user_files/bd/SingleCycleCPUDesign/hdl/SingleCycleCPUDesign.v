//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Tue May 22 19:29:40 2018
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target SingleCycleCPUDesign.bd
//Design      : SingleCycleCPUDesign
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SingleCycleCPUDesign,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SingleCycleCPUDesign,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "SingleCycleCPUDesign.hwdef" *) 
module SingleCycleCPUDesign
   (AN0,
    AN1,
    AN2,
    AN3,
    CLK,
    Control0,
    Control1,
    Enable,
    Reset,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  output AN0;
  output AN1;
  output AN2;
  output AN3;
  input CLK;
  input Control0;
  input Control1;
  input Enable;
  input Reset;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;

  wire B1_1;
  wire CLK_1;
  wire Control0_1;
  wire Control1_1;
  wire Reset_1;
  wire [15:0]SelectShow_0_showResult;
  wire [31:0]SingleCycleCPU_0_Address;
  wire SingleCycleCPU_0_DBDataSrc;
  wire [31:0]SingleCycleCPU_0_Data1;
  wire [31:0]SingleCycleCPU_0_Data2;
  wire [31:0]SingleCycleCPU_0_DataMemOut;
  wire [31:0]SingleCycleCPU_0_Result;
  wire [4:0]SingleCycleCPU_0_rs;
  wire [4:0]SingleCycleCPU_0_rt;
  wire bcdToseg7_0_a;
  wire bcdToseg7_0_b;
  wire bcdToseg7_0_c;
  wire bcdToseg7_0_d;
  wire bcdToseg7_0_e;
  wire bcdToseg7_0_f;
  wire bcdToseg7_0_g;
  wire clk_div_0_clk_out;
  wire clk_div_1_clk_out;
  wire four_2_input_and_gate_0_Y1;
  wire generSingal_0_AN1;
  wire generSingal_0_AN2;
  wire generSingal_0_AN3;
  wire generSingal_0_AN4;
  wire generSingal_0_t0;
  wire generSingal_0_t1;
  wire generSingal_0_t2;
  wire generSingal_0_t3;

  assign AN0 = generSingal_0_AN1;
  assign AN1 = generSingal_0_AN2;
  assign AN2 = generSingal_0_AN3;
  assign AN3 = generSingal_0_AN4;
  assign B1_1 = Enable;
  assign CLK_1 = CLK;
  assign Control0_1 = Control0;
  assign Control1_1 = Control1;
  assign Reset_1 = Reset;
  assign a = bcdToseg7_0_a;
  assign b = bcdToseg7_0_b;
  assign c = bcdToseg7_0_c;
  assign d = bcdToseg7_0_d;
  assign e = bcdToseg7_0_e;
  assign f = bcdToseg7_0_f;
  assign g = bcdToseg7_0_g;
  SingleCycleCPUDesign_SelectAndShow_0_0 SelectAndShow_0
       (.ALUResult(SingleCycleCPU_0_Result),
        .DBDataSrc(SingleCycleCPU_0_DBDataSrc),
        .Data1(SingleCycleCPU_0_Data1),
        .Data2(SingleCycleCPU_0_Data2),
        .DataMemOut(SingleCycleCPU_0_DataMemOut),
        .PCAddress(SingleCycleCPU_0_Address),
        .rs(SingleCycleCPU_0_rs),
        .rt(SingleCycleCPU_0_rt),
        .showControl0(Control0_1),
        .showControl1(Control1_1),
        .showResult(SelectShow_0_showResult));
  SingleCycleCPUDesign_SingleCycleCPU_0_0 SingleCycleCPU_0
       (.Address(SingleCycleCPU_0_Address),
        .DBDataSrc(SingleCycleCPU_0_DBDataSrc),
        .Data1(SingleCycleCPU_0_Data1),
        .Data2(SingleCycleCPU_0_Data2),
        .DataMemOut(SingleCycleCPU_0_DataMemOut),
        .Reset(Reset_1),
        .Result(SingleCycleCPU_0_Result),
        .clk(four_2_input_and_gate_0_Y1),
        .rs(SingleCycleCPU_0_rs),
        .rt(SingleCycleCPU_0_rt));
  SingleCycleCPUDesign_bcdToseg7_0_0 bcdToseg7_0
       (.a(bcdToseg7_0_a),
        .b(bcdToseg7_0_b),
        .c(bcdToseg7_0_c),
        .d(bcdToseg7_0_d),
        .e(bcdToseg7_0_e),
        .f(bcdToseg7_0_f),
        .g(bcdToseg7_0_g),
        .t0(generSingal_0_t0),
        .t1(generSingal_0_t1),
        .t2(generSingal_0_t2),
        .t3(generSingal_0_t3));
  SingleCycleCPUDesign_clk_div_0_1 clk_div_0
       (.clk_in(CLK_1),
        .clk_out(clk_div_0_clk_out));
  SingleCycleCPUDesign_clk_div_1_0 clk_div_1
       (.clk_in(CLK_1),
        .clk_out(clk_div_1_clk_out));
  SingleCycleCPUDesign_four_2_input_and_gate_0_0 four_2_input_and_gate_0
       (.A1(clk_div_0_clk_out),
        .A2(1'b0),
        .A3(1'b0),
        .A4(1'b0),
        .B1(B1_1),
        .B2(1'b0),
        .B3(1'b0),
        .B4(1'b0),
        .Y1(four_2_input_and_gate_0_Y1));
  SingleCycleCPUDesign_generSingal_0_0 generSingal_0
       (.AN1(generSingal_0_AN1),
        .AN2(generSingal_0_AN2),
        .AN3(generSingal_0_AN3),
        .AN4(generSingal_0_AN4),
        .clk(clk_div_1_clk_out),
        .showInput(SelectShow_0_showResult),
        .t0(generSingal_0_t0),
        .t1(generSingal_0_t1),
        .t2(generSingal_0_t2),
        .t3(generSingal_0_t3));
endmodule
