----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/31/2019 01:12:12 AM
-- Design Name: 
-- Module Name: twosC - Behavioral
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

entity twos_C_system is
generic(n : natural := 4);
port ( x: in std_logic_vector(n-1 downto 0);
 z: out std_logic_vector(n-1 downto 0);
 go, ck, reset: in std_logic);
end twos_C_system;

architecture Behavioral of twos_C_system is

signal temp1, temp2: std_logic_vector(n-1 downto 0);

begin
--state machine--
process(ck, x)
type my_state is (idle, load, copy, invert);
variable n_s: my_state;
variable i: integer;
begin
if ck='1' and ck'event then
  if reset ='1' then
    temp1<=(others=>'0');
    temp2<=(others=>'0');
    i := 0;
    n_s :=idle;
  else
  case n_s is
    when idle => 
        if go='1' then
           n_s := load; end if;
    when load =>
        temp1<=x; --load input to register
        n_s:= copy;
    when copy =>
        if temp1(i) = '0' then
           temp2(i) <='0';
        else
        temp2(i) <= '1'; 
         n_s := invert;
         end if;
         i:= i+1;
    when invert =>
         temp2(i) <= not temp1(i);
         i:=i+1;
    when others => null;
  end case;
  end if;
end if;
end process;
z<=temp2;
end Behavioral;
