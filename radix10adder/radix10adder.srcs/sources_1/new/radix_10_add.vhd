----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2019 01:39:49 PM
-- Design Name: 
-- Module Name: radix_10_add - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity radix_10_add is
generic( r: natural := 10;
n: natural := 4);
  Port (
  x, y: in std_logic_vector(n-1 downto 0);
  ck, reset : in std_logic;
  z: out std_logic_vector(n-1 downto 0));
end radix_10_add;

architecture Behavioral of radix_10_add is
signal temp_x, temp_y: std_logic_vector(n downto 0);
signal temp: std_logic_vector (n downto 0);
type my_state is (no_carry, carry);
signal n_s: my_state;

begin
temp_x <= '0'&x;
temp_y <= '0'&y;
process(ck)
begin
if ck = '1' and ck'event then

  if reset ='1' then n_s <= no_carry;
  else
  case n_s is
  when no_carry =>
    temp <= unsigned(temp_x) + unsigned(temp_y);
    if conv_integer(unsigned(temp)) > r-1 then
        temp <= conv_std_logic_vector(conv_integer(unsigned(temp)) -r);
        z <= temp(n-1 downto 0);
        n_s<= carry;
    else
        z <= temp(n-1 downto 0);
    end if;
  when carry =>
    temp <= unsigned(temp_x)+ unsigned(temp_y)+1;
    if unsigned(temp) < r then
        z <= temp(n-1 downto 0);
         n_s <= no_carry;
    else
       temp <= unsigned(temp) - r;
       z <= temp(n-1 downto 0);
    end if;
  end case;
  end if;
end if;
end process;
end Behavioral;
