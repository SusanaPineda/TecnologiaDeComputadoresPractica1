
library ieee;  
use ieee.std_logic_1164.all;

entity test_multiple is
end test_multiple;

architecture test of test_multiple is
    signal x: std_logic_vector(3 downto 0):="0000";
    signal z1,z2,z3,z4,z5: std_logic_vector(1 downto 0);
begin
  
		
	estructural_nor: entity work.practica_1(estructural_nor) port map (x, z3);
	
  x(0) <= not x(0)after 2 ns;
  x(1) <= not x(1)after 4 ns;
  x(2) <= not x(2)after 8 ns;
  x(3) <= not x(3)after 16 ns;
  
end test;  