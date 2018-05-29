//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Thu May 24 17:49:00 2018
//Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
//Command     : generate_target SingleCycleCPUDesign_wrapper.bd
//Design      : SingleCycleCPUDesign_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SingleCycleCPUDesign_wrapper
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

  wire AN0;
  wire AN1;
  wire AN2;
  wire AN3;
  wire CLK;
  wire Control0;
  wire Control1;
  wire Enable;
  wire Reset;
  wire a;
  wire b;
  wire c;
  wire d;
  wire e;
  wire f;
  wire g;

  SingleCycleCPUDesign SingleCycleCPUDesign_i
       (.AN0(AN0),
        .AN1(AN1),
        .AN2(AN2),
        .AN3(AN3),
        .CLK(CLK),
        .Control0(Control0),
        .Control1(Control1),
        .Enable(Enable),
        .Reset(Reset),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g));
endmodule
