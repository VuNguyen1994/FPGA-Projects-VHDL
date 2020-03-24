----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/20/2019 10:20:06 PM
-- Design Name: 
-- Module Name: fifo4x16 - Behavioral
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

entity fifo4x16 is
  Port (ck, btn0, btn1, reset: in std_logic;
  x: in std_logic_vector(3 downto 0);
  z: out std_logic_vector(3 downto 0);
  empty_flag, full_flag: out std_logic);
end fifo4x16;

architecture Behavioral of fifo4x16 is
COMPONENT fifo_generator_0
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    din : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    wr_en : IN STD_LOGIC;
    rd_en : IN STD_LOGIC;
    dout : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    full : OUT STD_LOGIC;
    empty : OUT STD_LOGIC);
END COMPONENT;
signal en: std_logic; -- single step signal
signal wen: std_logic; -- write en signal
signal ren: std_logic; -- read en signal
signal ck1, full_signal, empty_signal: std_logic;

begin
U1: fifo_generator_0
  PORT MAP (
    clk => en,
    rst => reset,
    din => x,
    wr_en => wen,
    rd_en => ren,
    dout => z,
    full => full_signal,
    empty => empty_signal
);

process(ck)
type db_state is (not_rdy, rdy, pulse, read);
variable db_ns: db_state;
begin
if ck='1' and ck'event then
  case db_ns is
    when not_rdy => en <= '0';
      if full_signal = '0' then
        wen <= '1';
        ren <= '0';
        if btn1 = '1' then db_ns := rdy; end if;
     else
         wen <= '0';
         ren <= '1';
         db_ns := read; 
     end if;
    when rdy => en <= '0';
      if btn0 = '1' then db_ns := pulse; end if;
    when pulse => en <= '1';
         db_ns := not_rdy;
    when read => en <= ck1;
    when others => null;
  end case;
  end if;
  end process;
  
process(ck)
variable count: integer;
begin
if ck ='1' and ck'event then
  if reset = '1' then 
    count:= 0;
    ck1<='0';
  else
    if count = 9999999 then
      ck1<=not ck1; count:= 0;
    else
      count:= count+1;
    end if;
  end if;
end if;
end process;
full_flag <= full_signal;
empty_flag <= empty_signal;

end Behavioral;
