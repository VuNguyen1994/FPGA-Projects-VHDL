----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/08/2019 03:12:44 PM
-- Design Name: 
-- Module Name: count_changes - Behavioral
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
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count_00 is
generic (n:natural :=3);
  Port (x1, x2, ck, reset: in std_logic;
  z: out std_logic_vector (n-1 downto 0));
end count_00;

--x-> | FF |->temp
-- if temp not the same as x, set count+=1
----- z is # of changes

architecture Behavioral of count_00 is
signal count: std_logic_vector (n-1 downto 0);

begin
process(ck)
begin
if ck='1' and ck'event then
   if reset ='1' then
      --reset the flipflop

      count<=(others=>'0'); -- others is vector 00000 depens on n, set count to 0000 when reset
   else
      if x1 = '0' and x2 = '0' then 
         count <= count+1;
      end if;

  end if;
end if;
end process;
z<= count; --wire count to output port

end Behavioral;
--process(ck)
--type db_state is (not_rdy, rdy, pulse);
--variable db_ns: db_state;
--begin
--if ck='1' and ck'event then
--    case db_ns is
--        when not_rdy =>en<= '0';
--        if btn1='1' then db_ns :=rdy; end if;
--        when rdy =>en<='0';
--        if btn0='1' then db_ns:=pulse; end if;
--        when pulse =>en<='1';
--        db_ns:=not_rdy;
--        when others => null;
--    end case;
--end if;
--end process;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count_00_tb is
  Port (x1, x2, ck, reset, btn1, btn0: in std_logic;
  z: out std_logic_vector (3 downto 0));
end count_00_tb;

architecture struc of count_00_tb is
component count_00
generic (n:natural :=3);
  Port (x1, x2, ck, reset: in std_logic;
  z: out std_logic_vector (n-1 downto 0));
end component;
signal en: std_logic;
begin

dut: count_00 generic map(4)
port map(x1=>x1, x2=>x2, z=>z, reset=>reset, ck =>en);

process(ck)
type db_state is (not_rdy, rdy, pulse);
variable db_ns: db_state;
begin
if ck='1' and ck'event then
    case db_ns is
        when not_rdy =>en<= '0';
        if btn1='1' then db_ns :=rdy; end if;
        when rdy =>en<='0';
        if btn0='1' then db_ns:=pulse; end if;
        when pulse =>en<='1';
        db_ns:=not_rdy;
        when others => null;
    end case;
end if;
end process;
end struc;