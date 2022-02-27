--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
entity puerta4_or is
	generic ( n: integer :=8);--<-- nbits
	port(
		A,B,C,D: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end puerta4_or;

--Architecture
architecture solve of puerta4_or is
	-- Signals,Constants,Variables,Components
	begin
		F<= A or B or C or D;
end solve;