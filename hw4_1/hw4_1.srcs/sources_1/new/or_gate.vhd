----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2019 10:21:45 AM
-- Design Name: 
-- Module Name: or_gate - Behavioral
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

entity or_gate is
generic (n: natural);
port(x: in std_logic_vector(n-1 downto 0);
 z: out std_logic); 
end or_gate;

architecture Behavioral of or_gate is

begin
process(x)
variable temp: std_logic;
begin
 temp := '0';
 for i in 0 to n-1 loop
 temp := temp or x(i);
 end loop;
z <= temp;
end process;
end Behavioral;
