----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2019 10:27:18 AM
-- Design Name: 
-- Module Name: test_or_gate - struc
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

entity test_or_gate is
port(v: in std_logic_vector(1 to 5);
 y: out std_logic); 
end test_or_gate;

architecture struc of test_or_gate is
component or_gate
generic (n: natural);
port(x: in std_logic_vector(n-1 downto 0);
 z: out std_logic);
end component;

begin
O: or_gate generic map(5)
port map(z=>y, x=>v); 
end struc;
