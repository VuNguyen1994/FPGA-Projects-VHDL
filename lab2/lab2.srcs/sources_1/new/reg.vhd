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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg is
--  Port ( );
generic (n:natural);
Port( ck, ld_en: in std_logic;
x: in std_logic_vector (n-1 downto 0);
z: out std_logic_vector (n-1 downto 0));
end reg;

architecture Behavioral of reg is
signal temp: std_logic_vector(n-1 downto 0);

begin
process(ck)
begin
if ck='1' and ck'event then
    if ld_en = '1' then
    temp<=x;
    end if;
end if;
end process;
z<=temp; --wire temp to output
end Behavioral;
