-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 22 19:30:51 2018
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_four_2_input_and_gate_0_0/SingleCycleCPUDesign_four_2_input_and_gate_0_0_stub.vhdl
-- Design      : SingleCycleCPUDesign_four_2_input_and_gate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SingleCycleCPUDesign_four_2_input_and_gate_0_0 is
  Port ( 
    A1 : in STD_LOGIC;
    B1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    B2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    B3 : in STD_LOGIC;
    A4 : in STD_LOGIC;
    B4 : in STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC;
    Y4 : out STD_LOGIC
  );

end SingleCycleCPUDesign_four_2_input_and_gate_0_0;

architecture stub of SingleCycleCPUDesign_four_2_input_and_gate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "A1,B1,A2,B2,A3,B3,A4,B4,Y1,Y2,Y3,Y4";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "four_2_input_and_gate,Vivado 2017.2";
begin
end;
