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
end function;}