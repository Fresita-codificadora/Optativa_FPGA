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
-- Generated on "06/16/2024 21:12:50"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Proyect4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Proyect4_vhd_vec_tst IS
END Proyect4_vhd_vec_tst;
ARCHITECTURE Proyect4_arch OF Proyect4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL dato : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL fin : STD_LOGIC;
SIGNAL output : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reg_a : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reg_b : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reg_r : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL stado : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Proyect4
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	dato : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	fin : OUT STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reg_a : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reg_b : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reg_r : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	stado : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Proyect4
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	clk => clk,
	dato => dato,
	fin => fin,
	output => output,
	reg_a => reg_a,
	reg_b => reg_b,
	reg_r => reg_r,
	reset => reset,
	stado => stado
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
	WAIT FOR 40000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;

-- a
t_prcs_a: PROCESS
BEGIN
	a <= '1';
	WAIT FOR 40000 ps;
	a <= '0';
	WAIT FOR 20000 ps;
	a <= '1';
WAIT;
END PROCESS t_prcs_a;

-- b
t_prcs_b: PROCESS
BEGIN
	b <= '1';
	WAIT FOR 80000 ps;
	b <= '0';
	WAIT FOR 30000 ps;
	b <= '1';
WAIT;
END PROCESS t_prcs_b;
-- dato[7]
t_prcs_dato_7: PROCESS
BEGIN
	dato(7) <= '0';
WAIT;
END PROCESS t_prcs_dato_7;
-- dato[6]
t_prcs_dato_6: PROCESS
BEGIN
	dato(6) <= '0';
WAIT;
END PROCESS t_prcs_dato_6;
-- dato[5]
t_prcs_dato_5: PROCESS
BEGIN
	dato(5) <= '0';
WAIT;
END PROCESS t_prcs_dato_5;
-- dato[4]
t_prcs_dato_4: PROCESS
BEGIN
	dato(4) <= '0';
	WAIT FOR 80000 ps;
	dato(4) <= '1';
	WAIT FOR 30000 ps;
	dato(4) <= '0';
WAIT;
END PROCESS t_prcs_dato_4;
-- dato[3]
t_prcs_dato_3: PROCESS
BEGIN
	dato(3) <= '0';
	WAIT FOR 40000 ps;
	dato(3) <= '1';
	WAIT FOR 30000 ps;
	dato(3) <= '0';
WAIT;
END PROCESS t_prcs_dato_3;
-- dato[2]
t_prcs_dato_2: PROCESS
BEGIN
	dato(2) <= '0';
	WAIT FOR 40000 ps;
	dato(2) <= '1';
	WAIT FOR 30000 ps;
	dato(2) <= '0';
	WAIT FOR 10000 ps;
	dato(2) <= '1';
	WAIT FOR 30000 ps;
	dato(2) <= '0';
WAIT;
END PROCESS t_prcs_dato_2;
-- dato[1]
t_prcs_dato_1: PROCESS
BEGIN
	dato(1) <= '0';
WAIT;
END PROCESS t_prcs_dato_1;
-- dato[0]
t_prcs_dato_0: PROCESS
BEGIN
	dato(0) <= '0';
WAIT;
END PROCESS t_prcs_dato_0;
END Proyect4_arch;
