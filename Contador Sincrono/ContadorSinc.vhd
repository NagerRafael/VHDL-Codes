Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

Entity ContadorSinc is
	port( P: in std_logic_vector(3 downto 0);
			clk, load, enp, reset: in std_logic;
			Q: inout std_logic_vector(3 downto 0));
end ContadorSinc;

Architecture solve of ContadorSinc is

	begin
		
		process (clk, load, enp, reset)
			begin
				
				if (reset = '1') then
					Q <= (others=>'0');
					
				elsif (clk'event and clk='1') then
				
					if (load='0') then 
						Q <= P;
					
					elsif (load='1' and enp='0') then
						Q <= Q;
						
					elsif (load='1' and enp='1') then
						Q <= Q+1;
					end if;
				end if;
		end process;
end solve;