----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2019 11:26:17 PM
-- Design Name: 
-- Module Name: radix5_adder - struc
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity radix5_adder is
port (
x, y : in std_logic_vector(2 downto 0);
ck, btn0, btn1, reset : in std_logic;
 z : out std_logic_vector(2 downto 0));
end radix5_adder;


architecture struc of radix5_adder is
component radix_10_add
generic (
--radix r requires, n the least integer > log r
r: natural :=2;
n: natural :=1);
  Port (x, y: in std_logic_vector(n-1 downto 0);
  ck, reset: in std_logic;
  z: out std_logic_vector(n-1 downto 0));
end component;
signal en: std_logic;

begin
process(ck)

type db_state is (not_rdy, rdy, pulse);
variable db_ns : db_state;
begin
if ck='1' and ck'event then
  case db_ns is 
    when not_rdy => en <= '0';
      if btn1 ='1' then db_ns := rdy; end if;
    when rdy => en <= '0';
      if btn0 ='1' then db_ns:= pulse; end if;
    when pulse => en <= '1';
    db_ns := not_rdy;
    when others => null;
  end case;
end if;
end process;
U1: radix_10_add generic map (5, 3)
port map (x=>x, y=>y, ck=>en, reset=>reset, z=>z);
end struc;
