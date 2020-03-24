----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/22/2019 11:54:22 PM
-- Design Name: 
-- Module Name: blink - Behavioral
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

entity blink is
port (b1, b2, ck, reset: in std_logic;
 z: out std_logic);
end blink;

architecture Behavioral of blink is
signal ck2, ck3: std_logic;
begin
--set ck2 as a fast clock--
process(ck)
variable count: integer;
begin
if ck='1' and ck'event then
    if count = 9999999 then
        ck2<=not ck2;
        count:=0;
    else
        count:=count+1;
    end if;
end if;
end process;
--set ck3 as a slow clock--
process(ck)
variable count: integer;
begin
if ck='1' and ck'event then
    if count = 99999999 then
        ck3<=not ck3;
        count:=0;
    else
        count:=count+1;
    end if;
end if;
end process;

--setup the btn, main behav--
process(ck, ck2, ck3)
type my_state is (fast, slow);
variable ns: my_state;
begin
if ck ='1' and ck'event then
 if reset ='1' then 
  z<=ck3; 
  ns:=slow;
 else
  case ns is
  when slow=>z<=ck3;
    if b1 ='1' then 
      z<=ck2;
      ns:=fast; end if;
  when fast=> z<=ck2;
    if b2 ='1' then 
      z<=ck3;
      ns:=slow; end if;
  end case;
 end if;
end if;    
end process;
end Behavioral;
