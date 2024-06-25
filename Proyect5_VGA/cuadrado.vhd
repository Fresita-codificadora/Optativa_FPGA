library ieee;
use ieee.std_logic_1164.all;

entity cuadrado is
	port (
		der,izq,arriba,abajo,clk,reset: in std_logic;
		fila,columna:in integer range 0 to 1023;
		-- salida
		rojo,verde,azul:out std_logic_vector(5 downto 0)
	);
end entity;

architecture arch of cuadrado is
	signal col_ini,col_fin,fila_ini,fila_fin : integer range 0 to 1023;
	signal clk_div : std_logic;
begin
	
	div_clk : process (clk) 
		variable cont:integer range 0 to (2**17-1);
	begin
		if rising_edge(clk) then
			cont:=cont+1;
			if cont=100_000 then
				clk_div<=not clk_div;
				cont:=0;
			end if;
		end if;
	end process;	
	
	
	logica_mov:process (all)	
	begin
		if reset='0'then
			col_ini<=439;
			col_fin<=489;
			fila_ini<=250;
			fila_fin<=300;
		elsif rising_edge(clk_div) then
			if der='0' then
				col_ini<=col_ini+1;
				col_fin<=col_fin+1;
			end if;
			if izq='0'then
				col_ini<= col_ini-1;
				col_fin<= col_fin-1; -- logica de movimiento
			end if;
			if abajo='0' then
				fila_ini<=fila_ini+1;
				fila_fin<=fila_fin+1;
			end if;
			if arriba='0' then
				fila_ini<=fila_ini-1;
				fila_fin<=fila_fin-1;
			end if;
			
			-- logica de chequeo que este dentro del cuadro de dibujo
			if col_ini<144 then
				col_ini<=144;          -- marco izquierdo
				col_fin<=144+50;
			elsif col_fin>784 then
				col_fin<=784;          -- marco derecho
				col_ini<=784-50;
			end if;
			if fila_ini<35 then
				fila_ini<=35;         -- arriba
				fila_fin<=35+50;
			elsif fila_fin>515 then
				fila_fin<=515;
				fila_ini<=515-50;     -- abajo
			end if;
		end if;
	end process;
	
	logica_salida : process(all)
	begin
		
		if rising_edge(clk) then -- tal vez hay que revisar si no estamos en la zona de blanquing pero que se yo
		--vertical
			if fila<fila_ini then -- fuera cuadrado arriba 
				rojo<="000000";
				azul<="111111"; --pintamos fondo azul
				verde<="000000";
			elsif fila>=fila_ini and fila<=fila_fin then -- zona del cuadrado
				if columna<col_ini then -- fuera del cuadrado por izquierda
					rojo<="000000";
					azul<="111111"; --pintamos fondo azul
					verde<="000000";
				elsif columna>=col_ini and columna<=col_fin then -- dentro del cuadrado
					rojo <="000000";
					azul<="000000";
					verde<="111111"; -- pintamos cuadrado verde
				elsif columna>col_fin then -- fuera del cuadrado por derecha
					rojo<="000000";
					azul<="111111"; --pintamos fondo azul
					verde<="000000";
				else
					rojo<="000000";
					azul<="111111"; --pintamos fondo azul
					verde<="000000";
				end if;
			elsif fila>fila_fin then -- fuera del cuadrado por abajo
				rojo<="000000"; -- pintamos fondo azul
				azul<="111111";
				verde<="000000";
			else
				rojo<="000000"; -- pintamos fondo azul
				azul<="111111";
				verde<="000000";
			end if;
		end if ;
		end process;
end architecture;