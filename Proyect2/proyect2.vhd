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
			fila_o : out std_LOGIC_VECTOR(3 downto 0); --salida para el selector de fila 
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
signal i : integer range 0 to 500000 :=500000;
signal indice : integer range 0 to 15:= 15;
-- señales de alta impedancia
signal fila : std_LOGIC_VECTOR(3 downto 0);
--procedure declaration
----------------------------------------------------------------------------------------------
--------- Procedimiento encargado de escribir en los display de 7 segmentos ------------------
----------------------------------------------------------------------------------------------
procedure BCD (signal cont: in integer;signal output : out std_LOGIC_VECTOR(7 downto 0)) is
	begin
		case cont is
			when 13  =>  --dislpay 0
				output <= not x"3F";
			when 0 =>  --display 1
				output <= not x"06";
			when 1 =>  --display 2
				output <= not x"5B";
			when 2 =>  --display 3
				output <= not x"4F";
			when 4 =>  --display 4
				output <= not x"66";
			when 5 =>  --display 5
				output <= not x"6D";
			when 6 =>  --display 6
				output <= not x"7D";
			when 8 =>  --display 7
				output <= not x"07";
			when 9 =>  --display 8
				output <= not x"7F";
			when 10 =>  --display 9
				output <= not x"6F";
			when others =>  --display others
				output <= not x"01";
		end case;
 	end BCD;
	
		-- Build an enumerated type for the state machine
	type state_type is (idle, debounce, verif, valid);

	-- Register to hold the current state
	signal state   : state_type;
	
	
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
	
	maqu_est_y_cont:process(all)
	begin
		
-----------------------------------------------------------
------ contador de cuatro bits ----------------------------
-----------------------------------------------------------		
		if reset='0' then
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
		if reset = '0' then
			state <= idle;
		elsif (rising_edge(clk)) then
			case state is
				when idle=>
					if std_match(col,"-011") or std_match(col,"-101") or std_match(col,"-110") then
						state <= debounce;
						i<= 500000; --iniciamos el contador de los 10 ms
					else
						state <= idle;
					end if;
				when debounce=>
					if i = 0 then
						state <= verif;
						i<=500000;
					else
						state <= debounce;
						i<=i-1;
					end if;
				when verif=>
					if std_match(col,"-011") or std_match(col,"-101") or std_match(col,"-110") then
						state <= valid;
					else
						state <= idle;
					end if;
				when valid =>
					if std_match(col,"-011") or std_match(col,"-101") or std_match(col,"-110") then
						state <= debounce;
					else
						state <= valid;
					end if;
				when others =>
					state<= idle;
			end case;
		end if;
	end process;
	-- Output depends solely on the current state
	salida_maq_estados:process (all)
	begin
		case state is
			when idle =>
				stp <= '0';
				valido <= false;
			when debounce =>
				stp <= '1';
				valido <= false;
			when verif =>
				stp<='1';
				valido <= false;
			when valid =>
				stp <='1';
				valido <= true;
			when others => 
				stp <= '1';
				valido <= false;
		end case;
	end process;
-------------------------------------------------------------------------------------------------
---------- Escritura en los display -------------------------------------------------------------
-------------------------------------------------------------------------------------------------	
	escritura :process (all)
	begin
		if reset= '0' then
			indice<=15;
		elsif valido then
			indice <= to_integer(unsigned(cuenta_4));
		end if;
	end process;
	BCD(indice,display);
--------------------------------------------------------------------------
--------- Genera la alta impedancia de las lineas de fila ----------------
--------------------------------------------------------------------------
			fila_o <= "ZZZ1" when fila = "0001" else
						 "ZZ1Z" when fila= "0010" else
						 "Z1ZZ" when fila= "0100" else
						 "1ZZZ" when fila= "1000" else "ZZZZ";
		
		
	
end architecture;
