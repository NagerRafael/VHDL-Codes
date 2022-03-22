Library ieee;
use ieee.std_logic_1164.all;

Entity demux2v_1a4 is
	generic( n: integer:= 4);
	port(A3, A2, A1, A0: in std_logic; 
		  B3, B2, B1, B0: in std_logic;
			 en: in std_logic;
		  S, T: in std_logic;
		C3, C2, C1, C0: out std_logic;
		D3, D2, D1, D0: out std_logic;
		
		E3, E2, E1, E0: out std_logic;
		F3, F2, F1, F0: out std_logic;
		
		G3, G2, G1, G0: out std_logic;
		H3, H2, H1, H0: out std_logic;
		
		K3, K2, K1, K0: out std_logic;
		J3, J2, J1, J0: out std_logic);
		
end demux2v_1a4;

Architecture solve of demux2v_1a4 is

	begin
	
	Process(A3, A2, A1, A0, B3, B2, B1, B0, en, S, T)
		Variable entradas: std_logic_vector((n*2)-1 downto 0);
		Variable  Salidas: std_logic_vector((n*8)-1 downto 0);
		Variable selector: std_logic_vector(2 downto 0);
		
		begin
			selector := en & S & T;
			entradas := B3 & B2 & B1 & B0 & A3 & A2 & A1 & A0;
			Salidas  := (others => '0');
			
			Case selector is
				when "100" => Salidas((n*2)-1 downto 0) := entradas;
				when "101" => Salidas((n*4)-1 downto (n*2)) := entradas;
				when "110" => Salidas((n*6)-1 downto (n*4)) := entradas;
				when "111" => Salidas((n*8)-1 downto (n*6)) := entradas;	
			  when others => null;
			end case;
		
		C0 <= Salidas(0);
		C1 <= Salidas(1);
		C2 <= Salidas(2);
		C3 <= Salidas(3);
		D0 <= Salidas(4);
		D1 <= Salidas(5);
		D2 <= Salidas(6);
		D3 <= Salidas(7);
		
		E0 <= Salidas(8);
		E1 <= Salidas(9);
		E2 <= Salidas(10);
		E3 <= Salidas(11);
		F0 <= Salidas(12);
		F1 <= Salidas(13);
		F2 <= Salidas(14);
		F3 <= Salidas(15);
		
		G0 <= Salidas(16);
		G1 <= Salidas(17);
		G2 <= Salidas(18);
		G3 <= Salidas(19);
		H0 <= Salidas(20);
		H1 <= Salidas(21);
		H2 <= Salidas(22);
		H3 <= Salidas(23);
		
		K0 <= Salidas(24);
		K1 <= Salidas(25);
		K2 <= Salidas(26);
		K3 <= Salidas(27);
		J0 <= Salidas(28);
		J1 <= Salidas(29);
		J2 <= Salidas(30);
		J3 <= Salidas(31);
		
	end process;
		
end solve;