library ieee; 

	-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
	use ieee.std_logic_1164.all;

	-- SIGNED and UNSIGNED types, and relevant functions
	use ieee.numeric_std.all;

entity deco_2_4 is

port (
	entrada : in std_LOGIC_VECTOR(3 downto 0);
	output : out std_LOGIC_VECTOR(3 downto 0)
);

end entity;

architecture arch of deco_2_4 is 
	signal output_in : std_LOGIC_vector(3 downto 0);
begin
	process(all)
	begin
		if std_match(entrada,"00--") then --output_in 0
			output_in <= x"1";				
		elsif std_match(entrada,"01--") then --output_in 1
			output_in <= x"2";
		elsif std_match(entrada,"10--") then --output_in 2
			output_in <= x"4";
		elsif std_match(entrada,"11--") then --output_in 3
			output_in <=x"8";
		else
			output_in <= x"0";
		end if;
	end process;
	output <= "ZZZ0" when output_in = "0001" else
			 "ZZ0Z" when output_in= "0010" else
			 "Z0ZZ" when output_in= "0100" else
			 "0ZZZ" when output_in= "1000" else "ZZZZ";
end architecture;