library ieee;
use ieee.std_logic_1164.all;

entity cuadrado_b is
	port (
		reset,clk:in std_logic;
		fila,columna:in integer range 0 to 1023;
		-- salida
		fondo,cuadr:out std_logic
	);
end entity;

architecture arch of cuadrado_b is
	signal col_ini,col_fin,fila_ini,fila_fin : integer range 0 to 1023;
begin
 process (all)	
	begin
	if rising_edge(clk) then
		if reset='0'then
			col_ini<=439;
			col_fin<=489;
			fila_ini<=250;
			fila_fin<=300;
		end if;
	end if;
	end process;
	
	logica_salida : process(all)
	begin
		
		if rising_edge(clk) then -- tal vez hay que revisar si no estamos en la zona de blanquing pero que se yo
		--vertical
			if fila<fila_ini then -- fuera cuadrado arriba 
					fondo<='1';
					cuadr<='0';
			elsif fila>=fila_ini and fila<=fila_fin then -- zona del cuadrado
				if columna<col_ini then -- fuera del cuadrado por izquierda
					fondo<='1';
					cuadr<='0';
				elsif columna>=col_ini and columna<=col_fin then -- dentro del cuadrado
					fondo<='0';
					cuadr<='1';
				elsif columna>col_fin then -- fuera del cuadrado por derecha
					fondo<='1';
					cuadr<='0';
				else
					fondo<='1';
					cuadr<='0';
				end if;
			elsif fila>fila_fin then -- fuera del cuadrado por abajo
					fondo<='1';
					cuadr<='0';
			else
					fondo<='1';
					cuadr<='0';
			end if;
		end if ;
		end process;
end architecture;