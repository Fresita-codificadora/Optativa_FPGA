library ieee; 

	-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
	use ieee.std_logic_1164.all;

	-- SIGNED and UNSIGNED types, and relevant functions
	use ieee.numeric_std.all;

entity proyect2 is 
	port(
			--entradas
			clk : in std_LOGIC;
			col : in std_LOGIC_VECTOR(3 downto 0); -- lector del valor de la columna
			reset : in std_LOGIC;
			--salidas
			fila : out std_LOGIC_VECTOR(3 downto 0); --salida para el selector de fila 
			display	: out std_LOGIC_VECTOR (7 downto 0)  --creo que es la salida para el BCD
	);
end entity;

architecture arch of proyect2 is
--signal declaration
--div clk
signal cuenta : integer range 0 to 5000:=0;
signal clk_out : std_LOGIC :='0';
--contador
signal cuenta_4 : std_LOGIC_veCTOR(3 downto 0):="0000";
--elimina rebote
signal stp : std_LOGIC:='0'; -- señal de que se detenga si se detecta la tecla presionada
signal valido : boolean:=false;
signal i : integer range 0 to 100 :=100;
signal indice : integer range 0 to 15;
--procedure declaration
procedure BCD (signal cont: in integer;signal output : out std_LOGIC_VECTOR(7 downto 0)) is
	begin
		case cont is
			when 0 =>
				output <= not x"3F";
			when 1 =>
				output <= not x"06";
			when 2 =>
				output <= not x"5B";
			when 3 =>
				output <= not x"4F";
			when 4 =>
				output <= not x"66";
			when 5 => 
				output <= not x"6D";
			when 6 =>
				output <= not x"7D";
			when 7 =>
				output <= not x"07";
			when 8 =>
				output <= not x"7F";
			when 9 =>
				output <= not x"6F";
			when others =>
				output <= not x"01";
		end case;
 	end BCD;
function trad (indice: integer:=0) return integer is
	variable aux : integer range 0 to 15;
	begin
	with (indice) select aux <= 1 when 0,
									  2 when 1,
									  3 when 2,
									  0 when 4, -- no usado
									  5 when 5,
									  6 when 6,
									  0 when 7, -- no usado
									  7 when 8,
									  8 when 9,
									  9 when 10,
									  0 when 11, --no usado
									  0 when 12, -- no usado
									  0 when 13, -- este si es el 0
									  0 when 14, --no usado
									  0 when 15; --no usado								  
	return aux;
--		case indice is 
--			when 0 =>
--				return <= 1;
--			when 1 =>
--				return <= 2;
--			when 2 =>
--				return <= 3;
--			when 3 =>
--				return <= 0; -- no usado
--			when 4 =>
--				return <= 4;
--			when 5 =>
--				return <= 5;
--			when 6 =>
--				return <= 6;
--			when 7 =>
--				return <= 0; --no usado
--			when 8 =>
--				return <= 7;
--			when 9 =>
--				return <= 8;
--			when 10 =>
--				return <= 9;
--			when 11 =>
--				return <= 0; --no usado
--			when 12 =>
--				return <= 0; -- no usado
--			when 13 =>
--				return <= 0; --si usado es el 0
--			when 14 =>
--				return <= 0; -- no usado
--			when 15 =>
--				return <= 0; -- no usado
--		end case;
end function;
	
begin
	process(clk) -- divisor de frecuencia de clk, de un clk de 50 MHZ baja a aprox 10 kHz
	begin
 		if (clk'event and clk='1') then
			cuenta <= cuenta +1;
			if cuenta = 5000 then 
				cuenta<=0;
				clk_out <= not clk_out;
			end if;
		end if;
	end process;
	
	process(clk_out,reset)
	begin
		
-----------------------------------------------------------
------ contador de cuatro bits ----------------------------
-----------------------------------------------------------		
		if reset='1' then
			cuenta_4<="0000";
		elsif (clk_out'event and clk_out='1') and stp='0' then -- contador 4 bits 
			cuenta_4 <= std_logic_vector(to_unsigned(to_integer(unsigned(cuenta_4)) + 1, 4));
			if cuenta_4="1111" then
				cuenta_4<="0000";
			end if;
		end if;
----------------------------------------------------------
------ gen de señal de las filas -------------------------
----------------------------------------------------------		
		if std_match(cuenta_4,"00--") then --fila 0
			fila <= x"1";				
		elsif std_match(cuenta_4,"01--") then --fila 1
			fila <= x"2";
		elsif std_match(cuenta_4,"10--") then --fila 2
			fila <= x"4";
		elsif std_match(cuenta_4,"11--") then --fila 3
			fila <=x"8";
		else
			fila <= x"0";
		end if;
----------------------------------------------------------
------ logica de lectura de las columnas -----------------
----------------------------------------------------------
		if std_match(cuenta_4,"--00") then --col 0
			if col="0111" then
				if clk_out'event and clk_out='1' then
					i<=i-1;
					stp<='1';
					valido <=false;
					if i=0 then -- pasaron los 10 ms
						i<=100;
						indice <= 0;
						if col="0111" then
							valido<= true ;
							indice <= to_integer(unsigned(cuenta_4));
							stp<='0';
						end if;
					end if;
				end if;
				if valido then--hay que agregar la traduccion pero no anda la funcion por algun motivo que no puedo explicar
					BCD(indice,display);
					valido <= false;
				end if;
			end if;
		elsif std_match(cuenta_4,"--01") then --col 1
			if col="1011" then
				--debounce
				if valido then
					--escribo
				end if;
			end if;
		elsif std_match(cuenta_4,"--10") then --col 2
			if col="1101" then
				--debounce
				if valido then
					--escribo
				end if;
			end if;
		elsif std_match(cuenta_4,"--11") then --fila 3 --no implementado
			if col="1110" then
				--debounce
				if valido then
					--escribo
				end if;
			end if;
		end if;
	end process;
end architecture;