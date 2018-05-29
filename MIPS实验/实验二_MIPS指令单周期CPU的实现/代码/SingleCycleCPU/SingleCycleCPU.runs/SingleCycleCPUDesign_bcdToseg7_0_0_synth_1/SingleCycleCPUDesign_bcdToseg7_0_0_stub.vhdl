-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 22 19:30:50 2018
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SingleCycleCPUDesign_bcdToseg7_0_0_stub.vhdl
-- Design      : SingleCycleCPUDesign_bcdToseg7_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    t3 : in STD_LOGIC;
    t2 : in STD_LOGIC;
    t1 : in STD_LOGIC;
    t0 : in STD_LOGIC;
    a : out STD_LOGIC;
    b : out STD_LOGIC;
    c : out STD_LOGIC;
    d : out STD_LOGIC;
    e : out STD_LOGIC;
    f : out STD_LOGIC;
    g : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "t3,t2,t1,t0,a,b,c,d,e,f,g";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bcdToseg7,Vivado 2017.2";
begin
end;
