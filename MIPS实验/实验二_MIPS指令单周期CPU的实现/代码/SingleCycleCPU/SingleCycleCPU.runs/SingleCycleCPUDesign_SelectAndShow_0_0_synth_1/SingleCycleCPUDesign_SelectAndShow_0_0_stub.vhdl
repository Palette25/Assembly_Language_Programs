-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu May 24 17:50:12 2018
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SingleCycleCPUDesign_SelectAndShow_0_0_stub.vhdl
-- Design      : SingleCycleCPUDesign_SelectAndShow_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    PCAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    nextAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rt : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUResult : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DBData : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DBDataSrc : in STD_LOGIC;
    showControl0 : in STD_LOGIC;
    showControl1 : in STD_LOGIC;
    showResult : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "PCAddress[31:0],nextAddress[31:0],rs[4:0],rt[4:0],Data1[31:0],Data2[31:0],ALUResult[31:0],DBData[31:0],DBDataSrc,showControl0,showControl1,showResult[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "SelectAndShow,Vivado 2017.2";
begin
end;
