----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/14/2019 03:29:55 PM
-- Design Name: 
-- Module Name: twosCarray - struc
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
entity twosCarray is
generic(n : natural := 8);
Port(
x : in std_logic_vector(n-1 downto 0);
ck: in std_logic;
s : out std_logic_vector(n-1 downto 0)
 );
end twosCarray;

architecture struc of twosCarray is
type one_array is array (natural range <>) of std_logic;
signal xi, inv_i: one_array (n-1 downto 0);

component twosC_1bit
port ( x, inv_in, ck: in std_logic;
 z, inv_out: out std_logic);
end component;

begin
INT: for i in 0 to n-1 generate
xi(i) <= x(i);
inv_i(0) <= '0';
end generate INT;

G0: for i in 0 to n-1 generate
G3: if i=0 generate
ELM: twosC_1bit port map
(xi(i), inv_i(i), ck, s(i), inv_i(i+1));
end generate G3;

G1: if i<n-1 generate
ELM: twosC_1bit port map
(xi(i), inv_i(i), ck, s(i), inv_i(i+1));
end generate G1;

G2: if i=n-1 generate
ELM: twosC_1bit port map
(xi(i), inv_i(i), ck, s(i), open);
end generate G2;

end generate G0;

end struc;
