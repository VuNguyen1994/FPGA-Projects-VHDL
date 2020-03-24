----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2019 09:26:29 AM
-- Design Name: 
-- Module Name: reg_v1 - beh
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

entity reg_v1 is
Port (x: in std_logic_vector(3 downto 0);
leds : out std_logic_vector(15 downto 0);
btns: in std_logic_vector(3 downto 0);
ck: in std_logic);
end reg_v1;

architecture beh of reg_v1 is
signal r0, r1, r2, r3: std_logic_vector (3 downto 0);
begin
leds(15 downto 12) <= r3;
leds(11 downto 8) <= r2;
leds(7 downto 4) <= r1;
leds(3 downto 0) <= r0;
process(ck)
begin
if ck='1' and ck'event then
case btns is
  when "1000"=>r0<= x;
  when "0100"=>r1<= x;
  when "0010"=>r2<= x;
  when "0001"=>r3<= x;
  when others => null;
end case;
end if;
end process;
end beh;
