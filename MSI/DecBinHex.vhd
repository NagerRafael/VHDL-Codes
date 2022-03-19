library ieee;
use ieee.std_logic_1164.all;

entity DecBinHex is
	port (Binario  : in std_logic_vector(7 downto 0);
	      Hex1,Hex2 : out std_logic_vector(3 downto 0));
end entity DecBinHex;


architecture Arq of DecBinHex is
	begin
			Hex1 <= Binario(7) & Binario(6) & Binario(5) & Binario(4); 
			Hex0 <= Binario(3) & Binario(2) & Binario(1) & Binario(0);
	end process;		
end Arq;