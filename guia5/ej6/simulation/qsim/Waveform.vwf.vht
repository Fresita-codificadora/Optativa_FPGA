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
-- Generated on "05/03/2024 14:44:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ej6
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ej6_vhd_vec_tst IS
END ej6_vhd_vec_tst;
ARCHITECTURE ej6_arch OF ej6_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CE : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL L : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst : STD_LOGIC;
COMPONENT ej6
	PORT (
	CE : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	L : IN STD_LOGIC;
	output : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ej6
	PORT MAP (
-- list connections between master ports and signals
	CE => CE,
	clk => clk,
	input => input,
	L => L,
	output => output,
	rst => rst
	);

-- CE
t_prcs_CE: PROCESS
BEGIN
	CE <= '0';
	WAIT FOR 40000 ps;
	CE <= '1';
	WAIT FOR 50000 ps;
	CE <= '0';
	WAIT FOR 80000 ps;
	CE <= '1';
WAIT;
END PROCESS t_prcs_CE;

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
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	input(3) <= '0';
	WAIT FOR 230000 ps;
	input(3) <= '1';
	WAIT FOR 50000 ps;
	input(3) <= '0';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
	input(2) <= '0';
WAIT;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
	input(1) <= '0';
	WAIT FOR 230000 ps;
	input(1) <= '1';
	WAIT FOR 50000 ps;
	input(1) <= '0';
WAIT;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
	input(0) <= '0';
WAIT;
END PROCESS t_prcs_input_0;

-- L
t_prcs_L: PROCESS
BEGIN
	L <= '0';
	WAIT FOR 230000 ps;
	L <= '1';
	WAIT FOR 40000 ps;
	L <= '0';
WAIT;
END PROCESS t_prcs_L;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 110000 ps;
	rst <= '1';
	WAIT FOR 20000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END ej6_arch;
