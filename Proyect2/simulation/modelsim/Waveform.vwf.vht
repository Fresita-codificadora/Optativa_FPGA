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
-- Generated on "05/16/2024 15:58:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          proyect2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY proyect2_vhd_vec_tst IS
END proyect2_vhd_vec_tst;
ARCHITECTURE proyect2_arch OF proyect2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL col : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL display : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL fila : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT proyect2
	PORT (
	clk : IN STD_LOGIC;
	col : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	display : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	fila : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : proyect2
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	col => col,
	display => display,
	fila => fila,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1000 ps;
	clk <= '1';
	WAIT FOR 1000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
-- col[3]
t_prcs_col_3: PROCESS
BEGIN
	col(3) <= '0';
WAIT;
END PROCESS t_prcs_col_3;
-- col[2]
t_prcs_col_2: PROCESS
BEGIN
	col(2) <= '0';
WAIT;
END PROCESS t_prcs_col_2;
-- col[1]
t_prcs_col_1: PROCESS
BEGIN
	col(1) <= '0';
WAIT;
END PROCESS t_prcs_col_1;
-- col[0]
t_prcs_col_0: PROCESS
BEGIN
	col(0) <= '0';
WAIT;
END PROCESS t_prcs_col_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 40000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END proyect2_arch;
