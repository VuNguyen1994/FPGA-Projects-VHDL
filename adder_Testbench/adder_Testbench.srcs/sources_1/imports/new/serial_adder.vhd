----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2019 10:00:54 PM
-- Design Name: 
-- Module Name: add3bits - Behavioral
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
entity serial_adder is
port(x,y, ci: in std_logic;
 z, co: out std_logic;
ck, go, reset: in std_logic);
end serial_adder;

architecture Behavioral of serial_adder is
signal c: std_logic;
begin
process(ck)
subtype my_int is integer range 0 to 3;
variable count: my_int;
begin
count:=0;
if ck='1' and ck'event then
   if x = '1' then
    count:=count+1; end if;
   if y='1' then
    count:=count+1; end if;
   if ci='1' then
    count:=count+1; end if;
end if;
case count is
when 0 => z<='0'; c<='0'; 
when 1 => z<='1'; c<='0';
when 2 => z<='0'; c<='1';
when 3=> z<='1'; c<='1';
when others => z<='0'; c<='0';
end case;
end process;
co<=c;
end Behavioral;
