--Subtractor of two numbers of n bits (A - B)

--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
entity AsubtractB is
	generic ( n: integer :=4);--<------- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n downto 0));
end AsubtractB;

--Architecture
architecture solve of AsubtractB is
	-- Signals,Constants,Variables,Components
	begin
		s<=('0'&A)-('0'&B);--With the sign bit in C2
		--s<='0'&(x-y);--without sign bit
end solve;
