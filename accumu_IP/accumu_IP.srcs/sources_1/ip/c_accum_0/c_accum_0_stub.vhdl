-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu Nov 21 15:39:17 2019
-- Host        : DESKTOP-GPB4UIK running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/DrexelStudy/ECE302/accumu_IP/accumu_IP.srcs/sources_1/ip/c_accum_0/c_accum_0_stub.vhdl
-- Design      : c_accum_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity c_accum_0 is
  Port ( 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end c_accum_0;

architecture stub of c_accum_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "B[3:0],CLK,SCLR,Q[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_accum_v12_0_13,Vivado 2019.1";
begin
end;
