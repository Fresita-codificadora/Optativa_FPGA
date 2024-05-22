library ieee; 

	-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
	use ieee.std_logic_1164.all;

	-- SIGNED and UNSIGNED types, and relevant functions
	use ieee.numeric_std.all;

entity cont_4 is
	port (
		clk,stp,reset : in std_logic;
		cuenta : out std_logic_vector(3 downto 0)
	);
end entity;

architecture arch of cont_4 is
signal clk_o : std_logic:='0';
begin
	
 divisor:process(clk) -- divisor de frecuencia de 50 MHz a 10kHz
	variable cuenta_i : integer range 0 to 5000 :=5000;
	begin
		if rising_edge(clk) then 
			cuenta_i:=cuenta_i-1;
			if cuenta_i = 0 then 
				cuenta_i:=5000;
				clk_o<=not clk_o;
			end if;
		end if;
	end process;
	
contador_4: process(all)
	variable cuenta_i : integer range 0 to 15 :=0; 
begin
		if reset='0' then
			cuenta_i:=0;
		elsif rising_edge(clk_o) and stp='0' then -- contador 4 bits 
			cuenta_i :=cuenta_i+1;
			if cuenta_i=15 then
				cuenta_i:=0;
			end if;
		end if;
		cuenta <= std_LOGIC_VECTOR(to_unsigned(cuenta_i,4));
end process;
end architecture;