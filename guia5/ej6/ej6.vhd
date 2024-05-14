library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity ej6 is
	generic (n_bits : integer :=4);
	port (
			output : out std_logic_vector ((n_bits-1) downto 0);
			input : in std_logic_vector ((n_bits-1) downto 0);
			clk,rst,CE,L : in std_logic
	);
end ej6;

architecture arch of ej6 is
	signal cuenta : integer range 0 to (2**n_bits)-1;
begin
output <= std_logic_vector(to_unsigned(cuenta,n_bits));

process (all)
	begin
		if rst ='1' then 
			cuenta <= 0;
		elsif L='1' then
			cuenta <= to_integer(unsigned(input));
		else
			if (clk'event and clk='1') then
				if CE ='1' then 
					cuenta <= cuenta + 1;
				end if;
			end if;
		end if;
	end process;

end arch;
