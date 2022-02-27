Library ieee;
use ieee.std_logic_1164.all;

Entity mult2 is
	generic( n: integer:= 4);
	port(A: in std_logic_vector(n-1 downto 0);
		 en: in std_logic;
		  R: out std_logic_vector(n downto 0));
end mult2;

Architecture solve of mult2 is
begin
	Process(A, en)
		Variable m: std_logic_vector(n downto 0);
		begin
			m := (others => '0');
			IF en = '1' then
				m(n downto 1) := A;
			end if;
			R <= m;
	end process;
end solve;
				