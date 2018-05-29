-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Tue May 22 19:30:50 2018
-- Host        : LAPTOP-BBTT6KDL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ SingleCycleCPUDesign_bcdToseg7_0_0_sim_netlist.vhdl
-- Design      : SingleCycleCPUDesign_bcdToseg7_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcdToseg7 is
  port (
    a : out STD_LOGIC;
    b : out STD_LOGIC;
    c : out STD_LOGIC;
    d : out STD_LOGIC;
    e : out STD_LOGIC;
    f : out STD_LOGIC;
    g : out STD_LOGIC;
    t1 : in STD_LOGIC;
    t2 : in STD_LOGIC;
    t3 : in STD_LOGIC;
    t0 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcdToseg7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcdToseg7 is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \a__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \b__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \c__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \d__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \e__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \f__0\ : label is "soft_lutpair2";
begin
\a__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6104"
    )
        port map (
      I0 => t1,
      I1 => t2,
      I2 => t3,
      I3 => t0,
      O => a
    );
\b__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AC48"
    )
        port map (
      I0 => t1,
      I1 => t2,
      I2 => t0,
      I3 => t3,
      O => b
    );
\c__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D004"
    )
        port map (
      I0 => t0,
      I1 => t1,
      I2 => t2,
      I3 => t3,
      O => c
    );
\d__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8924"
    )
        port map (
      I0 => t1,
      I1 => t2,
      I2 => t3,
      I3 => t0,
      O => d
    );
\e__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"232A"
    )
        port map (
      I0 => t0,
      I1 => t3,
      I2 => t1,
      I3 => t2,
      O => e
    );
\f__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"480E"
    )
        port map (
      I0 => t1,
      I1 => t0,
      I2 => t3,
      I3 => t2,
      O => f
    );
\g__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1805"
    )
        port map (
      I0 => t1,
      I1 => t0,
      I2 => t3,
      I3 => t2,
      O => g
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "SingleCycleCPUDesign_bcdToseg7_0_0,bcdToseg7,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "bcdToseg7,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcdToseg7
     port map (
      a => a,
      b => b,
      c => c,
      d => d,
      e => e,
      f => f,
      g => g,
      t0 => t0,
      t1 => t1,
      t2 => t2,
      t3 => t3
    );
end STRUCTURE;
