library ieee;
use ieee.std_logic_1164.all;

entity practica_1 is
port (x: in std_logic_vector(3 downto 0);
 z: out std_logic_vector(1 downto 0));
end practica_1;

architecture estructural_nor of practica_1 is
begin
	Z(0) <= ( ( not ((x(1) or x(0)) or (not ( x(2) or x(1))) or (not ((not x(2)) or (not x(1)) or x(0))) or ( not ((not x(3))or (not x(2)) or (not x(1)))) or (not ((not x(3)) or (not x(1)) or x(0))))));
	Z(1) <= ( ( not (((not x(2)) or x(0))) or ( not ((not x(2)) or (not x(1)))) or (not ((not x(3)) or x(2) or (not x(0)))) or ( not ((not x(3)) or x(2) or (not x(1))))));
end estructural_nor;

