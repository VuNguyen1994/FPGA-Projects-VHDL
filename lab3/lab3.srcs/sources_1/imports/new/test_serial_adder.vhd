----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/09/2019 12:09:39 AM
-- Design Name: 
-- Module Name: test_serial_adder - struc
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

entity test_serial_adder is
  Port (a,b,ck,reset,btn0,btn1: in std_logic;
  s: out std_logic_vector (3 downto 0);
  c_out, done: out std_logic);
end test_serial_adder;

architecture struc of test_serial_adder is
component serial_adder
    generic(n: natural :=2);
port (a,b,ck,reset: in std_logic;
s: out std_logic_vector( n-1 downto 0);
c_out, done: out std_logic);
end component;
signal en: std_logic;
begin
DUT: serial_adder
generic map (4)
port map(a,b,en,reset,s,c_out,done);

process (ck)
type db_state is (not_rdy, rdy, pulse);
variable db_ns: db_state;
begin
if ck='1' and ck'event then
    case db_ns is
        when not_rdy =>en<= '0';
        if btn1='1' then db_ns:=rdy; end if;
        when rdy =>en<='0';
        if btn0='1' then db_ns:=pulse; end if;
        when pulse=>en<='1';
        db_ns:= not_rdy;
        when others =>null;
    end case;
end if;
end process;
end struc;
