----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/08/2019 04:53:25 PM
-- Design Name: 
-- Module Name: array_adderr - Behavioral
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

entity array_adderr is
--  Port ( );
generic (n: natural := 4);
port(x,y: in std_logic_vector(n-1 downto 0);
ck: in std_logic;
 s: out std_logic_vector(n-1 downto 0));
end array_adderr;

architecture struc of array_adderr is
type one_array is array (natural range <>) of std_logic;
signal xi, yi, ci: one_array(n-1 downto 0);

component serial_adder
port(x,y, ci: in std_logic;
 z, co: out std_logic;
ck: in std_logic);
end component;

begin
INT: for i in 0 to n-1 generate
xi(i)<=x(i);
yi(i)<=y(i);
ci(0) <='0';
end generate INT;

G1: for i in 0 to n-1 generate
G11: if i=0 generate
ELM: serial_adder port map
(xi(i), yi(i), ci(i), s(i), ci(i+1), ck);
end generate G11;

G2: if i<n-1 generate
ELM: serial_adder port map
(xi(i), yi(i), ci(i), s(i), ci(i+1), ck);
end generate G2;
G3: if i = n-1 generate
ELM: serial_adder port map
(xi(i), yi(i), ci(i), s(i), open, ck);
end generate G3;

end generate G1;

end struc;
