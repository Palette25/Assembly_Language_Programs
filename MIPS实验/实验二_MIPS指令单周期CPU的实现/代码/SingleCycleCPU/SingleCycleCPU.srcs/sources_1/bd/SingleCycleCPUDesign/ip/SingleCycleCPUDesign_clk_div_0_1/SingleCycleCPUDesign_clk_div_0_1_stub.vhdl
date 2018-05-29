-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 22 19:30:51 2018
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_clk_div_0_1/SingleCycleCPUDesign_clk_div_0_1_stub.vhdl
-- Design      : SingleCycleCPUDesign_clk_div_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SingleCycleCPUDesign_clk_div_0_1 is
  Port ( 
    clk_in : in STD_LOGIC;
    clk_out : out STD_LOGIC
  );

end SingleCycleCPUDesign_clk_div_0_1;

architecture stub of SingleCycleCPUDesign_clk_div_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,clk_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "clk_div,Vivado 2017.2";
begin
end;
