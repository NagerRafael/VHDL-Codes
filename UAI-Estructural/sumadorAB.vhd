--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
Entity sumadorAB is
	generic (n: integer :=4);--<-- nbits
	port( A, B: in std_logic_vector(n-1 downto 0);
			  en: in std_logic;
			F: out std_logic_vector(n downto 0));
end sumadorAB;

--Achitecture
Architecture solve of sumadorAB is
	--signals
	begin
	Process(A, B, en)
	Variable x: std_logic_vector(n downto 0);
		begin
		x := (others => '0');
			IF en = '1' then
				x := ('0' & A) + ('0' & B);
			end if;
		F <= x;
	end process;
end solve;