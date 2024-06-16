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
-- Generated on "06/16/2024 19:38:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BCD_binario
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BCD_binario_vhd_vec_tst IS
END BCD_binario_vhd_vec_tst;
ARCHITECTURE BCD_binario_arch OF BCD_binario_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL binary : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL cent : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL charge : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dec : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL uni : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL valid : STD_LOGIC;
COMPONENT BCD_binario
	PORT (
	binary : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	cent : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	charge : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dec : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	start : IN STD_LOGIC;
	uni : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	valid : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BCD_binario
	PORT MAP (
-- list connections between master ports and signals
	binary => binary,
	cent => cent,
	charge => charge,
	clk => clk,
	dec => dec,
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
	reset <= '1';
	WAIT FOR 10000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
	WAIT FOR 260000 ps;
	reset <= '0';
	WAIT FOR 20000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- charge
t_prcs_charge: PROCESS
BEGIN
	charge <= '1';
	WAIT FOR 30000 ps;
	charge <= '0';
	WAIT FOR 20000 ps;
	charge <= '1';
	WAIT FOR 250000 ps;
	charge <= '0';
	WAIT FOR 30000 ps;
	charge <= '1';
WAIT;
END PROCESS t_prcs_charge;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '1';
	WAIT FOR 40000 ps;
	start <= '0';
	WAIT FOR 20000 ps;
	start <= '1';
	WAIT FOR 270000 ps;
	start <= '0';
	WAIT FOR 30000 ps;
	start <= '1';
WAIT;
END PROCESS t_prcs_start;
-- cent[3]
t_prcs_cent_3: PROCESS
BEGIN
	cent(3) <= '0';
WAIT;
END PROCESS t_prcs_cent_3;
-- cent[2]
t_prcs_cent_2: PROCESS
BEGIN
	cent(2) <= '0';
WAIT;
END PROCESS t_prcs_cent_2;
-- cent[1]
t_prcs_cent_1: PROCESS
BEGIN
	cent(1) <= '0';
	WAIT FOR 290000 ps;
	cent(1) <= '1';
	WAIT FOR 190000 ps;
	cent(1) <= '0';
WAIT;
END PROCESS t_prcs_cent_1;
-- cent[0]
t_prcs_cent_0: PROCESS
BEGIN
	cent(0) <= '1';
	WAIT FOR 290000 ps;
	cent(0) <= '0';
	WAIT FOR 190000 ps;
	cent(0) <= '1';
WAIT;
END PROCESS t_prcs_cent_0;
-- dec[3]
t_prcs_dec_3: PROCESS
BEGIN
	dec(3) <= '0';
WAIT;
END PROCESS t_prcs_dec_3;
-- dec[2]
t_prcs_dec_2: PROCESS
BEGIN
	dec(2) <= '0';
	WAIT FOR 290000 ps;
	dec(2) <= '1';
	WAIT FOR 190000 ps;
	dec(2) <= '0';
WAIT;
END PROCESS t_prcs_dec_2;
-- dec[1]
t_prcs_dec_1: PROCESS
BEGIN
	dec(1) <= '0';
WAIT;
END PROCESS t_prcs_dec_1;
-- dec[0]
t_prcs_dec_0: PROCESS
BEGIN
	dec(0) <= '1';
WAIT;
END PROCESS t_prcs_dec_0;
-- uni[3]
t_prcs_uni_3: PROCESS
BEGIN
	uni(3) <= '0';
WAIT;
END PROCESS t_prcs_uni_3;
-- uni[2]
t_prcs_uni_2: PROCESS
BEGIN
	uni(2) <= '1';
WAIT;
END PROCESS t_prcs_uni_2;
-- uni[1]
t_prcs_uni_1: PROCESS
BEGIN
	uni(1) <= '1';
	WAIT FOR 290000 ps;
	uni(1) <= '0';
	WAIT FOR 190000 ps;
	uni(1) <= '1';
WAIT;
END PROCESS t_prcs_uni_1;
-- uni[0]
t_prcs_uni_0: PROCESS
BEGIN
	uni(0) <= '1';
WAIT;
END PROCESS t_prcs_uni_0;
END BCD_binario_arch;
