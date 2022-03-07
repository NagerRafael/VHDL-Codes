Library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

Entity division is
	generic( n: integer := 3);
	port( A, B: in  std_logic_vector(n downto 0);
			c, R: inout std_logic_vector(n downto 0));
end division;

Architecture solve of division is
	begin
	
		Process (A, B, C, R) is
	
			Variable dd, dv, resi: integer;

				begin
					dd   := to_integer(unsigned(A));
					ds   := to_integer(Unsigned(B));
					resi := 0;
					
					While (dd >= ds) loop
						dd  := dd-ds;
						res := res+1;
					end loop;
					
					c <= std_logic_vector(to_unsigned(dd,n));
					R <= std_logic_vector(to_unsigned(res,n));
		end process;
end Architecture;