library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

Entity rest is
	generic( n: integer:= 4);
	port( A, B: in std_logic_vector(n-1 downto 0);
				S: in std_logic;
				R: out std_logic_vector(n downto 0));
end rest;

Architecture solve of rest is

begin
				R<= ('0'& A)-('0'& B) when S='0' else '0' & (A-B);
				
end architecture;