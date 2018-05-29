-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu May 24 17:50:12 2018
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SingleCycleCPUDesign_generSingal_0_0_sim_netlist.vhdl
-- Design      : SingleCycleCPUDesign_generSingal_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generSingal is
  port (
    t0 : out STD_LOGIC;
    t1 : out STD_LOGIC;
    t2 : out STD_LOGIC;
    t3 : out STD_LOGIC;
    AN1 : out STD_LOGIC;
    AN2 : out STD_LOGIC;
    AN3 : out STD_LOGIC;
    AN4 : out STD_LOGIC;
    showInput : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generSingal;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generSingal is
  signal AN1_INST_0_i_1_n_0 : STD_LOGIC;
  signal AN2_INST_0_i_1_n_0 : STD_LOGIC;
  signal AN3_INST_0_i_1_n_0 : STD_LOGIC;
  signal AN4_INST_0_i_1_n_0 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \^t0\ : STD_LOGIC;
  signal \^t1\ : STD_LOGIC;
  signal \^t2\ : STD_LOGIC;
  signal \^t3\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AN1_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of AN2_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of AN3_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of AN4_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair0";
begin
  t0 <= \^t0\;
  t1 <= \^t1\;
  t2 <= \^t2\;
  t3 <= \^t3\;
AN1_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \^t3\,
      I1 => showInput(3),
      I2 => AN1_INST_0_i_1_n_0,
      O => AN1
    );
AN1_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^t0\,
      I1 => showInput(0),
      I2 => showInput(2),
      I3 => \^t2\,
      I4 => showInput(1),
      I5 => \^t1\,
      O => AN1_INST_0_i_1_n_0
    );
AN2_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \^t3\,
      I1 => showInput(7),
      I2 => AN2_INST_0_i_1_n_0,
      O => AN2
    );
AN2_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^t0\,
      I1 => showInput(4),
      I2 => showInput(6),
      I3 => \^t2\,
      I4 => showInput(5),
      I5 => \^t1\,
      O => AN2_INST_0_i_1_n_0
    );
AN3_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \^t3\,
      I1 => showInput(11),
      I2 => AN3_INST_0_i_1_n_0,
      O => AN3
    );
AN3_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^t0\,
      I1 => showInput(8),
      I2 => showInput(10),
      I3 => \^t2\,
      I4 => showInput(9),
      I5 => \^t1\,
      O => AN3_INST_0_i_1_n_0
    );
AN4_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \^t3\,
      I1 => showInput(15),
      I2 => AN4_INST_0_i_1_n_0,
      O => AN4
    );
AN4_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \^t0\,
      I1 => showInput(12),
      I2 => showInput(14),
      I3 => \^t2\,
      I4 => showInput(13),
      I5 => \^t1\,
      O => AN4_INST_0_i_1_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^t0\,
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^t0\,
      I1 => \^t1\,
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^t0\,
      I1 => \^t1\,
      I2 => \^t2\,
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^t3\,
      I1 => \^t2\,
      I2 => \^t0\,
      I3 => \^t1\,
      O => \counter[3]_i_1_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^t1\,
      I1 => \^t0\,
      I2 => \^t2\,
      I3 => \^t3\,
      O => \counter[3]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter[0]_i_1_n_0\,
      Q => \^t0\,
      R => \counter[3]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter[1]_i_1_n_0\,
      Q => \^t1\,
      R => \counter[3]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter[2]_i_1_n_0\,
      Q => \^t2\,
      R => \counter[3]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \counter[3]_i_2_n_0\,
      Q => \^t3\,
      R => \counter[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SingleCycleCPUDesign_generSingal_0_0,generSingal,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "generSingal,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_generSingal
     port map (
      AN1 => AN1,
      AN2 => AN2,
      AN3 => AN3,
      AN4 => AN4,
      clk => clk,
      showInput(15 downto 0) => showInput(15 downto 0),
      t0 => t0,
      t1 => t1,
      t2 => t2,
      t3 => t3
    );
end STRUCTURE;
