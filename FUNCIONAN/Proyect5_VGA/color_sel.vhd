library ieee;
use ieee.std_logic_1164.all;

entity color_sel is
	port (
		clk : in std_logic;
		rojo_b,verde_b,azul_b,rojo_c,verde_c,azul_c:in std_logic;
		fondo,cuadr : in std_logic;
		
		rojo_out,verde_out,azul_out: out std_logic_vector (5 downto 0)
	);
end entity;

architecture arch of color_sel is

begin
	process(all)
	begin
		if rising_edge(clk) then
			if fondo='1' then
				if rojo_b='1' then
					rojo_out<="111111";
					verde_out<="000000";
					azul_out<="000000";
				elsif verde_b='1' then
					verde_out<="111111";
					rojo_out<="000000";
					azul_out<="000000";
				elsif azul_b='1' then
					azul_out<="111111";
					rojo_out<="000000";
					verde_out<="000000";
				else
					verde_out<="111111";
					rojo_out<="111111";
					azul_out<="111111";
				end if;
			end if;
			if cuadr='1' then
				if rojo_c='1' then
					rojo_out<="111111";
					verde_out<="000000";
					azul_out<="000000";
				elsif verde_c='1' then
					verde_out<="111111";
					rojo_out<="000000";
					azul_out<="000000";
				elsif azul_c='1' then
					azul_out<="111111";
					rojo_out<="000000";
					verde_out<="000000";
				else
					verde_out<="111111";
					rojo_out<="111111";
					azul_out<="111111";
				end if;
			end if;
		end if;
	end process;
end architecture;