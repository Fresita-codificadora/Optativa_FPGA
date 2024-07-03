--ignorar es solo para simular control_imagen.vhd,mismo que test_control_img.bdf

library ieee;
	use ieee.std_logic_1164.all;
	
entity test_control_img is
	port(
		clk, reset : in std_logic;
		fila,columna : out integer range 0 to 1023
	);
end entity;

architecture arch of test_control_img is
	signal clk_2:std_logic;
begin
	process(clk)
	begin
		if rising_edge(clk) then
			clk_2<=not clk_2;
		end if;
	end process;
	
	process (clk_2,reset)
		variable fila_int,columna_int:integer range 0 to 1023:=35;
	begin
		if reset='0' then
			fila_int:=34;
			columna_int:=140;
		elsif rising_edge(clk_2) then
			columna_int:=columna_int+1;
			if columna_int=800 then
				fila_int:=fila_int+1;
				columna_int:=140;
				if fila_int=515 then
					fila_int:=34;
				end if;
			end if;
		end if;
		fila<=fila_int;
		columna<=columna_int;
	end process;
end;