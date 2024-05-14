library ieee;
	use ieee.std_logic_1164.all;
	 USE IEEE.NUMERIC_STD.ALL;
	
entity ej2 is

	port(
	
		entrada : in std_logic_vector(11 downto 0);
		salida : out std_logic_vector(6 downto 0)
	);
end ej2;

architecture arch of ej2 is 

begin
	salida <= "1000100" when std_match(entrada,"0110110-----") else
				 "1001000" when std_match(entrada,"1110110-----") else
				 "0000001" when std_match(entrada,"----010-----") or std_match(entrada,"-1---10--111") or std_match(entrada,"1----10--111") or std_match(entrada,"--1--10--111") or std_match(entrada,"---1-10--111") else
				 "0100000" when std_match(entrada,"1100110-----") else
				 "0010000" when std_match(entrada,"0100110-----") else
				 "0000010" when std_match(entrada,"-----100111-");
				 
end arch;