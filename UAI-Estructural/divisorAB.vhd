--Library
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

--Entity
Entity divisorAB is
	generic( n: integer:=4);--<-- nbits
	port( A, B: in std_logic_vector(n-1 downto 0);
			  en: in std_logic;
	  Cociente: out std_logic_vector(7   downto 0);
	   Residuo: out std_logic_vector(n-1 downto 0));
end divisorAB;

--Architecture
Architecture solve of divisorAB is

begin

	Process(A, B)	
		
				Variable  dividendo:   std_logic_vector(n-1 downto 0);
				Variable    divisor:   std_logic_vector(n-1 downto 0);
				Variable acumulador:   std_logic_vector(n-1 downto 0);
				Variable  resultado:   std_logic_vector(n downto 0);
				
				begin
					
				IF en = '1' then
					dividendo  := A;
					divisor    := B;
					acumulador := "0000";
					resultado  := "00000";

					If divisor = "0000" then
						dividendo  := "0000";
						acumulador := "0000";
					else
						For i in 1 to n loop
							--1° Desplazar un bit a la izq el acumulador.
							acumulador := (acumulador(n-2 downto 0) & dividendo(n-1));
							
							--2° Restar el acumulador para el divisor.
							resultado := ("0"& acumulador)-("0"& divisor);
							
							--3° ¿Resultado es positivo o negativo?
							
							--Si es negativo desplazar el dividendo un bit a la izq y concatenar un 0 al LSB.
							if    (resultado(n) = '1') then
								dividendo  := (dividendo(n-2 downto 0) & "0");
								
							--Si en positivo desplazar el dividendo un bit a la izq y concatenar un 1 al LSB.
							--y asignar al acumulador el valor de resultado.
							elsif (resultado(n) = '0') then
								dividendo  := (dividendo(n-2 downto 0) & "1");
								acumulador := resultado(n-1 downto 0);
								
							end if;

						end loop;
					
					end if;
				cociente <= "0000" & dividendo;
				residuo  <= acumulador;
				
				ELSE
				cociente <= (others => '0');
				residuo  <= (others => '0');
				END IF;

	end process;
		
end solve;
		

