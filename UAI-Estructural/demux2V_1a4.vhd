Library ieee;
use ieee.std_logic_1164.all;

Entity demux2V_1a4 is
	generic( n: integer:= 4);
	port(A, B: in std_logic_vector(n-1 downto 0);
			 en: in std_logic;
		  S, T: in std_logic;
		C1, D1: out std_logic_vector(n-1 downto 0);
		C2, D2: out std_logic_vector(n-1 downto 0);
		C3, D3: out std_logic_vector(n-1 downto 0);
		C4, D4: out std_logic_vector(n-1 downto 0));
end demux2V_1a4;

Architecture solve of demux2V_1a4 is
	begin
	
	Process(A, B, en, S, T)
		Variable entradas: std_logic_vector((n*2)-1 downto 0);
		Variable  Salidas: std_logic_vector((n*8)-1 downto 0);
		Variable selector: std_logic_vector(2 downto 0);
		
		begin
			selector := en & S & T;
			entradas := B & A;
			Salidas  := (others => '0');
			
			Case selector is
				when "100" => Salidas((n*2)-1 downto 0) := entradas;
				when "101" => Salidas((n*4)-1 downto (n*2)) := entradas;
				when "110" => Salidas((n*6)-1 downto (n*4)) := entradas;
				when "111" => Salidas((n*8)-1 downto (n*6)) := entradas;	
			  when others => null;
			end case;
		
		C1 <= Salidas(n-1 downto 0);
		D1 <= Salidas((n*2)-1 downto n);
		C2 <= Salidas((n*3)-1 downto (n*2));
		D2 <= Salidas((n*4)-1 downto (n*3));
		C3 <= Salidas((n*5)-1 downto (n*4));
		D3 <= Salidas((n*6)-1 downto (n*5));
		C4 <= Salidas((n*7)-1 downto (n*6));
		D4 <= Salidas((n*8)-1 downto (n*7));
	end process;
		
end solve;