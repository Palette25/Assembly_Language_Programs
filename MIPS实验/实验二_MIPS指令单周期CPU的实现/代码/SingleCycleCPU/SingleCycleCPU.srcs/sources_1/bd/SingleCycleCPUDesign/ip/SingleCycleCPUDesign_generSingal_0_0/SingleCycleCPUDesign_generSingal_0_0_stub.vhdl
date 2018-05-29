-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu May 24 17:50:12 2018
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_generSingal_0_0/SingleCycleCPUDesign_generSingal_0_0_stub.vhdl
-- Design      : SingleCycleCPUDesign_generSingal_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SingleCycleCPUDesign_generSingal_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    showInput : in STD_LOGIC_VECTOR ( 15 downto 0 );
    AN1 : out STD_LOGIC;
    AN2 : out STD_LOGIC;
    AN3 : out STD_LOGIC;
    AN4 : out STD_LOGIC;
    t3 : out STD_LOGIC;
    t2 : out STD_LOGIC;
    t1 : out STD_LOGIC;
    t0 : out STD_LOGIC
  );

end SingleCycleCPUDesign_generSingal_0_0;

architecture stub of SingleCycleCPUDesign_generSingal_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,showInput[15:0],AN1,AN2,AN3,AN4,t3,t2,t1,t0";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "generSingal,Vivado 2017.2";
begin
end;
