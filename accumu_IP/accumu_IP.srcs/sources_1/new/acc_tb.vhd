----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2019 03:13:01 PM
-- Design Name: 
-- Module Name: acc_tb - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL,
ieee.std_logic_arith.all,
ieee.std_logic_signed.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library UNISIM;
use UNISIM.VComponents.all;

entity acc_tb is
--  Port ( );
constant n: integer := 20;
end acc_tb;

architecture Behavioral of acc_tb is
type v_array is array (natural range <>) of std_logic_vector (3 downto 0);
signal tv : v_array (0 to 19) := ("0001", "0010", "0100", "0110","1011", "1101", "0110", "1001", "0010", "0101", "0110", "0101", "0011", "1111", "0111", "1110", "0001", "0110", "0111", "1110");
signal ck : std_logic := '0';
signal b: std_logic_vector (3 downto 0);
signal q: std_logic_vector (7 downto 0);
signal sclr: std_logic;
signal acc: integer;
signal count: integer;

COMPONENT c_accum_0
PORT (
B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
CLK: IN STD_LOGIC;
SCLR: IN STD_LOGIC;
Q: OUT STD_LOGIC_VECTOR (7 DOWNTO 0));
END COMPONENT;
type my_state is (init, apply_1st_vector, clear_dut, check_apply, done);
signal n_s : my_state := init;
begin
dut: c_accum_0
port map (B=> B,CLK => ck, SCLR => sclr, q => q);

ck <= not ck after 50 ps; 

process(ck)
begin 
if ck='1' then
case n_s is 
  when init =>
   -- set sclr to dut device-under-test
   -- count was declared with 0
   -- apply tv(0), increment count,
   -- init expected results acc
     sclr <= '1';
     acc<= 0;
     count <= 0;
     n_s <= clear_dut;
  when clear_dut =>
  -- sclr is now hight, dut not yet clear
  -- assign b with tv(0)
     sclr <= '0';
     b <= tv(count);
     count <= count +1;
     n_s <= apply_1st_vector;
  when apply_1st_vector =>
  -- sclr is now low, dut is cleared
  -- b is tv(0), count is 1, acc is 0
  -- Assign b with tv(1), calsulte expected acc(0+tv(0))
     sclr <= '0';
     b<= tv(count);
     count <= count+1;
     acc <= acc + conv_integer(signed(b));
     n_s <= check_apply;
  when check_apply =>
  -- accumulator active latency =1
  -- output z valid check result
     assert conv_integer(signed(q)) = acc
     report "incorrect" severity ERROR;
     --apply next vector
     if count <n then
       n_s <= check_apply;
       sclr <= '0';
       b<= tv(count);
       count <= count +1;
       acc <= acc + conv_integer(signed(b));
     else
       n_s <= done;
     end if;
  when done =>
    assert false report "Done"
    severity FAILURE;
end case;
end if;

end process;     
end Behavioral;
