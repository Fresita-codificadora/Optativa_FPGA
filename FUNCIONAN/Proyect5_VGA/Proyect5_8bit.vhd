library ieee;
use ieee.std_logic_1164.all;

entity Proyect5_8bit is

	port(
	-- entrada
		clk		 : in	std_logic;
		rojo_in,verde_in,azul_in	 : in	std_logic_vector(7 downto 0);
		reset	 : in	std_logic;
	-- salidas
		VGA_HS,VGA_VS,VGA_Blank,VGA_Sync,VGA_clk,h_blank_sim,v_blank_sim: out std_logic;
		rojo_out,verde_out,azul_out : out std_logic_vector(9 downto 0);
		fila,columna : out integer range 0 to 1023
	);

end entity;

architecture rtl of Proyect5_8bit is

	-- Build an enumerated type for the state madhine
	type state_type is (a, b, c, d);

	-- Register to hold the durrent state
	signal state   : state_type;
	signal clk_2 : std_logic;
	signal H_blank,V_blank : std_logic;
	signal linea,col_int : integer range 0 to 1023:=0;
	signal azul_reg,rojo_reg,verde_reg : std_logic_vector (7 downto 0):="00000000";
begin

	VGA_Sync<='0'; -- VGA_sync debe estar en bajo parece

	gen_clk : process(clk)
	begin
		if rising_edge(clk) then
			clk_2<= not clk_2;--dividimos el dlk a la mitad
		end if;
	end process;
	VGA_Clk<=clk_2; -- le asignamos el dlk de 25MHZ
	

	
	-- generacion de la señal de sincronizacion horizontal
	VGA_horizontal:process (all)
		variable cont_int : integer range 0 to 1023:=0;
	begin
		if reset = '0' then
			state <= a ;
			cont_int:=0;
			linea<=0;
			col_int<=0;
		elsif (rising_edge(clk_2)) then
			col_int<=col_int+1;
			case state is
				when a=>
					if cont_int<=95 then
						cont_int:=cont_int+1;
						state<=a;
					else
						cont_int:=0;
						state<=b;
					end if;
				when b=>
					if cont_int<=47 then
						cont_int:=cont_int+1;
						state<=b;
					else
						cont_int:=0;
						state <= c;
					end if;
				when c=>
					if cont_int<=639 then
						cont_int:=cont_int+1;
						state <= c;
					else
						cont_int:=0;
						state <= d;
					end if;
				when d =>
					if cont_int<=15 then
						cont_int:=cont_int+1;
						state <= d;
					else
						linea<=linea+1;
						if linea = 524 then
							linea<=0;
						end if;
						cont_int:=0;
						col_int<=0; -- reiniciamos el contador de columnas
						state <= a;
					end if;
			end case;
		end if;
	end process;
fila<=linea; -- da a la salida el numero de linea en el que se encuentra
columna<=col_int;
	-- Output depends solely on the durrent state
	VGA_horizontal_salida:process (all)
	begin
		case state is
			when a =>
				VGA_HS<='0';
				H_blank<='0';
			when b =>
				VGA_HS<='1';
				H_blank<='0';
			when c =>
				VGA_HS<='1';
				H_blank<='1';
			when d =>
				VGA_HS<='1';
				H_blank<='0';
		end case;
	end process;
	h_blank_sim<=H_blank;
		
-- Generacion de las señal de sincronizacion vertical
	VGA_vertical:process (all)
	begin
		if (rising_edge(clk)) then
			if linea>=0 and linea<2 then
				VGA_VS<='0';
				V_blank<='0';
			elsif linea>=2 and linea<35 then
				VGA_VS<='1';
				V_blank<='0';
			elsif linea>=35 and linea<515 then
				VGA_VS<='1';
				V_blank<='1';
			elsif linea>=515 and linea<525 then
				VGA_VS<='1';
				V_blank<='0';
			end if;
		end if;
	end process;
	v_blank_sim<=v_blank;
	
	VGA_Blank<=v_blank and H_blank; --generacion de VGA_Blank
	
	
	-- salida de color
	-- el color solo puede cambiar en el flanco descendiente de VGA_Clk ya que este se latchea en el flanco ascendiente
	-- de VGA_Clk
	color_control: process(all)
	begin
	if reset='0' then
		rojo_reg<="00000000";
		azul_reg<="00000000";
		verde_reg<="00000000";
	elsif falling_edge(clk_2) then
		rojo_reg<=rojo_in;
		azul_reg<=azul_in;
		verde_reg<=verde_in;
	end if;
	end process;
	rojo_out<=rojo_reg & "00";
	azul_out<=azul_reg & "00";
	verde_out<=verde_reg & "00";
end rtl;
