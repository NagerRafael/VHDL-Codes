
-------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-------------------------------------------------------------------------
entity producto is
   --generic ( n: integer:=1);
   port (  a,b:in  STD_LOGIC_VECTOR (3 downto 0) ;
				en:in  STD_LOGIC;
             r:out STD_LOGIC_VECTOR (7 downto 0));
end producto;
-------------------------------------------------------------------------
architecture salida of producto is
   signal c :std_logic_vector (3 downto 0);
	signal d :std_logic_vector (3 downto 0);
	signal e :std_logic_vector (3 downto 0);
	signal f :std_logic_vector (3 downto 0);
	
	signal c2:std_logic_vector (7 downto 0);
	signal d2:std_logic_vector (7 downto 0);
	signal e2:std_logic_vector (7 downto 0);
	signal f2:std_logic_vector (7 downto 0);
	
	signal g :std_logic_vector (7 downto 0);
	signal h :std_logic_vector (7 downto 0);
	
	
	
begin
Process(a, b, en)
	begin
		IF en = '1' then
			c <= (a(3 downto 3) and b(0 downto 0)) & (a(2 downto 2) and b(0 downto 0)) & (a(1 downto 1) and b(0 downto 0)) & (a(0 downto 0) and b(0 downto 0)) ;
			d <= (a(3 downto 3) and b(1 downto 1)) & (a(2 downto 2) and b(1 downto 1)) & (a(1 downto 1) and b(1 downto 1)) & (a(0 downto 0) and b(1 downto 1)) ;
			e <= (a(3 downto 3) and b(2 downto 2)) & (a(2 downto 2) and b(2 downto 2)) & (a(1 downto 1) and b(2 downto 2)) & (a(0 downto 0) and b(2 downto 2)) ;
			f <= (a(3 downto 3) and b(3 downto 3)) & (a(2 downto 2) and b(3 downto 3)) & (a(1 downto 1) and b(3 downto 3)) & (a(0 downto 0) and b(3 downto 3)) ;
			
			c2 <= "0000" & c      ;
			d2 <= "000" & d & "0" ;
			e2 <= "00" & e & "00" ;
			f2 <= "0" & f & "000" ;
			
			g <= c2 + d2 ;
			h <= e2 + f2 ;
			
			r <=  g +  h ; 
		else
			r <= (others => '0');
		end if;
end process;
end architecture salida;
-------------------------------------------------------------------------












