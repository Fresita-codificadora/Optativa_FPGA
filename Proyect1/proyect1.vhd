library ieee; 

	-- STD_LOGIC and STD_LOGIC_VECTOR types, and relevant functions
	use ieee.std_logic_1164.all;

	-- SIGNED and UNSIGNED types, and relevant functions
	use ieee.numeric_std.all;
	
	
--funcionando	
entity proyect1 is

	port
	(
		-- Input ports
		clk	: in  std_LOGIC := '0';
		reset	: in  std_LOGIC := '0';

		-- Output ports
		dec	: out std_LOGIC_VECTOR (7 downto 0);
		uni	: out std_LOGIC_VECTOR (7 downto 0);
		decim : out std_LOGIC_VECTOR (7 downto 0)
	);
end proyect1;


architecture arch of proyect1 is
	signal cont_dec : integer range 0 to 9 := 0;
	signal cont_uni : integer range 0 to 9 := 0;
	signal cont_decim : integer range 0 to 9 := 0;
	signal cuenta : integer range 0 to (2**29-1) :=0;
--	signal cuenta : integer range 0 to 16;
	signal clk_out: std_LOGIC;
	procedure BCD (signal cont: in integer;signal output : out std_LOGIC_VECTOR(7 downto 0)) is --procedimiento encargado de convertir integer a BCD}
																															-- tiene como entrada el integer y escribe sobre output una palabra de 8bits para el display 7 seg
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
	
	-- Declarations (optional)

begin
	process(clk) -- divisor de frecuencia de clk, de un clk de 50 MHZ baja a aprox 0.1 Hz
	begin
 		if (clk'event and clk='1') then
			cuenta <= cuenta +1;
			if cuenta = (2**29-1) then 
				cuenta<=0;
				clk_out <= not clk_out;
			end if;
		end if;
	end process;
	
	process (clk_out,reset)
	begin
		if reset = '1' then -- condicion de reset resetea todas las cuentas a 0
			cont_decim<=0;
			cont_uni<=0;
			cont_dec<=0;
		elsif (clk_out'event and clk_out='1') then
			cont_decim<=cont_decim+1;
			BCD(cont_decim,decim);
			BCD(cont_uni,uni);
			BCD(cont_dec,dec);  -- escribimos unidades decenas centenas en cada ciclo de clk
			if cont_decim=9 then  -- logica de incrementar cada uno 
				cont_uni<=cont_uni+1;    
				cont_decim<=0;
				if cont_uni=9 then
					cont_dec<=cont_dec+1;
					cont_uni<=0;
					if cont_dec=9 then
						cont_dec<=0;
					end if;
				end if;
			end if ;
		end if;
	end process;

end arch;
