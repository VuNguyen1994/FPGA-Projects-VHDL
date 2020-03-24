----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/02/2019 11:14:37 AM
-- Design Name: 
-- Module Name: reg - Behavioral
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



---------------------------------------
-------------------------------------
--5.1--------------------------
---------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity step_cascade_reg4 is
--  Port ( );
Port (x: in std_logic_vector(3 downto 0);
    z1: out std_logic_vector (3 downto 0);
    z2: out std_logic_vector (3 downto 0);
    ck, en, btn0, btn1 : in std_logic);
end step_cascade_reg4;

architecture struc of step_cascade_reg4 is
component reg
generic (n: natural);
Port (ck, ld_en: in std_logic;
    x: in std_logic_vector(n-1 downto 0);
    z: out std_logic_vector(n-1 downto 0));
end component;   
signal w: std_logic_vector (3 downto 0);
signal ck_step: std_logic;

begin
R1 : reg generic map (4)
    port map (x =>x, z => w, ck => ck_step, ld_en=> en);
R2 : reg generic map (4)
    port map (x =>w, z => z2, ck => ck_step, ld_en=> en);
z1<=w; --wire w to output port
---------------------------------------
--single step---
---------------------------------------
process(ck)
type state is (not_rdy, rdy, pulse);
variable ns:state;
begin
if ck ='1' and ck'event then
    case ns is
    when not_rdy =>ck_step<='0';
    if btn1='1' then ns:=rdy; end if;
    when rdy=>ck_step<= '0';
    if btn0 ='1' then ns:=pulse; end if;
    when pulse =>ck_step <='1';
    ns:= not_rdy;
    when others => null;
    end case;
end if;
end process;
end struc;
------------------------------------------------------------
--5.2

