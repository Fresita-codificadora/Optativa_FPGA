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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/21/2024 22:11:35"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          decod
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY decod_vhd_vec_tst IS
END decod_vhd_vec_tst;
ARCHITECTURE decod_arch OF decod_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL azul : STD_LOGIC;
SIGNAL azul_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL rojo : STD_LOGIC;
SIGNAL rojo_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL verde : STD_LOGIC;
SIGNAL verde_out : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT decod
	PORT (
	azul : IN STD_LOGIC;
	azul_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	clk : IN STD_LOGIC;
	rojo : IN STD_LOGIC;
	rojo_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	verde : IN STD_LOGIC;
	verde_out : OUT STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : decod
	PORT MAP (
-- list connections between master ports and signals
	azul => azul,
	azul_out => azul_out,
	clk => clk,
	rojo => rojo,
	rojo_out => rojo_out,
	verde => verde,
	verde_out => verde_out
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 5000 ps;
	clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- azul
t_prcs_azul: PROCESS
BEGIN
	azul <= '0';
	WAIT FOR 10000 ps;
	azul <= '1';
	WAIT FOR 100000 ps;
	azul <= '0';
WAIT;
END PROCESS t_prcs_azul;

-- rojo
t_prcs_rojo: PROCESS
BEGIN
	rojo <= '0';
	WAIT FOR 70000 ps;
	rojo <= '1';
	WAIT FOR 100000 ps;
	rojo <= '0';
WAIT;
END PROCESS t_prcs_rojo;

-- verde
t_prcs_verde: PROCESS
BEGIN
	verde <= '0';
	WAIT FOR 70000 ps;
	verde <= '1';
	WAIT FOR 100000 ps;
	verde <= '0';
	WAIT FOR 40000 ps;
	verde <= '1';
	WAIT FOR 70000 ps;
	verde <= '0';
WAIT;
END PROCESS t_prcs_verde;
END decod_arch;
