----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2019 10:27:28 PM
-- Design Name: 
-- Module Name: test_mux - struc
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

entity test_mux is
port(x: in std_logic_vector(0 to 7);
z: out std_logic;
s: in std_logic_vector(2 downto 0));
end test_mux;

architecture struc of test_mux is
component mux
generic (m : natural :=3);
port(x: in std_logic_vector(0 to 2**m - 1);
z: out std_logic;
s: in std_logic_vector(m-1 downto 0));
end component;

begin
M1: mux generic map (3)
port map (x, z, s);

end struc;
