----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/22/2019 04:33:56 PM
-- Design Name: 
-- Module Name: lrstatemachine - Behavioral
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

entity knight_rider is
port (ck, sel: in std_logic;
 z: out std_logic_vector(15 downto 0));
end knight_rider;

architecture Behavioral of knight_rider is
type my_state is
(s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15);
signal n_s: my_state;
signal ck1: std_logic;
begin
process(ck)
variable count: integer;
begin
if ck='1' and ck'event then
    if count = 999999 then
        ck1 <= not ck1; 
        count:=0;
    else
        count := count+1;
    end if;
end if;
end process;

process(ck1)
begin
if ck1='1' and ck1'event then
    case n_s is
        when s0 => z <= (0=>'1', others=>'0');
        if sel='1' then n_s<=s1;
        else n_s<=s15;
        end if;
        when s1 => z <=(1=>'1', others=>'0') ;
        if sel='1' then n_s<=s2;
        else n_s<=s0;
        end if;
        when s2 => z <= (2=>'1', others=>'0');
        if sel='1' then n_s<=s3;
        else n_s<=s1;
        end if;
        when s3 => z <= (3=>'1', others=>'0');
        if sel='1' then n_s<=s4;
        else n_s<=s2;
        end if;
        when s4 => z <= (4=>'1', others=>'0');
        if sel='1' then n_s<=s5;
        else n_s<=s3;
        end if;
        when s5 => z <= (5=>'1', others=>'0');
        if sel='1' then n_s<=s6;
        else n_s<=s4;
        end if; 
        when s6 => z <=(6=>'1', others =>'0') ;
        if sel='1' then n_s<=s7;
        else n_s<=s5;
        end if; 
        when s7 => z <=(7=>'1', others =>'0') ;
        if sel='1' then n_s<=s8;
        else n_s<=s6;
        end if; 
        when s8 => z <=(8=>'1', others =>'0') ;
        if sel='1' then n_s<=s9;
        else n_s<=s7;
        end if; 
        when s9 => z <=(9=>'1', others =>'0') ;
        if sel='1' then n_s<=s10;
        else n_s<=s8;
        end if; 
        when s10 => z <=(10=>'1', others =>'0') ;
        if sel='1' then n_s<=s11;
        else n_s<=s9;
        end if;
        when s11 => z <=(11=>'1', others =>'0') ;
        if sel='1' then n_s<=s12;
        else n_s<=s10;
        end if;  
        when s12 => z <=(12=>'1', others =>'0') ;
        if sel='1' then n_s<=s13;
        else n_s<=s11;
        end if; 
        when s13 => z <=(13=>'1', others =>'0') ;
        if sel='1' then n_s<=s14;
        else n_s<=s12;
        end if; 
        when s14 => z <=(14=>'1', others =>'0') ;
        if sel='1' then n_s<=s15;
        else n_s<=s13;
        end if;
        when s15 => z <=(15=>'1', others =>'0') ;
        if sel='1' then n_s<=s0;
        else n_s<=s14;
        end if;  
        when others => null;
    end case;
end if;
end process;
end Behavioral;
