library ieee;
use ieee.std_logic_1164.all;

entity decod is
port(
	clk,rojo,verde,azul : in std_logic;
	rojo_out,verde_out,azul_out : out std_logic_vector (5 downto 0)
);
end entity;

architecture arch of decod is
begin
	process(all)
	begin
		if rising_edge(clk) then
			if rojo='1' then
				rojo_out<="111111";
				verde_out<="000000";
				azul_out<="000000";
			elsif verde = '1' then
				verde_out<="111111";
				rojo_out<="000000";
				azul_out<="000000";
			elsif azul='1' then
				azul_out<="111111";
				verde_out<="000000";
				rojo_out<="000000";
			else 
				rojo_out<="000000";
				verde_out<="000000";
				azul_out<="000000";
			end if;
		end if;
	end process;
end architecture;