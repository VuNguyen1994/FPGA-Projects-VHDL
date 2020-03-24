----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2019 10:44:24 AM
-- Design Name: 
-- Module Name: mux - Behavioral
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

entity mux is
generic (m : natural :=3);
port(x: in std_logic_vector(0 to 2**m - 1);
z: out std_logic;
s: in std_logic_vector(m-1 downto 0));
end mux;

architecture Behavioral of mux is
begin
process(s, x)
variable s_value: integer;
begin
    s_value:= 0;
    for k in 0 to m-1 loop
        if s(k) = '1' then
            s_value:=s_value + 2**k; end if;
    end loop;
    z <= x(s_value);
end process;
end Behavioral;
