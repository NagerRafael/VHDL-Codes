--Library
library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

--Entity
Entity divisorAB is
	--generic( n: integer:=4);--<-- nbits
	port(A3, A2, A1, A0, B3, B2, B1, B0: in std_logic;
			  en: in std_logic;
		  Co3, Co2, Co1, Co0: out std_logic;
	     Re3, Re2, Re1, Re0: out std_logic);
end divisorAB;

--Architecture
Architecture solve of divisorAB is

begin

	Process(A3, A2, A1, A0, B3, B2, B1, B0, en)	
		
				Variable  dividendo:   std_logic_vector(3 downto 0);
				Variable    divisor:   std_logic_vector(3 downto 0);
				Variable acumulador:   std_logic_vector(3 downto 0);
				Variable  resultado:   std_logic_vector(4 downto 0);
				
				begin
					
				IF en = '1' then
					dividendo  := A3 & A2 & A1 & A0;
					divisor    := B3 & B2 & B1 & B0;
					acumulador := "0000";
					resultado  := "00000";

					If divisor = "0000" then
						dividendo  := "0000";
						acumulador := "0000";
					else
						For i in 1 to 4 loop
							--1° Desplazar un bit a la izq el acumulador.
							acumulador := (acumulador(2 downto 0) & dividendo(3));
							
							--2° Restar el acumulador para el divisor.
							resultado := std_logic_vector(signed("0"& acumulador) - signed("0"& divisor));
							
							--3° ¿Resultado es positivo o negativo?
							
							--Si es negativo desplazar el dividendo un bit a la izq y concatenar un 0 al LSB.
							if    (resultado(4) = '1') then
								dividendo  := (dividendo(2 downto 0) & "0");
								
							--Si en positivo desplazar el dividendo un bit a la izq y concatenar un 1 al LSB.
							--y asignar al acumulador el valor de resultado.
							elsif (resultado(4) = '0') then
								dividendo  := (dividendo(2 downto 0) & "1");
								acumulador := resultado(3 downto 0);
								
							end if;

						end loop;
					
					end if;
				Co0 <= dividendo(0);
				Co1 <= dividendo(1);
				Co2 <= dividendo(2);
				Co3 <= dividendo(3);
				Re0 <= acumulador(0);
				Re1 <= acumulador(1);
				Re2 <= acumulador(2);
				Re3 <= acumulador(3);
				
				ELSE
				Co0 <= '0';
				Co1 <= '0';
				Co2 <= '0';
				Co3 <= '0';
				Re0 <= '0';
				Re1 <= '0';
				Re2 <= '0';
				Re3 <= '0';
				END IF;

	end process;
		
end solve;
		

