----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2019 01:12:12 AM
-- Design Name: 
-- Module Name: twosC - Behavioral
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

entity twosC_1bit is
port ( x, inv_in, ck: in std_logic;
 z, inv_out: out std_logic);
end twosC_1bit;

architecture Behavioral of twosC_1bit is
begin
process(ck)
begin
case inv_in is
    when '0' => z<= x;
      if x='0' then
        inv_out <= '0';
      else
        inv_out <='1';
      end if;
    when '1' => z<= not x;
      inv_out <='1';
    when others => z<='0';
  end case;
end process;
end Behavioral;
