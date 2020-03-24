-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Oct 19 16:58:14 2019
-- Host        : DESKTOP-GPB4UIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file {D:/Drexel
--               Study/ECE302/hw2/hw2.sim/sim_1/impl/func/xsim/count_00_tb_func_impl.vhd}
-- Design      : count_00_tb
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity count_00 is
  port (
    z : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    CLK : in STD_LOGIC;
    x1_IBUF : in STD_LOGIC;
    x2_IBUF : in STD_LOGIC
  );
end count_00;

architecture STRUCTURE of count_00 is
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^z\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[3]_i_2\ : label is "soft_lutpair0";
begin
  z(3 downto 0) <= \^z\(3 downto 0);
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^z\(0),
      O => plusOp(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^z\(0),
      I1 => \^z\(1),
      O => plusOp(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^z\(0),
      I1 => \^z\(1),
      I2 => \^z\(2),
      O => plusOp(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x1_IBUF,
      I1 => x2_IBUF,
      O => \count[3]_i_1_n_0\
    );
\count[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^z\(1),
      I1 => \^z\(0),
      I2 => \^z\(2),
      I3 => \^z\(3),
      O => plusOp(3)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[3]_i_1_n_0\,
      D => plusOp(0),
      Q => \^z\(0),
      R => reset
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[3]_i_1_n_0\,
      D => plusOp(1),
      Q => \^z\(1),
      R => reset
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[3]_i_1_n_0\,
      D => plusOp(2),
      Q => \^z\(2),
      R => reset
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \count[3]_i_1_n_0\,
      D => plusOp(3),
      Q => \^z\(3),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity count_00_tb is
  port (
    x1 : in STD_LOGIC;
    x2 : in STD_LOGIC;
    ck : in STD_LOGIC;
    reset : in STD_LOGIC;
    btn1 : in STD_LOGIC;
    btn0 : in STD_LOGIC;
    z : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of count_00_tb : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of count_00_tb : entity is "86a3abd8";
end count_00_tb;

architecture STRUCTURE of count_00_tb is
  signal \FSM_onehot_db_ns[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_db_ns[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_db_ns[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_db_ns_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_db_ns_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_db_ns_reg_n_0_[2]\ : STD_LOGIC;
  signal btn0_IBUF : STD_LOGIC;
  signal btn1_IBUF : STD_LOGIC;
  signal ck_IBUF : STD_LOGIC;
  signal ck_IBUF_BUFG : STD_LOGIC;
  signal en : STD_LOGIC;
  signal en_i_1_n_0 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal x1_IBUF : STD_LOGIC;
  signal x2_IBUF : STD_LOGIC;
  signal z_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_db_ns[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_db_ns[2]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_db_ns_reg[0]\ : label is "not_rdy:001,rdy:010,pulse:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_db_ns_reg[1]\ : label is "not_rdy:001,rdy:010,pulse:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_db_ns_reg[2]\ : label is "not_rdy:001,rdy:010,pulse:100,";
begin
\FSM_onehot_db_ns[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEAEAE"
    )
        port map (
      I0 => \FSM_onehot_db_ns_reg_n_0_[2]\,
      I1 => \FSM_onehot_db_ns_reg_n_0_[0]\,
      I2 => btn1_IBUF,
      I3 => \FSM_onehot_db_ns_reg_n_0_[1]\,
      I4 => btn0_IBUF,
      O => \FSM_onehot_db_ns[0]_i_1_n_0\
    );
\FSM_onehot_db_ns[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC8DDC8"
    )
        port map (
      I0 => \FSM_onehot_db_ns_reg_n_0_[2]\,
      I1 => \FSM_onehot_db_ns_reg_n_0_[0]\,
      I2 => btn1_IBUF,
      I3 => \FSM_onehot_db_ns_reg_n_0_[1]\,
      I4 => btn0_IBUF,
      O => \FSM_onehot_db_ns[1]_i_1_n_0\
    );
\FSM_onehot_db_ns[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00EA00"
    )
        port map (
      I0 => \FSM_onehot_db_ns_reg_n_0_[2]\,
      I1 => \FSM_onehot_db_ns_reg_n_0_[0]\,
      I2 => btn1_IBUF,
      I3 => \FSM_onehot_db_ns_reg_n_0_[1]\,
      I4 => btn0_IBUF,
      O => \FSM_onehot_db_ns[2]_i_1_n_0\
    );
\FSM_onehot_db_ns_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_db_ns[0]_i_1_n_0\,
      Q => \FSM_onehot_db_ns_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_db_ns_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_db_ns[1]_i_1_n_0\,
      Q => \FSM_onehot_db_ns_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_db_ns_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_db_ns[2]_i_1_n_0\,
      Q => \FSM_onehot_db_ns_reg_n_0_[2]\,
      R => '0'
    );
btn0_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => btn0,
      O => btn0_IBUF
    );
btn1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => btn1,
      O => btn1_IBUF
    );
ck_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => ck_IBUF,
      O => ck_IBUF_BUFG
    );
ck_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ck,
      O => ck_IBUF
    );
dut: entity work.count_00
     port map (
      CLK => en,
      reset => reset_IBUF,
      x1_IBUF => x1_IBUF,
      x2_IBUF => x2_IBUF,
      z(3 downto 0) => z_OBUF(3 downto 0)
    );
en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F1F0"
    )
        port map (
      I0 => \FSM_onehot_db_ns_reg_n_0_[1]\,
      I1 => \FSM_onehot_db_ns_reg_n_0_[0]\,
      I2 => \FSM_onehot_db_ns_reg_n_0_[2]\,
      I3 => en,
      O => en_i_1_n_0
    );
en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => en_i_1_n_0,
      Q => en,
      R => '0'
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
x1_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => x1,
      O => x1_IBUF
    );
x2_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => x2,
      O => x2_IBUF
    );
\z_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(0),
      O => z(0)
    );
\z_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(1),
      O => z(1)
    );
\z_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(2),
      O => z(2)
    );
\z_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => z_OBUF(3),
      O => z(3)
    );
end STRUCTURE;
