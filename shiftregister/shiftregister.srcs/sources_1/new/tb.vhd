----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2019 03:39:26 PM
-- Design Name: 
-- Module Name: tb - Behavioral
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

entity tb is
--  Port ( );
port ( x, ck: in std_logic;
z: out std_logic_vector(7 downto 0);
btn0, btn1: in std_logic);
end tb;

architecture Behavioral of tb is
component shift_reg
generic (n: natural := 3);
  Port (x, ck: in std_logic;
  z: out std_logic_vector(n-1 downto 0));
end component;
signal en: std_logic;

begin

process(ck)

type db_state is (not_rdy, rdy, pulse);
variable db_ns: db_state;
begin
if ck ='1' and ck'event then
    case db_ns is
        when not_rdy => en <= '0';
        if btn1 = '1' then db_ns := rdy; end if;
        when rdy => en <= '0';
        if btn0 ='1' then db_ns := pulse; end if;
        when pulse => en <= '1';
        db_ns:= not_rdy;
        when others => null;
        end case;
   end if;
end process;
U1: shift_reg generic map (8)
port map (x, en, z);
end Behavioral;
