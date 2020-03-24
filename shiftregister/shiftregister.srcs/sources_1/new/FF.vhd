----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2019 03:13:35 PM
-- Design Name: 
-- Module Name: FF - Behavioral
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

entity FF is
--  Port ( );
port(x, ck: in std_logic;
c, z: out std_logic);
end FF;

architecture Behavioral of FF is
signal temp: std_logic;
begin
process(ck)
begin
if ck='1' and ck'event then
temp <=x;
end if;
end process;
c<= temp;
z<=temp;
end Behavioral;
