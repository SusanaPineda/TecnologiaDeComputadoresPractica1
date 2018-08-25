library ieee;
use ieee.std_logic_1164.all;

entity practica_1 is
port (x: in std_logic_vector(3 downto 0);
 z: out std_logic_vector(1 downto 0));
end practica_1;


architecture estructural_mux of practica_1 is
signal b: std_logic_vector (7 downto 0);
signal v: std_logic_vector (7 downto 0);
signal sel: std_logic_vector (2 downto 0);

begin

sel (0) <= x(1);
sel (1) <= x(2);
sel (2) <= x(3);

mux0: entity work.mux8a1(funcional) port map ('1', b, sel, z(0));
b(0) <= '0';
b(1) <= '1';
b(2) <= x(0);
b(3) <= x(0);
b(4) <= '0';
b(5) <= x(0);
b(6) <= x(0);
b(7) <= '0';

mux1: entity work.mux8a1(funcional) port map ('1', v, sel, z(1));

v(0) <= '1';
v(1) <= '1';
v(2) <= x(0);
v(3) <= '0';
v(4) <= (not x(0));
v(5) <= '0';
v(6) <= x(0);
v(7) <= '0';


end estructural_mux;

