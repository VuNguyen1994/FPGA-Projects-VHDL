----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/28/2019 09:50:36 PM
-- Design Name: 
-- Module Name: test_t_gate - struc
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

entity test_t_gate is
port(x: in std_logic_vector(1 to 7);
 z: out std_logic);
end test_t_gate;

architecture struc of test_t_gate is
component t_gate
generic (n : natural :=7;
 k : natural :=3);
port(x: in std_logic_vector(1 to n);
 z: out std_logic);
end component;
-- check to see why cant port map x<=x, z<=z????
begin
U: t_gate generic map(7, 3) port map(x=>x, z=>z); 
end struc;
