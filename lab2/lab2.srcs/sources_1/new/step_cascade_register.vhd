----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2019 03:31:23 PM
-- Design Name: 
-- Module Name: step_cascade_register - struc
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity step_cascade_register is
--  Port ( );
port( x: in std_logic_vector (3 downto 0);
z1: out std_logic_vector (3 downto 0);
z2: out std_logic_vector (3 downto 0);
en, ck, btn0, btn1: in std_logic);
end step_cascade_register;

architecture struc of step_cascade_register is

component reg
generic (n:natural);
port(ck, ld_en: in std_logic;
x: in std_logic_vector (n-1 downto 0);
z: out std_logic_vector (n-1 downto 0));
end component;

signal w: std_logic_vector(3 downto 0);
signal ck_step: std_logic;

begin
R1: reg generic map(4)
        port map (x=>x, z=>w, ck=>ck_step, ld_en=>en);
R2: reg generic map(4)
        port map (x=>w, z=>z2, ck=>ck_step, ld_en=>en);
z1 <= w; --wire w to output port of register 1

process(ck)
type state is (not_rdy, rdy, pulse);
variable ns:state;
begin
if ck='1' and ck'event then
case ns is
    when not_rdy=>ck_step<='0';
    if btn1='1' then ns:=rdy; end if;
    when rdy=>ck_step<= '0';
    if btn0='1' then ns:=pulse; end if;
    when pulse => ck_step<= '1';
    ns:= not_rdy;
    when others => null;
end case;
end if;
end process;
end struc;
