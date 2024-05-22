library ieee; 

	-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
	use ieee.std_logic_1164.all;

	-- SIGNED and UNSIGNED types, and relevant functions
	use ieee.numeric_std.all;

entity mult_4 is
	port (
		input : in std_LOGIC_VECTOR(3 downto 0);
		output : out std_LOGIC
	);
end entity;

architecture arch of mult_4 is

begin
	output <= '1' when input ="1110" else
				'1' when input="1101" else
				'1' when input= "1011" else
			   '1' when input="0110" else
				'1' when input= "0101" else
				'1' when input="0011" else '0';
end architecture;