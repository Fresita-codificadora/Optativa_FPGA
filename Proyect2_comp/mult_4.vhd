library ieee; 

	-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
	use ieee.std_logic_1164.all;

	-- SIGNED and UNSIGNED types, and relevant functions
	use ieee.numeric_std.all;

entity mult_4 is
	port (
		columna : in std_LOGIC_VECTOR(3 downto 0);
		tecla	: out std_LOGIC;
		contador : in std_LOGIC_VECTOR(3 downto 0)
	);
end entity;

architecture arch of mult_4 is
signal contador_int: std_logic_vector(1 downto 0);
begin
	contador_int <= contador(1 downto 0);
	tecla <= columna(0) when contador_int="00" else
				columna(1) when contador_int="01" else
				columna(2) when contador_int="10" else
				columna(3) when contador_int="11" else '1';

end architecture;