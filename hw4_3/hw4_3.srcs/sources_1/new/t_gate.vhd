----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2019 09:37:33 PM
-- Design Name: 
-- Module Name: t_gate - Behavioral
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

entity t_gate is
generic (n : natural :=7;
 k : natural :=3);
port(x: in std_logic_vector(1 to n);
 z: out std_logic);
end t_gate;

architecture Behavioral of t_gate is
begin
process(x)
variable count: integer;
begin
count := 0;
for i in 1 to n loop
    if x(i) ='1' then
        count:= count + 1;
        end if;
end loop;
if count >= k then
    z <='1';
else
    z<= '0';
end if;
end process;
end Behavioral;
