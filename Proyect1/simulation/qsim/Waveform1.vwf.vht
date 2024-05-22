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
-- Generated on "05/17/2024 15:30:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          proyect1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY proyect1_vhd_vec_tst IS
END proyect1_vhd_vec_tst;
ARCHITECTURE proyect1_arch OF proyect1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL dec : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL decim : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL uni : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT proyect1
	PORT (
	clk : IN STD_LOGIC;
	dec : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	decim : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	uni : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : proyect1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	dec => dec,
	decim => decim,
	reset => reset,
	uni => uni
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 2500 ps;
	clk <= '1';
	WAIT FOR 2500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 20000 ps;
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END proyect1_arch;
