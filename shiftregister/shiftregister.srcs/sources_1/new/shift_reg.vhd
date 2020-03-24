----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2019 03:18:37 PM
-- Design Name: 
-- Module Name: shift_reg - Behavioral
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

entity shift_reg is
generic (n: natural := 3);
  Port (x, ck: in std_logic;
  z: out std_logic_vector(n-1 downto 0));
end shift_reg;

architecture Behavioral of shift_reg is
type one_array is array(natural range<>) of std_logic;
signal ci: one_array (n-1 downto 0);

component FF 
port(x, ck: in std_logic;
c, z: out std_logic);
end component;

begin
INT: for i in 0 to n-1 generate
ci(0) <= x;
end generate INT;

G0: for i in 0 to n-1 generate
G1: if i<n-1 generate
ELM: FF port map
(ci(i), ck, ci(i+1), z(i));
end generate G1;
G2: if i=n-1 generate
ELM: FF port map
(ci(i), ck, open, z(i));
end generate G2;

end generate G0;

end Behavioral;
