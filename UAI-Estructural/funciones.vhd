Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all;

Package funciones is

	Component sumadorAB
	generic (n: integer :=4);--<-- nbits
	port( A, B: in  std_logic_vector(n-1 downto 0);
			   F: out std_logic_vector(n downto 0));
	end component;
	
	Component restadorAB
	generic( n: integer:=4);--<--nbits
	port( A, B: in  std_logic_vector(n-1 downto 0);
			   F: out std_logic_vector(n downto 0));
	end component;
	
	Component producto
   --generic ( n: integer:=1);
   port (  a,b:in  STD_LOGIC_VECTOR (3 downto 0) ;
             r:out STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	Component divisorAB
	generic( n: integer:=4);--<-- nbits
	port( A, B: in std_logic_vector(n-1 downto 0);
			Cociente, Residuo: out std_logic_vector(n-1 downto 0));
	end component;
	
	Component puerta_not
	generic ( n: integer :=1);--<-- nbits
	port(
		X: in std_logic_vector(n-1 downto 0);
		S: out std_logic_vector(n-1 downto 0));
	end component;
	
	Component puerta_or
	generic ( n: integer :=1);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
	end component;
	
	Component puerta_and
	generic ( n: integer :=1);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
	end component;
	
	Component puerta_xor
	generic ( n: integer :=8);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
	end component;
	
	Component puerta_xnor
	generic ( n: integer :=1);--<-- nbits
	port(
		A,B: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
	end component;
	
end package funciones;