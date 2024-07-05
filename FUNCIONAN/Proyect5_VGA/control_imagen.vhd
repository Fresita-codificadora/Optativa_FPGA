--la idea es dividir una imagen en 8, osea que cada pixel de la imagen representa un cuadrado de 8x8 pixeles de la pantalla
--entonces hago 8 columnas que tienen que apuntar a la misma direccion de memoria y luego incrementar 1, luego de hacer esto toda la fila 
--volvemos a la pos de memoria 0 para hacerlo de nuevo durante 8 filas, cuando ya hicimos las 8 filas aumentamos la direccion de memoria en 80
--esto tiene que ver con que idee para cargar una imagen de 80x60 entonces cuando hicimos las 80 primeras direcciones que equivalen a la primera
--fila de la imagen pasamos a la dir_mem+80 para la proxima fila de la imagen 
library ieee;
	use ieee.std_logic_1164.all;
	use ieee.numeric_std.all;
	
entity control_imagen is
                                  --para mejorar, se pueden agregar 2 generic, uno para el tamaño horizontal de la imagen, uno para el tamaño del cuadrado de pixeles
											 --que en este caso esta fijo en 8 pero podria ser 5 ponele que a mi me da justo con el tamaño de memoria
	port(
		clk		 : in	std_logic;
		fila,columna	 : in	integer range 0 to 1023;
		reset	 : in	std_logic;
--		estado : out integer range 0 to 3;
--		fila_n_sim,col_n_sim :out integer range 0 to 1023;
		mem_dir	 : out	std_logic_vector(13 downto 0)
	);

end entity;

architecture rtl of control_imagen is

	-- Build an enumerated type for the state machine
	type state_type is (idle, fila_state, columna_state);

	-- Register to hold the current state
	signal state   : state_type;
	
	signal mem_dir_int : integer range 0 to 16383;

begin

	-- Logic to advance to the next state
	process (clk, reset)
		variable fila_n,col_n : integer range 0 to 1023;
	begin
		if reset = '0' then
			state <= idle;
			fila_n:=35;
			col_n:=144;
			mem_dir_int<=0;
		elsif (rising_edge(clk)) then
			case state is
				when idle=>
-- debug					estado<=0;
					if fila>=35 and fila<=515 and columna>=144 and columna<=784 then -- si estamos dentro del cuadro donde podemos escribir hacemos algo si no no hacemos nada
							state<=fila_state;
					else 
							state<=idle;	-- aca es donde no hacemos nada
							col_n:=144;
							fila_n:=35;
							mem_dir_int<=0;
					end if;
				when fila_state=>
-- debug					estado<=1;
					if fila=fila_n+7 then -- chequeamos si ya hicimos 8 filas 
						mem_dir_int<=mem_dir_int+80; -- si ya hicimos las 8 filas eso quiere decir que tenemos que pasar a la proxima fila de la imagen
						fila_n:=fila+1; -- ahora la comparacion del if es con la fila que le sigue a la que estamos actualmente entonces fila+1, si no entendiste lee columna que tiene la misma logica
						state<=idle; -- verificamos seguir en la imagen
					else
						state<=columna_state; --si no hicimos 8 filas, faltan hacer columnas
					end if;
				when columna_state=>
-- debug					estado<=2; 
					if columna=col_n+7 then       --aca verificamos si hicimos las 8 columnas 
						mem_dir_int<=mem_dir_int+1; -- si hicimos las 8 columnas tenemos que aumentar la direccion por que es el proximo pixel
						col_n:=columna+1;				-- y la proxima comparacion de columna es la columna actual+1 por que desp le sumamos 7, misma logica fila
						state<=fila_state;         -- vamos a chequear que sigamos en la fila correcta, mepa que no hace falta y podriamos ir a col_state, VERIFICAR SI TRAE PROBLEMAS!!!!
					elsif columna=784 then        --si llegamos al final de la pantalla lo que tenemos que hacer es reiniciar la comparacion de columna y volver a arrancar con la memoria
						state<=idle;					--verificamos si seguimos en la pantalla
						col_n:=144;                -- reiniciamos la comparacion de columnas
						mem_dir_int<=mem_dir_int-80; -- reiniciamos la dir de memoria que tenemos que leer
					else
						state<=columna_state;  -- si no estamos en el final ni estamos en el 8vo pixel no tenemos que hacer nada, por que no podemos aumentar la dir de memoria
					end if;
			end case;
		end if;
--		col_n_sim<=col_n;
--		fila_n_sim<=fila_n;
	end process;
	
	-- Output depends solely on the current state
	process (state,mem_dir_int)
	begin
		case state is
			when idle =>
				mem_dir<=std_logic_vector(to_unsigned(mem_dir_int,14));
			when fila_state =>
				mem_dir<=std_logic_vector(to_unsigned(mem_dir_int,14));
			when columna_state =>
				mem_dir<=std_logic_vector(to_unsigned(mem_dir_int,14));
		end case;
	end process;

end rtl;
