-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 22 19:31:37 2018
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               e:/VivadoProjects/SingleCycleCPU/SingleCycleCPU.srcs/sources_1/bd/SingleCycleCPUDesign/ip/SingleCycleCPUDesign_SelectAndShow_0_0/SingleCycleCPUDesign_SelectAndShow_0_0_sim_netlist.vhdl
-- Design      : SingleCycleCPUDesign_SelectAndShow_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SingleCycleCPUDesign_SelectAndShow_0_0_SelectAndShow is
  port (
    showResult : out STD_LOGIC_VECTOR ( 15 downto 0 );
    showControl0 : in STD_LOGIC;
    DataMemOut : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DBDataSrc : in STD_LOGIC;
    ALUResult : in STD_LOGIC_VECTOR ( 7 downto 0 );
    showControl1 : in STD_LOGIC;
    Data1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    PCAddress : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rt : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of SingleCycleCPUDesign_SelectAndShow_0_0_SelectAndShow : entity is "SelectAndShow";
end SingleCycleCPUDesign_SelectAndShow_0_0_SelectAndShow;

architecture STRUCTURE of SingleCycleCPUDesign_SelectAndShow_0_0_SelectAndShow is
  signal \showResult[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \showResult[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \showResult[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \showResult[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \showResult[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \showResult[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \showResult[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \showResult[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \showResult[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \showResult[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \showResult[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \showResult[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \showResult[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \showResult[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \showResult[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \showResult[7]_INST_0_i_2_n_0\ : STD_LOGIC;
begin
\showResult[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \showResult[0]_INST_0_i_1_n_0\,
      I1 => \showResult[0]_INST_0_i_2_n_0\,
      O => showResult(0),
      S => showControl0
    );
\showResult[0]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(0),
      I1 => showControl1,
      I2 => PCAddress(0),
      O => \showResult[0]_INST_0_i_1_n_0\
    );
\showResult[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataMemOut(0),
      I1 => DBDataSrc,
      I2 => ALUResult(0),
      I3 => showControl1,
      I4 => Data1(0),
      O => \showResult[0]_INST_0_i_2_n_0\
    );
\showResult[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ALUResult(2),
      I1 => rs(2),
      I2 => showControl0,
      I3 => rt(2),
      I4 => showControl1,
      I5 => PCAddress(10),
      O => showResult(10)
    );
\showResult[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ALUResult(3),
      I1 => rs(3),
      I2 => showControl0,
      I3 => rt(3),
      I4 => showControl1,
      I5 => PCAddress(11),
      O => showResult(11)
    );
\showResult[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ALUResult(4),
      I1 => rs(4),
      I2 => showControl0,
      I3 => rt(4),
      I4 => showControl1,
      I5 => PCAddress(12),
      O => showResult(12)
    );
\showResult[13]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => ALUResult(5),
      I1 => showControl0,
      I2 => PCAddress(13),
      I3 => showControl1,
      O => showResult(13)
    );
\showResult[14]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => ALUResult(6),
      I1 => showControl0,
      I2 => PCAddress(14),
      I3 => showControl1,
      O => showResult(14)
    );
\showResult[15]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8830"
    )
        port map (
      I0 => ALUResult(7),
      I1 => showControl0,
      I2 => PCAddress(15),
      I3 => showControl1,
      O => showResult(15)
    );
\showResult[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \showResult[1]_INST_0_i_1_n_0\,
      I1 => \showResult[1]_INST_0_i_2_n_0\,
      O => showResult(1),
      S => showControl0
    );
\showResult[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(1),
      I1 => showControl1,
      I2 => PCAddress(1),
      O => \showResult[1]_INST_0_i_1_n_0\
    );
\showResult[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataMemOut(1),
      I1 => DBDataSrc,
      I2 => ALUResult(1),
      I3 => showControl1,
      I4 => Data1(1),
      O => \showResult[1]_INST_0_i_2_n_0\
    );
\showResult[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \showResult[2]_INST_0_i_1_n_0\,
      I1 => \showResult[2]_INST_0_i_2_n_0\,
      O => showResult(2),
      S => showControl0
    );
\showResult[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(2),
      I1 => showControl1,
      I2 => PCAddress(2),
      O => \showResult[2]_INST_0_i_1_n_0\
    );
\showResult[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataMemOut(2),
      I1 => DBDataSrc,
      I2 => ALUResult(2),
      I3 => showControl1,
      I4 => Data1(2),
      O => \showResult[2]_INST_0_i_2_n_0\
    );
\showResult[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \showResult[3]_INST_0_i_1_n_0\,
      I1 => \showResult[3]_INST_0_i_2_n_0\,
      O => showResult(3),
      S => showControl0
    );
\showResult[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(3),
      I1 => showControl1,
      I2 => PCAddress(3),
      O => \showResult[3]_INST_0_i_1_n_0\
    );
\showResult[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataMemOut(3),
      I1 => DBDataSrc,
      I2 => ALUResult(3),
      I3 => showControl1,
      I4 => Data1(3),
      O => \showResult[3]_INST_0_i_2_n_0\
    );
\showResult[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \showResult[4]_INST_0_i_1_n_0\,
      I1 => \showResult[4]_INST_0_i_2_n_0\,
      O => showResult(4),
      S => showControl0
    );
\showResult[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(4),
      I1 => showControl1,
      I2 => PCAddress(4),
      O => \showResult[4]_INST_0_i_1_n_0\
    );
\showResult[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataMemOut(4),
      I1 => DBDataSrc,
      I2 => ALUResult(4),
      I3 => showControl1,
      I4 => Data1(4),
      O => \showResult[4]_INST_0_i_2_n_0\
    );
\showResult[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \showResult[5]_INST_0_i_1_n_0\,
      I1 => \showResult[5]_INST_0_i_2_n_0\,
      O => showResult(5),
      S => showControl0
    );
\showResult[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(5),
      I1 => showControl1,
      I2 => PCAddress(5),
      O => \showResult[5]_INST_0_i_1_n_0\
    );
\showResult[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataMemOut(5),
      I1 => DBDataSrc,
      I2 => ALUResult(5),
      I3 => showControl1,
      I4 => Data1(5),
      O => \showResult[5]_INST_0_i_2_n_0\
    );
\showResult[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \showResult[6]_INST_0_i_1_n_0\,
      I1 => \showResult[6]_INST_0_i_2_n_0\,
      O => showResult(6),
      S => showControl0
    );
\showResult[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(6),
      I1 => showControl1,
      I2 => PCAddress(6),
      O => \showResult[6]_INST_0_i_1_n_0\
    );
\showResult[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataMemOut(6),
      I1 => DBDataSrc,
      I2 => ALUResult(6),
      I3 => showControl1,
      I4 => Data1(6),
      O => \showResult[6]_INST_0_i_2_n_0\
    );
\showResult[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \showResult[7]_INST_0_i_1_n_0\,
      I1 => \showResult[7]_INST_0_i_2_n_0\,
      O => showResult(7),
      S => showControl0
    );
\showResult[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Data2(7),
      I1 => showControl1,
      I2 => PCAddress(7),
      O => \showResult[7]_INST_0_i_1_n_0\
    );
\showResult[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => DataMemOut(7),
      I1 => DBDataSrc,
      I2 => ALUResult(7),
      I3 => showControl1,
      I4 => Data1(7),
      O => \showResult[7]_INST_0_i_2_n_0\
    );
\showResult[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ALUResult(0),
      I1 => rs(0),
      I2 => showControl0,
      I3 => rt(0),
      I4 => showControl1,
      I5 => PCAddress(8),
      O => showResult(8)
    );
\showResult[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => ALUResult(1),
      I1 => rs(1),
      I2 => showControl0,
      I3 => rt(1),
      I4 => showControl1,
      I5 => PCAddress(9),
      O => showResult(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SingleCycleCPUDesign_SelectAndShow_0_0 is
  port (
    PCAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rs : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rt : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Data1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Data2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUResult : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DataMemOut : in STD_LOGIC_VECTOR ( 31 downto 0 );
    DBDataSrc : in STD_LOGIC;
    showControl0 : in STD_LOGIC;
    showControl1 : in STD_LOGIC;
    showResult : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SingleCycleCPUDesign_SelectAndShow_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SingleCycleCPUDesign_SelectAndShow_0_0 : entity is "SingleCycleCPUDesign_SelectAndShow_0_0,SelectAndShow,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of SingleCycleCPUDesign_SelectAndShow_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of SingleCycleCPUDesign_SelectAndShow_0_0 : entity is "SelectAndShow,Vivado 2017.2";
end SingleCycleCPUDesign_SelectAndShow_0_0;

architecture STRUCTURE of SingleCycleCPUDesign_SelectAndShow_0_0 is
begin
inst: entity work.SingleCycleCPUDesign_SelectAndShow_0_0_SelectAndShow
     port map (
      ALUResult(7 downto 0) => ALUResult(7 downto 0),
      DBDataSrc => DBDataSrc,
      Data1(7 downto 0) => Data1(7 downto 0),
      Data2(7 downto 0) => Data2(7 downto 0),
      DataMemOut(7 downto 0) => DataMemOut(7 downto 0),
      PCAddress(15 downto 0) => PCAddress(15 downto 0),
      rs(4 downto 0) => rs(4 downto 0),
      rt(4 downto 0) => rt(4 downto 0),
      showControl0 => showControl0,
      showControl1 => showControl1,
      showResult(15 downto 0) => showResult(15 downto 0)
    );
end STRUCTURE;
