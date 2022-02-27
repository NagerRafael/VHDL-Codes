Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


Entity UAI is
	generic(n: integer := 4);
	port(A, B: in  std_logic_vector(n-1 downto 0);
			  R: out std_logic_vector((2*n)-1 downto o));
end entity;

Architecture solve of UAI is

Signal ApB, AdB: std_logic_vector((2*n)-1 downto o);
Signal AmasB, AmenosB, dosA, dosB: std_logic_vector(n downto 0);
Signal Op2, Op3, Op4: std_logic_vector((2*n)-1 downto 0);

Component sumadorAB
	generic (n: integer :=4);--<-- nbits
	port( A, B: in std_logic_vector(n-1 downto 0);
			  en: in std_logic;
			F: out std_logic_vector(n downto 0));
end component;

Component restadorAB
	generic( n: integer:=4);--<--nbits
	port( A, B: in std_logic_vector(n-1 downto 0);
			  en: in std_logic;
			F: out std_logic_vector(n downto 0));
end component;

Component producto
   --generic ( n: integer:=1);
   port (  a,b:in  STD_LOGIC_VECTOR (3 downto 0) ;
				en:in  STD_LOGIC;
             r:out STD_LOGIC_VECTOR (7 downto 0));
end component;

Component mult2
	generic( n: integer:= 4);
	port(A: in std_logic_vector(n-1 downto 0);
		 en: in std_logic;
		  R: out std_logic_vector(n downto 0));
end component;

Component divisorAB
	generic( n: integer:=4);--<-- nbits
	port( A, B: in std_logic_vector(n-1 downto 0);
			  en: in std_logic;
	  Cociente: out std_logic_vector(7   downto 0);
	   Residuo: out std_logic_vector(n-1 downto 0));
end component;

COmponent demux2V_1a4
	generic( n: integer:= 4);
	port(A, B: in std_logic_vector(n-1 downto 0);
			 en: in std_logic;
		  S, T: in std_logic;
		C1, D1: out std_logic_vector(n-1 downto 0);
		C2, D2: out std_logic_vector(n-1 downto 0);
		C3, D3: out std_logic_vector(n-1 downto 0);
		C4, D4: out std_logic_vector(n-1 downto 0));
end component;

Component puerta4_or
	generic ( n: integer :=8);--<-- nbits
	port(
		A,B,C,D: in std_logic_vector(n-1 downto 0);
		F: out std_logic_vector(n-1 downto 0));
end component;

