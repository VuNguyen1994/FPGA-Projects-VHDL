----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/04/2019 01:46:37 PM
-- Design Name: 
-- Module Name: 4bit_register - struc
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

entity register4b is
--  Port ( );
Port (x: in std_logic_vector(3 downto 0);
z: out std_logic_vector(3 downto 0);
ck, en: in std_logic);
end register4b;


architecture struc of register4b is

component reverse_register
generic (n:natural);
Port(ck, ld_en: in std_logic;
x: in std_logic_vector(n-1 downto 0);
z: out std_logic_vector(n-1 downto 0));
end component;

begin
U1: reverse_register generic map (4)
port map( x=>x, z=>z, ck=>ck, ld_en=>en);

end struc;
