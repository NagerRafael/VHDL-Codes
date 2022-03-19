library ieee;
use ieee.std_logic_1164.all;

entity DecBinOct is
	port (Binario  : in std_logic_vector(7 downto 0);
	      B8_0,B8_1 : out std_logic_vector(2 downto 0));
end entity DecBinOct;


architecture Arq of DecBinOct is
	begin
			B8_1 <= Binario(5) & Binario(4) & Binario(3);
			B8_0 <= Binario(2) & Binario(1) & Binario(0);
	end process;	

end Arq;