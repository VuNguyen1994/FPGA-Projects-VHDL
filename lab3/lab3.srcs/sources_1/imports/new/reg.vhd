----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/03/2019 03:31:23 PM
-- Design Name: 
-- Module Name: reg - Behavioral
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
Package p1_pack is
Type sh_reg_sel is (no_op, load, shift);
End p1_pack;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL, work.p1_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity sh_reg is
--  Port ( );
generic (n:natural:=4);
Port( ck: in std_logic;
sel: in sh_reg_sel;
x: in std_logic_vector (n-1 downto 0);
z: out std_logic);
end sh_reg;

architecture behav of sh_reg is
signal temp: std_logic_vector(n-1 downto 0);

begin
process(ck)
begin
if ck='1' and ck'event then
case sel is
    when no_op =>null;
    when load => temp <=x;
    when shift =>
        for i in n-2 downto 0 loop
            temp(i) <= temp(i+1);
        end loop;
end case;
end if;
end process;
z<=temp(0); --wire temp to output
end behav;
