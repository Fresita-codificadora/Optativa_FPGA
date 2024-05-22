-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"
-- CREATED		"Wed May 22 15:24:51 2024"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Block1 IS 
	PORT
	(
		CLK :  IN  STD_LOGIC;
		Reset :  IN  STD_LOGIC;
		Display :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Fila :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END Block1;

ARCHITECTURE bdf_type OF Block1 IS 

COMPONENT bcd
	PORT(valido : IN STD_LOGIC;
		 numero : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT cont_4
	PORT(clk : IN STD_LOGIC;
		 stp : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 cuenta : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT deco_2_4
	PORT(entrada : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 output : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT elimina_rebote
	PORT(clk : IN STD_LOGIC;
		 tecla : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 valido : OUT STD_LOGIC;
		 stp : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mult_4
	PORT(input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 output : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 



b2v_inst : bcd
PORT MAP(valido => SYNTHESIZED_WIRE_0,
		 numero => SYNTHESIZED_WIRE_6,
		 output => Display);


b2v_inst1 : cont_4
PORT MAP(clk => CLK,
		 stp => SYNTHESIZED_WIRE_2,
		 reset => Reset,
		 cuenta => SYNTHESIZED_WIRE_6);


b2v_inst2 : deco_2_4
PORT MAP(entrada => SYNTHESIZED_WIRE_6,
		 output => Fila);


b2v_inst3 : elimina_rebote
PORT MAP(clk => CLK,
		 tecla => SYNTHESIZED_WIRE_4,
		 reset => Reset,
		 valido => SYNTHESIZED_WIRE_0,
		 stp => SYNTHESIZED_WIRE_2);


b2v_inst4 : mult_4
PORT MAP(input => SYNTHESIZED_WIRE_6,
		 output => SYNTHESIZED_WIRE_4);


END bdf_type;