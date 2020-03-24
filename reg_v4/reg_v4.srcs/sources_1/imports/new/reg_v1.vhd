----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2019 09:26:29 AM
-- Design Name: 
-- Module Name: reg_v1 - beh
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

entity reg_v4 is
port (sw : in std_logic_vector(3 downto 0);
 btn: in std_logic_vector(3 downto 0);
 z : out std_logic_vector(7 downto 0);
disp_en : out std_logic_vector(3 downto 0);
ck, reset: in std_logic);
end reg_v4;

architecture beh of reg_v4 is

type my_state is (s0, s1, s2, s3);
signal ns: my_state;
signal ck_div: std_logic;
signal sw_sel: std_logic_vector(0 to 3);
signal r0, r1, r2, r3: std_logic_vector (3 downto 0);
begin
process(sw_sel)
variable temp: std_logic_vector (3 downto 0);
begin
case btn is
  when "1000"=>r0<= sw(3 downto 0);
  when "0100"=>r1<= sw(3 downto 0);
  when "0010"=>r2<= sw(3 downto 0);
  when "0001"=>r3<= sw(3 downto 0);
  when others => null;
end case;
case sw_sel is --select logic--
  when "1000" => temp := r0; 
  when "0100" => temp := r1; 
  when "0010"=> temp := r2; 
  when "0001"=>temp := r3; 
  when others => temp:= "0000";
end case;

case temp is --"abcdefgdp" temp to 7-seg display, a decoder--
  when "0000" => z<= "00000011";
  when "0001" => z<= "10011111";
  when "0010" => z<= "00100101";
  when "0011" => z<= "00001101";
  when "0100" => z<= "10011001";
  when "0101" =>z<= "01001001";
  when "0110"=>z<="01000001";
  when "0111"=>z<="00011111";
  when "1000"=>z<="00000001";
  when "1001"=>z<="00001001";
  when "1010" =>z<="00010001";
  when "1011"=>z<="11000001";
  when "1100" =>z<="01100011";
  when "1101"=>z<="10000101";
  when "1110"=>z<="01100001";
  when "1111"=>z<="01110001";
  when others => null;
end case;
end process;

process (ck_div)
begin
if ck_div'event and ck_div='1' then
case ns is
when s0=>sw_sel<="1000";disp_en<="0111"; ns<=s1;
when s1=>sw_sel<="0100";disp_en<="1011"; ns<=s2;
when s2=>sw_sel<="0010";disp_en<="1101"; ns<=s3;
when s3=>sw_sel<="0001";disp_en<="1110"; ns<=s0;
end case;
end if;
end process;

process(ck)
variable count:integer;
begin
if ck='1' and ck'event then
    if reset ='1' then
      count :=0;
      ck_div<='0';
    elsif reset ='0' then
      if count = 999999 then
        ck_div <= not ck_div;
        count:=0;
      else
        count := count+1;
      end if;
   end if;
 end if;
end process;
end beh;

