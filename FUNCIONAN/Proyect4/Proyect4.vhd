-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Proyect4 is
	generic(n:integer:=8);
	port(
	--entradas
		clk		 : in	std_logic;
		a,b	 : in	std_logic;
		reset	 : in	std_logic;
		dato : in std_logic_vector(n-1 downto 0);
		
		--salidas
		fin : out std_logic;
		output	 : out	std_logic_vector(n-1 downto 0)
	);

end entity;

architecture rtl of Proyect4 is

	-- Build an enumerated type for the state machine
	type state_type is (idle, dato_a, dato_b, a_mayor, r_a, b_mayor, r_b, final);

	-- Register to hold the current state
	signal state   : state_type;
	signal a_reg,b_reg,r_reg : integer range 0 to (2**n-1);
begin

	-- Logic to advance to the next state
	process (all)
	begin
		if reset = '0' then
			state <= idle;
			a_reg<=0;
			b_reg<=0;
			r_reg<=0;
		elsif (rising_edge(clk)) then
			case state is
				when idle=>
					if a = '0' then
						state <= dato_a;
						a_reg<=to_integer(unsigned(dato));
					else
						state <= idle;
					end if;
				when dato_a=>
					if b = '0' then
						state <= dato_b;
						b_reg<=to_integer(unsigned(dato));
					else
						state <= dato_a;
					end if;
				when dato_b=>
					if a_reg>b_reg then
						state <= a_mayor;
					elsif b_reg>a_reg then
						state<= b_mayor;
					else 
						state<=final;
					end if;
				when a_mayor =>
					r_reg<=a_reg-b_reg;
					state<=r_a;
				when r_a=>
					a_reg<=r_reg;
					if r_reg>b_reg then
						state<=a_mayor;
					elsif r_reg<b_reg then
						state<=b_mayor;
					else
						state<=final;
					end if;
				when b_mayor=>
					r_reg<=b_reg-a_reg;
					state<=r_b;
				when r_b=>
					b_reg<=r_reg;
					if r_reg>a_reg then
						state<=b_mayor;
					elsif r_reg<a_reg then
						state<=a_mayor;
					else
						state<=final;
					end if;
				when final=>
					if a='0' then
						state<=dato_a;
					else
						state<=final;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (all)
	begin
		case state is
			when idle =>
				fin <='0';
				output<=x"00";
			when dato_a =>
				fin <='0';
				output<=std_logic_vector(to_unsigned(a_reg,n));
			when dato_b =>
				fin <='0';
				output<=std_logic_vector(to_unsigned(b_reg,n));
			when a_mayor =>
				fin <='0';
				output<=x"00";
			when b_mayor =>
				fin <='0';
				output<=x"00";
			when r_a =>
				fin <='0';
				output<=x"00";
			when r_b =>
				fin <='0';
				output<=x"00";
			when final =>
				fin<='1';
				output<=std_logic_vector(to_unsigned(a_reg,n));
		end case;
	end process;

end rtl;
