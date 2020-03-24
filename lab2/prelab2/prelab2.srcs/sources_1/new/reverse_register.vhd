----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2019 01:35:04 PM
-- Design Name: 
-- Module Name: reverse_register - Behavioral
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

entity reverse_register is
--  Port ( );
generic (n: natural);
Port( x: in std_logic_vector(n-1 downto 0);
z: out std_logic_vector(n-1 downto 0);
ld_en, ck: in std_logic);
end reverse_register;

architecture Behavioral of reverse_register is
signal temp: std_logic_vector (n-1 downto 0);
begin
process(ck)
begin
if ck='1' and ck'event then
    if ld_en ='1' then
    for i in 0 to n-1 loop
        temp(i) <= x(n-1 -i);
    end loop;
    end if;
end if;
end process;
z <= temp;
end Behavioral;
