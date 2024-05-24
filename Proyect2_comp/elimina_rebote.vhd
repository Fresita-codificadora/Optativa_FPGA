library ieee;
use ieee.std_logic_1164.all;

entity elimina_rebote is

	port(
		clk		 : in	std_logic;
		tecla	 : in	std_logic;
		reset	 : in	std_logic;
		valido,stp	 : out	std_logic
	);

end entity;

architecture rtl of elimina_rebote is

	-- Build an enumerated type for the state machine
	type state_type is (idle, debounce, verif, valid);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
		variable cuenta: integer range 0 to 500000:=500000; -- 10ms son 500000 ciclos a 50 MHz
		variable cuenta_2 : integer range 0 to 10000:=10000; -- 2 ciclos de la señal de 10 kHz
	begin
		if reset = '0' then
			state <= idle;
		elsif (rising_edge(clk)) then
			case state is
				when idle=>
					if tecla = '0' then
						state <= debounce;
					else
						state <= idle;
					end if;
				when debounce=>
					if cuenta=0 then
						state <= verif;
						cuenta:=500000;
					else
						cuenta :=cuenta-1;
						state <= debounce;
					end if;
				when verif=>
					if tecla = '0' then
						state <= valid;
					else
						state <= idle;
					end if;
				when valid =>
					if cuenta_2 = 0 then
						state <= idle;
						cuenta_2:=10000;
					else
						cuenta_2:=cuenta_2-1;
						state <= valid;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when idle =>
				valido<='0';
				stp<= '0';
			when debounce =>
				valido<='0';
				stp<= '1';
			when verif =>
				valido<='0';
				stp<= '1';
			when valid =>
				valido<='1';
				stp<= '1';
		end case;
	end process;

end rtl;
