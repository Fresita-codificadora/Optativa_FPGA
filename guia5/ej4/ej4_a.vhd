library ieee; 

	-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
	use ieee.std_logic_1164.all;

	-- SIGNED and UNSIGNED types, and relevant functions
	use ieee.numeric_std.all;

entity ej4_a is
	port (
	-- Entradas
		A : in std_LOGIC_VECTOR (2 downto 0);
	-- Salidas
		B : out std_LOGIC_VECTOR(7 downto 0) 
	);
end entity;

architecture arch of ej4_a is 

begin
	with A select B <= x"01" when "000",
							 x"02" when "001",
							 x"04" when "010",
							 x"08" when "011",
							 x"10" when "100",
							 x"20" when "101",
							 x"40" when "110",
							 x"80" when "111",
							 x"00" when others; --agregar por que no le gusta si no
end architecture;