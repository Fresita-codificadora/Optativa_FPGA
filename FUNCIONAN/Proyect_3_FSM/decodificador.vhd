library ieee;
use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
entity decodificador is
	port (
		numero : in std_logic_vector(3 downto 0);
		valido,reset,clk : in std_logic;
		output : out std_logic_vector (7 downto 0)
	);
end entity;

architecture arch of decodificador is 

begin
	process(all)
		variable num_int : integer range 0 to 15:=0;
	begin
	if rising_edge(clk) then
		if reset='0' then
			num_int:=0;
		elsif valido='1' then
			num_int:= to_integer(unsigned(numero));
		end if;
	end if;
			case num_int is
				when 0  =>  --dislpay 0
					output <= not x"3F";
				when 1 =>  --display 1
					output <= not x"06";
				when 2 =>  --display 2
					output <= not x"5B";
				when 3 =>  --display 3
					output <= not x"4F";
				when 4 =>  --display 4
					output <= not x"66";
				when 5 =>  --display 5
					output <= not x"6D";
				when 6 =>  --display 6
					output <= not x"7D";
				when 7 =>  --display 7
					output <= not x"07";
				when 8 =>  --display 8
					output <= not x"7F";
				when 9 =>  --display 9
					output <= not x"6F";
				when others =>  --display others
					output <= not x"01";
			end case;
	end process;
end architecture;