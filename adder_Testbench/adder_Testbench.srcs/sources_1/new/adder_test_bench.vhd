----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/21/2019 12:54:50 PM
-- Design Name: 
-- Module Name: adder_test_bench - beh
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

entity adder_test_bench is
--  Port ( );
constant number_of_test: natural:=3;
constant n: natural := 4;
end adder_test_bench;

architecture beh of adder_test_bench is
--wires
signal go, reset, cout: std_logic;
signal ck: std_logic:= '0';
signal a, b, c: std_logic_vector (n-1 downto 0);

type test_array is array(natural range <>) of std_logic_vector(n-1 downto 0);
signal A_test: test_array (0 to number_of_test -1):= ("1101", "1100", "0110");
signal B_test: test_array (0 to number_of_test -1) := ("0101", "1001", "0111");
--state machine
type tester_state is (init, test, check);
signal n_s: tester_state;
--component-under-test
component array_adderr
generic (k: natural := 4);
port(a,b: in std_logic_vector(k-1 downto 0);
 c: out std_logic_vector(k-1 downto 0);
 c_out: out std_logic;
 ck, go, reset: in std_logic);
end component;

begin
--instantiate device under test
dut: array_adderr generic map(n)
port map (a, b, c, cout, ck, go, reset);
--clock generation
ck<= not ck after 50 ns;
--test procedure
process(ck)
variable count_vector: integer := 0;
variable count_cycle: integer := 0;
begin
if ck'event and ck='1' then
  case n_s is 
    when init => 
      a <= A_test(count_vector);
      b <= B_test(count_vector);
      n_s <= test;
      go <= '1'; reset <= '0';
    when test =>
      count_cycle := count_cycle + 1;
        n_s <= check;
        go <= '0'; reset <= '1';
    when check =>
      assert (conv_integer(unsigned(cout&c)) = conv_integer(unsigned(a)) + conv_integer(unsigned(b))) report "incorrect result" severity ERROR;
      count_vector := count_vector + 1;
      assert count_cycle < number_of_test report "test completed" severity FAILURE;
      go<='1'; reset<= '0';
      n_s <= init;
  end case;
end if;
end process;
end beh;
