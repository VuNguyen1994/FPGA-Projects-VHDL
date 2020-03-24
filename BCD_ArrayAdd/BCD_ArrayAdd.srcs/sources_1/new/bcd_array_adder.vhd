----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/22/2019 01:34:18 AM
-- Design Name: 
-- Module Name: bcd_array_adder - struc
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
use IEEE.STD_LOGIC_1164.all;
 package bcd_pack is
 type bcd_vector is array (natural range <>) of
 std_logic_vector(3 downto 0);
 end bcd_pack;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use work.bcd_pack.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_array_adder is
generic (n:natural := 1);
  Port (a, b: in bcd_vector(n-1 downto 0);
  c: out bcd_vector(n-1 downto 0);
  cin: in std_logic;
  cout: out std_logic);
end bcd_array_adder;

architecture struc of bcd_array_adder is
signal carry: std_logic_vector (n downto 0);
component bcd_add
  Port (a, b: in std_logic_vector(3 downto 0);
  c: out std_logic_vector(3 downto 0);
  cin: in std_logic;
  cout: out std_logic);
end component;

begin
carry(0) <= cin; cout<=carry(n);
G1: for i in 0 to n-1 generate
U1: bcd_add port map
(a(i), b(i), c(i), carry(i), carry(i+1));
end generate G1;

end struc;
