----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/28/2019 10:18:42 PM
-- Design Name: 
-- Module Name: radixR_adder - Behavioral
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
use ieee.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity radixR_adder is
generic (
--radix r requires, n the least integer > log r
r: natural :=2;
n: natural :=1);
  Port (x, y: in std_logic_vector(n-1 downto 0);
  ck, reset: in std_logic;
  z: out std_logic_vector(n-1 downto 0));
end radixR_adder;

architecture Behavioral of radixR_adder is
signal temp_x, temp_y: std_logic_vector(n downto 0);
signal temp_x_int, temp_y_int: integer;
type my_state is (no_carry, carry);
signal n_s: my_state;
begin
temp_x <= '0'&x;
temp_y <= '0'&y;
temp_x_int <= to_integer(unsigned(temp_x));
temp_y_int <= to_integer(unsigned(temp_y));
 
process (ck)
variable temp: integer;

begin
if ck = '1' and ck'event then
 if reset ='1' then n_s <= no_carry;
  else
  case n_s is
    when no_carry =>
      temp := temp_x_int + temp_y_int; 
      if  temp> r-1 then 
        z <= std_logic_vector(to_unsigned(temp - r, n));
        n_s <= carry;
      else
        z <= std_logic_vector(to_unsigned(temp, n));
      end if;
   when carry =>
     temp := temp_x_int + temp_y_int +1;
     if temp<r then 
       z <= std_logic_vector(to_unsigned(temp, n));
       n_s <= no_carry;
     else
       z <= std_logic_vector(to_unsigned(temp - r, n));
     end if;
  end case;
 end if;
end if;
end process; 
end Behavioral;
