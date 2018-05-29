// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Tue May 22 19:30:50 2018
// Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SingleCycleCPUDesign_clk_div_0_1_sim_netlist.v
// Design      : SingleCycleCPUDesign_clk_div_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "SingleCycleCPUDesign_clk_div_0_1,clk_div,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "clk_div,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;

  wire clk_in;
  wire clk_out;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div inst
       (.clk_in(clk_in),
        .clk_out(clk_out));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div
   (clk_out,
    clk_in);
  output clk_out;
  input clk_in;

  wire clk_in;
  wire clk_out;
  wire clk_out_i_1_n_0;
  wire clk_out_i_2_n_0;
  wire clk_out_i_3_n_0;
  wire clk_out_i_4_n_0;
  wire clk_out_i_5_n_0;
  wire clk_out_i_6_n_0;
  wire \count[0]_i_2_n_0 ;
  wire \count[0]_i_3_n_0 ;
  wire \count[0]_i_4_n_0 ;
  wire \count[0]_i_5_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[12]_i_4_n_0 ;
  wire \count[12]_i_5_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[16]_i_3_n_0 ;
  wire \count[16]_i_4_n_0 ;
  wire \count[16]_i_5_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[20]_i_4_n_0 ;
  wire \count[20]_i_5_n_0 ;
  wire \count[24]_i_2_n_0 ;
  wire \count[24]_i_3_n_0 ;
  wire \count[24]_i_4_n_0 ;
  wire \count[24]_i_5_n_0 ;
  wire \count[28]_i_2_n_0 ;
  wire \count[28]_i_3_n_0 ;
  wire \count[28]_i_4_n_0 ;
  wire \count[28]_i_5_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[4]_i_3_n_0 ;
  wire \count[4]_i_4_n_0 ;
  wire \count[4]_i_5_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire \count[8]_i_4_n_0 ;
  wire \count[8]_i_5_n_0 ;
  wire [31:8]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_1 ;
  wire \count_reg[12]_i_1_n_2 ;
  wire \count_reg[12]_i_1_n_3 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_1 ;
  wire \count_reg[16]_i_1_n_2 ;
  wire \count_reg[16]_i_1_n_3 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_1 ;
  wire \count_reg[20]_i_1_n_2 ;
  wire \count_reg[20]_i_1_n_3 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_1 ;
  wire \count_reg[24]_i_1_n_2 ;
  wire \count_reg[24]_i_1_n_3 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_1 ;
  wire \count_reg[28]_i_1_n_2 ;
  wire \count_reg[28]_i_1_n_3 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_1 ;
  wire \count_reg[4]_i_1_n_2 ;
  wire \count_reg[4]_i_1_n_3 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire [3:3]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    clk_out_i_1
       (.I0(count_reg[27]),
        .I1(count_reg[31]),
        .I2(count_reg[28]),
        .I3(count_reg[29]),
        .I4(count_reg[30]),
        .I5(clk_out_i_2_n_0),
        .O(clk_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h45054545FFFFFFFF)) 
    clk_out_i_2
       (.I0(count_reg[25]),
        .I1(clk_out_i_3_n_0),
        .I2(clk_out_i_4_n_0),
        .I3(clk_out_i_5_n_0),
        .I4(clk_out_i_6_n_0),
        .I5(count_reg[26]),
        .O(clk_out_i_2_n_0));
  LUT3 #(
    .INIT(8'h07)) 
    clk_out_i_3
       (.I0(count_reg[17]),
        .I1(count_reg[18]),
        .I2(count_reg[19]),
        .O(clk_out_i_3_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    clk_out_i_4
       (.I0(count_reg[24]),
        .I1(count_reg[23]),
        .I2(count_reg[21]),
        .I3(count_reg[22]),
        .I4(count_reg[20]),
        .O(clk_out_i_4_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    clk_out_i_5
       (.I0(count_reg[12]),
        .I1(count_reg[11]),
        .I2(count_reg[9]),
        .I3(count_reg[8]),
        .I4(count_reg[10]),
        .O(clk_out_i_5_n_0));
  LUT5 #(
    .INIT(32'h80000000)) 
    clk_out_i_6
       (.I0(count_reg[13]),
        .I1(count_reg[15]),
        .I2(count_reg[16]),
        .I3(count_reg[18]),
        .I4(count_reg[14]),
        .O(clk_out_i_6_n_0));
  FDRE clk_out_reg
       (.C(clk_in),
        .CE(1'b1),
        .D(clk_out_i_1_n_0),
        .Q(clk_out),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h2)) 
    \count[0]_i_2 
       (.I0(\count_reg_n_0_[3] ),
        .O(\count[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[0]_i_3 
       (.I0(\count_reg_n_0_[2] ),
        .O(\count[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[0]_i_4 
       (.I0(\count_reg_n_0_[1] ),
        .O(\count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_5 
       (.I0(\count_reg_n_0_[0] ),
        .O(\count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .O(\count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[12]_i_3 
       (.I0(count_reg[14]),
        .O(\count[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[12]_i_4 
       (.I0(count_reg[13]),
        .O(\count[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[12]_i_5 
       (.I0(count_reg[12]),
        .O(\count[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[16]_i_2 
       (.I0(count_reg[19]),
        .O(\count[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[16]_i_3 
       (.I0(count_reg[18]),
        .O(\count[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[16]_i_4 
       (.I0(count_reg[17]),
        .O(\count[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[16]_i_5 
       (.I0(count_reg[16]),
        .O(\count[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[20]_i_2 
       (.I0(count_reg[23]),
        .O(\count[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[20]_i_3 
       (.I0(count_reg[22]),
        .O(\count[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[20]_i_4 
       (.I0(count_reg[21]),
        .O(\count[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[20]_i_5 
       (.I0(count_reg[20]),
        .O(\count[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[24]_i_2 
       (.I0(count_reg[27]),
        .O(\count[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[24]_i_3 
       (.I0(count_reg[26]),
        .O(\count[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[24]_i_4 
       (.I0(count_reg[25]),
        .O(\count[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[24]_i_5 
       (.I0(count_reg[24]),
        .O(\count[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[28]_i_2 
       (.I0(count_reg[31]),
        .O(\count[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[28]_i_3 
       (.I0(count_reg[30]),
        .O(\count[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[28]_i_4 
       (.I0(count_reg[29]),
        .O(\count[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[28]_i_5 
       (.I0(count_reg[28]),
        .O(\count[28]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[4]_i_2 
       (.I0(\count_reg_n_0_[7] ),
        .O(\count[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[4]_i_3 
       (.I0(\count_reg_n_0_[6] ),
        .O(\count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[4]_i_4 
       (.I0(\count_reg_n_0_[5] ),
        .O(\count[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[4]_i_5 
       (.I0(\count_reg_n_0_[4] ),
        .O(\count[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[8]_i_2 
       (.I0(count_reg[11]),
        .O(\count[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[8]_i_3 
       (.I0(count_reg[10]),
        .O(\count[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[8]_i_4 
       (.I0(count_reg[9]),
        .O(\count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \count[8]_i_5 
       (.I0(count_reg[8]),
        .O(\count[8]_i_5_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(\count_reg_n_0_[0] ),
        .R(clk_out_i_1_n_0));
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({\count[0]_i_2_n_0 ,\count[0]_i_3_n_0 ,\count[0]_i_4_n_0 ,\count[0]_i_5_n_0 }));
  FDRE \count_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(clk_out_i_1_n_0));
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\count_reg[12]_i_1_n_1 ,\count_reg[12]_i_1_n_2 ,\count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,\count[12]_i_3_n_0 ,\count[12]_i_4_n_0 ,\count[12]_i_5_n_0 }));
  FDRE \count_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[16] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(clk_out_i_1_n_0));
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\count_reg[16]_i_1_n_1 ,\count_reg[16]_i_1_n_2 ,\count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,\count[16]_i_3_n_0 ,\count[16]_i_4_n_0 ,\count[16]_i_5_n_0 }));
  FDRE \count_reg[17] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[18] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[19] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(\count_reg_n_0_[1] ),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[20] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(clk_out_i_1_n_0));
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\count_reg[20]_i_1_n_1 ,\count_reg[20]_i_1_n_2 ,\count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,\count[20]_i_3_n_0 ,\count[20]_i_4_n_0 ,\count[20]_i_5_n_0 }));
  FDRE \count_reg[21] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[22] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[23] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[24] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(clk_out_i_1_n_0));
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\count_reg[24]_i_1_n_1 ,\count_reg[24]_i_1_n_2 ,\count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S({\count[24]_i_2_n_0 ,\count[24]_i_3_n_0 ,\count[24]_i_4_n_0 ,\count[24]_i_5_n_0 }));
  FDRE \count_reg[25] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[26] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[27] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[28] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(clk_out_i_1_n_0));
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\NLW_count_reg[28]_i_1_CO_UNCONNECTED [3],\count_reg[28]_i_1_n_1 ,\count_reg[28]_i_1_n_2 ,\count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S({\count[28]_i_2_n_0 ,\count[28]_i_3_n_0 ,\count[28]_i_4_n_0 ,\count[28]_i_5_n_0 }));
  FDRE \count_reg[29] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(\count_reg_n_0_[2] ),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[30] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[31] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(\count_reg_n_0_[3] ),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(\count_reg_n_0_[4] ),
        .R(clk_out_i_1_n_0));
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\count_reg[4]_i_1_n_1 ,\count_reg[4]_i_1_n_2 ,\count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,\count[4]_i_3_n_0 ,\count[4]_i_4_n_0 ,\count[4]_i_5_n_0 }));
  FDRE \count_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(\count_reg_n_0_[5] ),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(\count_reg_n_0_[6] ),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(\count_reg_n_0_[7] ),
        .R(clk_out_i_1_n_0));
  FDRE \count_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(clk_out_i_1_n_0));
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,\count[8]_i_4_n_0 ,\count[8]_i_5_n_0 }));
  FDRE \count_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(clk_out_i_1_n_0));
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
