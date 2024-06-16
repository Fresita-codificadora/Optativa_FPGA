-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Proyect_3_FSM is

	port(
		clk		 : in	std_logic;
		start,charge	 : in	std_logic;
		entrada : in std_logic_vector(7 downto 0);
		reset	 : in	std_logic;
		valid : out std_logic;
		uni,dec,cent : out	std_logic_vector(3 downto 0)
	);

end entity;

architecture rtl of Proyect_3_FSM is

	-- Build an enumerated type for the state machine
	type state_type is (idle, shift, check_sum, sum, fin);

	-- Register to hold the current state
	signal state   : state_type;
	signal uni_reg,dec_reg,Cent_reg : std_logic_vector(3 downto 0):="0000";
	signal input_reg: std_logic_vector(7 downto 0):=x"00";
begin

	-- Logic to advance to the next state
	process (all)
		variable i : integer range 0 to 7:=7;
	begin
		if reset = '0' then
			state <= idle;
			input_reg<=x"00"; -- limpiamos el registro de entrada
			uni_reg<="0000";
			dec_reg<="0000";
			Cent_reg<="0000";
			i:=7; --reseteamos la cantidad de iteraciones
		elsif (rising_edge(clk)) then
			if charge='0' and start='1' then
				input_reg<=entrada; --registamos la entrada con el boton de charge
			end if;
			case state is
				when idle=>
					if start = '0' and charge = '1' then
						state <= shift;
					else
						state <= idle;
					end if;
				when shift=>
					-- processo de shift --
					-- centenas
					cent_reg(3)<=cent_reg(2);
					cent_reg(2)<=cent_reg(1);
					cent_reg(1)<=cent_reg(0);
					cent_reg(0)<=dec_reg(3);
					-- decenas
					dec_reg(3)<=dec_reg(2);
					dec_reg(2)<=dec_reg(1);
					dec_reg(1)<=dec_reg(0);
					dec_reg(0)<=uni_reg(3);
					--unidades
					uni_reg(3)<=uni_reg(2);
					uni_reg(2)<=uni_reg(1);
					uni_reg(1)<=uni_reg(0);
					uni_reg(0)<=input_reg(7);
					-- input_reg
					input_reg(7)<=input_reg(6);
					input_reg(6)<=input_reg(5);
					input_reg(5)<=input_reg(4);
					input_reg(4)<=input_reg(3);
					input_reg(3)<=input_reg(2);
					input_reg(2)<=input_reg(1);
					input_reg(1)<=input_reg(0);
					input_reg(0)<='0';
					state<=check_sum;
				when check_sum=>
					if i>0 then
						i:=i-1;--decrementamos la cantidad de veces que lo tiene que hacer
						state<=sum; -- pasamos al sumador
					else 
						state<=fin; -- si ya lo hicimos 8 veces vamos a finalizar y presentar
					end if;
				when sum =>
					if to_integer(unsigned(uni_reg))>=5 then
						uni_reg<=std_logic_vector(to_unsigned(to_integer(unsigned(uni_reg))+3,4));
					end if;
					if to_integer(unsigned(dec_reg))>=5 then
						dec_reg<=std_logic_vector(to_unsigned(to_integer(unsigned(dec_reg))+3,4));
					end if;
					state<=shift;
				when fin=>
					state<=fin;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (all)
	begin
		case state is
			when idle =>
				valid<='0';
				uni<=uni_reg;
				dec<=dec_reg;
				cent<=cent_reg;
			when shift =>
				valid<='0';
				uni<=uni_reg;
				dec<=dec_reg;
				cent<=cent_reg;
			when check_sum =>
				valid<='0';
				uni<=uni_reg;
				dec<=dec_reg;
				cent<=cent_reg;
			when sum =>
				valid<='0';
				uni<=uni_reg;
				dec<=dec_reg;
				cent<=cent_reg;
			when fin=>
				valid<='1';
				uni<=uni_reg;
				dec<=dec_reg;
				cent<=cent_reg;
		end case;
	end process;

end rtl;
