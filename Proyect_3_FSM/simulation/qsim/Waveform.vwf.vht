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
-- Generated on "06/16/2024 13:24:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Proyect_3_FSM
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Proyect_3_FSM_vhd_vec_tst IS
END Proyect_3_FSM_vhd_vec_tst;
ARCHITECTURE Proyect_3_FSM_arch OF Proyect_3_FSM_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cent : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL charge : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dec : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL entrada : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL uni : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL valid : STD_LOGIC;
COMPONENT Proyect_3_FSM
	PORT (
	cent : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	charge : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dec : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	entrada : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	uni : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	valid : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Proyect_3_FSM
	PORT MAP (
-- list connections between master ports and signals
	cent => cent,
	charge => charge,
	clk => clk,
	dec => dec,
	entrada => entrada,
	reset => reset,
	start => start,
	uni => uni,
	valid => valid
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

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
	WAIT FOR 30000 ps;
	reset <= '1';
	WAIT FOR 260000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 240000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- charge
t_prcs_charge: PROCESS
BEGIN
	charge <= '1';
	WAIT FOR 10000 ps;
	charge <= '0';
	WAIT FOR 40000 ps;
	charge <= '1';
	WAIT FOR 260000 ps;
	charge <= '0';
	WAIT FOR 20000 ps;
	charge <= '1';
	WAIT FOR 240000 ps;
	charge <= '0';
	WAIT FOR 10000 ps;
	charge <= '1';
WAIT;
END PROCESS t_prcs_charge;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '1';
	WAIT FOR 50000 ps;
	start <= '0';
	WAIT FOR 20000 ps;
	start <= '1';
	WAIT FOR 250000 ps;
	start <= '0';
	WAIT FOR 20000 ps;
	start <= '1';
	WAIT FOR 230000 ps;
	start <= '0';
	WAIT FOR 20000 ps;
	start <= '1';
WAIT;
END PROCESS t_prcs_start;
-- entrada[7]
t_prcs_entrada_7: PROCESS
BEGIN
	entrada(7) <= '1';
	WAIT FOR 550000 ps;
	entrada(7) <= '0';
	WAIT FOR 70000 ps;
	entrada(7) <= '1';
WAIT;
END PROCESS t_prcs_entrada_7;
-- entrada[6]
t_prcs_entrada_6: PROCESS
BEGIN
	entrada(6) <= '1';
	WAIT FOR 550000 ps;
	entrada(6) <= '0';
	WAIT FOR 70000 ps;
	entrada(6) <= '1';
WAIT;
END PROCESS t_prcs_entrada_6;
-- entrada[5]
t_prcs_entrada_5: PROCESS
BEGIN
	entrada(5) <= '0';
	WAIT FOR 290000 ps;
	entrada(5) <= '1';
	WAIT FOR 260000 ps;
	entrada(5) <= '0';
WAIT;
END PROCESS t_prcs_entrada_5;
-- entrada[4]
t_prcs_entrada_4: PROCESS
BEGIN
	entrada(4) <= '1';
	WAIT FOR 550000 ps;
	entrada(4) <= '0';
	WAIT FOR 70000 ps;
	entrada(4) <= '1';
WAIT;
END PROCESS t_prcs_entrada_4;
-- entrada[3]
t_prcs_entrada_3: PROCESS
BEGIN
	entrada(3) <= '1';
	WAIT FOR 550000 ps;
	entrada(3) <= '0';
	WAIT FOR 70000 ps;
	entrada(3) <= '1';
WAIT;
END PROCESS t_prcs_entrada_3;
-- entrada[2]
t_prcs_entrada_2: PROCESS
BEGIN
	entrada(2) <= '0';
	WAIT FOR 290000 ps;
	entrada(2) <= '1';
	WAIT FOR 330000 ps;
	entrada(2) <= '0';
WAIT;
END PROCESS t_prcs_entrada_2;
-- entrada[1]
t_prcs_entrada_1: PROCESS
BEGIN
	entrada(1) <= '1';
	WAIT FOR 550000 ps;
	entrada(1) <= '0';
	WAIT FOR 70000 ps;
	entrada(1) <= '1';
WAIT;
END PROCESS t_prcs_entrada_1;
-- entrada[0]
t_prcs_entrada_0: PROCESS
BEGIN
	entrada(0) <= '1';
	WAIT FOR 550000 ps;
	entrada(0) <= '0';
	WAIT FOR 70000 ps;
	entrada(0) <= '1';
WAIT;
END PROCESS t_prcs_entrada_0;
END Proyect_3_FSM_arch;
