----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2019 01:17:23 AM
-- Design Name: 
-- Module Name: bcd_add - Behavioral
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
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_add is
  Port (a, b: in std_logic_vector(3 downto 0);
  c: out std_logic_vector(3 downto 0);
  cin: in std_logic;
  cout: out std_logic);
end bcd_add;

architecture Behavioral of bcd_add is

begin
process(a, b, cin)
variable temp, tempa, tempb: std_logic_vector (4 downto 0);
begin
tempa := '0'&a;
tempb := '0'&b;
temp := tempa +tempb;
if cin ='1' then
  temp := temp + "00001";
end if;
if temp > "01001" then
  temp := temp + "00110";
  cout <='1';
else 
  cout <= '0';
end if;
c <= temp(3 downto 0);
end process;
end Behavioral;
