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
-- Generated on "06/17/2024 15:12:34"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Proyect5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Proyect5_vhd_vec_tst IS
END Proyect5_vhd_vec_tst;
ARCHITECTURE Proyect5_arch OF Proyect5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL azul_in : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL azul_out : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL h_blank_sim : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL rojo_in : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL rojo_out : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL v_blank_sim : STD_LOGIC;
SIGNAL verde_in : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL verde_out : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL VGA_Blank : STD_LOGIC;
SIGNAL VGA_clk : STD_LOGIC;
SIGNAL VGA_HS : STD_LOGIC;
SIGNAL VGA_Synd : STD_LOGIC;
SIGNAL VGA_VS : STD_LOGIC;
COMPONENT Proyect5
	PORT (
	azul_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	azul_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	clk : IN STD_LOGIC;
	h_blank_sim : OUT STD_LOGIC;
	reset : IN STD_LOGIC;
	rojo_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	rojo_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	v_blank_sim : OUT STD_LOGIC;
	verde_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	verde_out : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	VGA_Blank : OUT STD_LOGIC;
	VGA_clk : OUT STD_LOGIC;
	VGA_HS : OUT STD_LOGIC;
	VGA_Synd : OUT STD_LOGIC;
	VGA_VS : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Proyect5
	PORT MAP (
-- list connections between master ports and signals
	azul_in => azul_in,
	azul_out => azul_out,
	clk => clk,
	h_blank_sim => h_blank_sim,
	reset => reset,
	rojo_in => rojo_in,
	rojo_out => rojo_out,
	v_blank_sim => v_blank_sim,
	verde_in => verde_in,
	verde_out => verde_out,
	VGA_Blank => VGA_Blank,
	VGA_clk => VGA_clk,
	VGA_HS => VGA_HS,
	VGA_Synd => VGA_Synd,
	VGA_VS => VGA_VS
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 1 ps;
	clk <= '1';
	WAIT FOR 1 ps;
	IF (NOW >= 10000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END Proyect5_arch;
