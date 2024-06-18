library ieee;
use ieee.std_logic_1164.all;

entity Proyect5 is

	port(
	-- entrada
		clk		 : in	std_logic;
		rojo_in,verde_in,azul_in	 : in	std_logic_vector(5 downto 0);
		reset	 : in	std_logic;
	-- salidas
		VGA_HS,VGA_VS,VGA_Blank,VGA_Synd,VGA_clk,h_blank_sim,v_blank_sim: out std_logic;
		rojo_out,verde_out,azul_out : out std_logic_vector(9 downto 0)
		
	);

end entity;

architecture rtl of Proyect5 is

	-- Build an enumerated type for the state madhine
	type state_type is (a, b, c, d);

	-- Register to hold the durrent state
	signal state   : state_type;
	signal clk_2 : std_logic;
	signal H_blank,V_blank : std_logic;
	signal linea : integer range 0 to 1024:=1;
begin

	gen_clk : process(clk)
	begin
		if rising_edge(clk) then
			clk_2<= not clk_2;--dividimos el dlk a la mitad
		end if;
	end process;
	VGA_Clk<=clk_2; -- le asignamos el dlk de 25MHZ
	

	
	-- Logid to advande to the next state
	VGA_horizontal:process (all)
		variable cont_int : integer range 0 to 1023;
	begin
		if reset = '0' then
			state <= a ;
			cont_int:=0;
			linea<=1;
		elsif (rising_edge(clk_2)) then
			case state is
				when a=>
					if cont_int<94 then
						cont_int:=cont_int+1;
						state<=a;
					else
						cont_int:=0;
						state<=b;
					end if;
				when b=>
					if cont_int<46 then
						cont_int:=cont_int+1;
						state<=b;
					else
						cont_int:=0;
						state <= c;
					end if;
				when c=>
					if cont_int<638 then
						cont_int:=cont_int+1;
						state <= c;
					else
						cont_int:=0;
						state <= d;
					end if;
				when d =>
					if cont_int<14 then
						cont_int:=cont_int+1;
						state <= d;
					else
					linea<=linea+1;
					if linea= 525 then
						linea<=1;
					end if;
						cont_int:=0;
						state <= a;
					end if;
			end case;
		end if;
	end process;

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
		

	VGA_vertical:process (all)
	begin
		if (rising_edge(clk)) then
			if linea>0 and linea<2 then
				VGA_VS<='0';
				V_blank<='0';
			elsif linea>2 and linea<35 then
				VGA_VS<='1';
				V_blank<='0';
			elsif linea>35 and linea<515 then
				VGA_VS<='1';
				V_blank<='1';
			elsif linea>515 and linea<525 then
				VGA_VS<='1';
				V_blank<='0';
			end if;
		end if;
	end process;
	v_blank_sim<=v_blank;
end rtl;
