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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "06/16/2024 19:38:55"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BCD_binario IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	charge : IN std_logic;
	reset : IN std_logic;
	cent : IN std_logic_vector(3 DOWNTO 0);
	dec : IN std_logic_vector(3 DOWNTO 0);
	uni : IN std_logic_vector(3 DOWNTO 0);
	valid : OUT std_logic;
	binary : OUT std_logic_vector(7 DOWNTO 0)
	);
END BCD_binario;

-- Design Ports Information
-- valid	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary[0]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary[1]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary[4]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary[6]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- binary[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- charge	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[3]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cent[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cent[1]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cent[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cent[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BCD_binario IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_charge : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cent : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dec : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_uni : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valid : std_logic;
SIGNAL ww_binary : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \binary[0]~output_o\ : std_logic;
SIGNAL \binary[1]~output_o\ : std_logic;
SIGNAL \binary[2]~output_o\ : std_logic;
SIGNAL \binary[3]~output_o\ : std_logic;
SIGNAL \binary[4]~output_o\ : std_logic;
SIGNAL \binary[5]~output_o\ : std_logic;
SIGNAL \binary[6]~output_o\ : std_logic;
SIGNAL \binary[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \i[0]~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \i[2]~3_combout\ : std_logic;
SIGNAL \state.rest~q\ : std_logic;
SIGNAL \charge~input_o\ : std_logic;
SIGNAL \state.idle~0_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.shift~q\ : std_logic;
SIGNAL \state.check_sum~feeder_combout\ : std_logic;
SIGNAL \state.check_sum~q\ : std_logic;
SIGNAL \i[2]~0_combout\ : std_logic;
SIGNAL \i[1]~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.fin~0_combout\ : std_logic;
SIGNAL \state.fin~q\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \cent_reg[0]~0_combout\ : std_logic;
SIGNAL \uni_reg[0]~3_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \dec[0]~input_o\ : std_logic;
SIGNAL \dec[1]~input_o\ : std_logic;
SIGNAL \dec[3]~input_o\ : std_logic;
SIGNAL \cent[0]~input_o\ : std_logic;
SIGNAL \cent[2]~input_o\ : std_logic;
SIGNAL \cent[3]~input_o\ : std_logic;
SIGNAL \cent_reg~4_combout\ : std_logic;
SIGNAL \cent_reg~3_combout\ : std_logic;
SIGNAL \cent[1]~input_o\ : std_logic;
SIGNAL \cent_reg~2_combout\ : std_logic;
SIGNAL \cent_reg~1_combout\ : std_logic;
SIGNAL \dec_reg[3]~4_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \dec_reg[3]~5_combout\ : std_logic;
SIGNAL \dec_reg[3]~6_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \dec_reg[0]~3_combout\ : std_logic;
SIGNAL \dec_reg[0]~2_combout\ : std_logic;
SIGNAL \dec_reg[2]~7_combout\ : std_logic;
SIGNAL \dec[2]~input_o\ : std_logic;
SIGNAL \dec_reg[2]~8_combout\ : std_logic;
SIGNAL \dec_reg[2]~9_combout\ : std_logic;
SIGNAL \dec_reg[1]~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \dec_reg[0]~0_combout\ : std_logic;
SIGNAL \dec_reg[0]~_wirecell_combout\ : std_logic;
SIGNAL \uni[3]~input_o\ : std_logic;
SIGNAL \uni_reg[3]~4_combout\ : std_logic;
SIGNAL \uni_reg[3]~5_combout\ : std_logic;
SIGNAL \uni_reg[3]~6_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \uni_reg[0]~2_combout\ : std_logic;
SIGNAL \uni_reg[2]~7_combout\ : std_logic;
SIGNAL \uni[2]~input_o\ : std_logic;
SIGNAL \uni_reg[2]~8_combout\ : std_logic;
SIGNAL \uni_reg[2]~9_combout\ : std_logic;
SIGNAL \uni[1]~input_o\ : std_logic;
SIGNAL \uni_reg[1]~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \uni[0]~input_o\ : std_logic;
SIGNAL \uni_reg[0]~0_combout\ : std_logic;
SIGNAL \uni_reg[0]~_wirecell_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \binary_reg[0]~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL uni_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL dec_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL cent_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL binary_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL i : std_logic_vector(2 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_start <= start;
ww_charge <= charge;
ww_reset <= reset;
ww_cent <= cent;
ww_dec <= dec;
ww_uni <= uni;
valid <= ww_valid;
binary <= ww_binary;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y0_N23
\valid~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.fin~q\,
	devoe => ww_devoe,
	o => \valid~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\binary[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => binary_reg(0),
	devoe => ww_devoe,
	o => \binary[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\binary[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => binary_reg(1),
	devoe => ww_devoe,
	o => \binary[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\binary[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => binary_reg(2),
	devoe => ww_devoe,
	o => \binary[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\binary[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => binary_reg(3),
	devoe => ww_devoe,
	o => \binary[3]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\binary[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => binary_reg(4),
	devoe => ww_devoe,
	o => \binary[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\binary[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => binary_reg(5),
	devoe => ww_devoe,
	o => \binary[5]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\binary[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => binary_reg(6),
	devoe => ww_devoe,
	o => \binary[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\binary[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => binary_reg(7),
	devoe => ww_devoe,
	o => \binary[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X30_Y0_N8
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X24_Y4_N0
\i[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[0]~2_combout\ = (i(0) & (((i(2) & i(1))) # (!\state.check_sum~q\))) # (!i(0) & (((\state.check_sum~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(1),
	datac => i(0),
	datad => \state.check_sum~q\,
	combout => \i[0]~2_combout\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X24_Y4_N1
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[0]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LCCOMB_X23_Y4_N8
\i[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[2]~3_combout\ = (\state.check_sum~q\ & (((!i(2)) # (!i(1))) # (!i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(1),
	datac => \state.check_sum~q\,
	datad => i(2),
	combout => \i[2]~3_combout\);

-- Location: FF_X23_Y4_N9
\state.rest\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[2]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.rest~q\);

-- Location: IOIBUF_X34_Y4_N22
\charge~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_charge,
	o => \charge~input_o\);

-- Location: LCCOMB_X25_Y4_N8
\state.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.idle~0_combout\ = (\state.idle~q\) # ((!\start~input_o\ & \charge~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datac => \state.idle~q\,
	datad => \charge~input_o\,
	combout => \state.idle~0_combout\);

-- Location: FF_X25_Y4_N9
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.idle~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: LCCOMB_X23_Y4_N18
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.rest~q\) # ((!\start~input_o\ & (!\state.idle~q\ & \charge~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \state.rest~q\,
	datac => \state.idle~q\,
	datad => \charge~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X23_Y4_N19
\state.shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.shift~q\);

-- Location: LCCOMB_X25_Y4_N26
\state.check_sum~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.check_sum~feeder_combout\ = \state.shift~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.shift~q\,
	combout => \state.check_sum~feeder_combout\);

-- Location: FF_X25_Y4_N27
\state.check_sum\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.check_sum~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.check_sum~q\);

-- Location: LCCOMB_X24_Y4_N4
\i[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[2]~0_combout\ = (i(2)) # ((i(1) & (\state.check_sum~q\ & i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \state.check_sum~q\,
	datac => i(2),
	datad => i(0),
	combout => \i[2]~0_combout\);

-- Location: FF_X24_Y4_N5
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[2]~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X24_Y4_N10
\i[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[1]~1_combout\ = (i(0) & ((i(1) & ((i(2)) # (!\state.check_sum~q\))) # (!i(1) & ((\state.check_sum~q\))))) # (!i(0) & (((i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(0),
	datac => i(1),
	datad => \state.check_sum~q\,
	combout => \i[1]~1_combout\);

-- Location: FF_X24_Y4_N11
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[1]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X24_Y4_N2
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (i(1) & (i(0) & (i(2) & \state.check_sum~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(0),
	datac => i(2),
	datad => \state.check_sum~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X25_Y4_N24
\state.fin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.fin~0_combout\ = (\state.fin~q\) # (\Selector1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.fin~q\,
	datad => \Selector1~0_combout\,
	combout => \state.fin~0_combout\);

-- Location: FF_X25_Y4_N25
\state.fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.fin~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.fin~q\);

-- Location: LCCOMB_X23_Y4_N20
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (\charge~input_o\) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \charge~input_o\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X23_Y4_N6
\cent_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cent_reg[0]~0_combout\ = (\state.shift~q\) # ((!\charge~input_o\ & \start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \charge~input_o\,
	datac => \start~input_o\,
	datad => \state.shift~q\,
	combout => \cent_reg[0]~0_combout\);

-- Location: LCCOMB_X24_Y4_N8
\uni_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[0]~3_combout\ = (\state.rest~q\ & (((\LessThan1~0_combout\)) # (!\process_0~0_combout\))) # (!\state.rest~q\ & (((\cent_reg[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.rest~q\,
	datab => \process_0~0_combout\,
	datac => \cent_reg[0]~0_combout\,
	datad => \LessThan1~0_combout\,
	combout => \uni_reg[0]~3_combout\);

-- Location: LCCOMB_X24_Y4_N22
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = uni_reg(3) $ (((uni_reg(2)) # ((uni_reg(1) & uni_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(2),
	datab => uni_reg(3),
	datac => uni_reg(1),
	datad => uni_reg(0),
	combout => \Add1~1_combout\);

-- Location: IOIBUF_X18_Y0_N22
\dec[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dec(0),
	o => \dec[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N8
\dec[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dec(1),
	o => \dec[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\dec[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dec(3),
	o => \dec[3]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\cent[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cent(0),
	o => \cent[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\cent[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cent(2),
	o => \cent[2]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\cent[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cent(3),
	o => \cent[3]~input_o\);

-- Location: LCCOMB_X23_Y4_N28
\cent_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cent_reg~4_combout\ = (\start~input_o\ & ((\charge~input_o\ & ((cent_reg(3)))) # (!\charge~input_o\ & (\cent[3]~input_o\)))) # (!\start~input_o\ & (((cent_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cent[3]~input_o\,
	datab => \start~input_o\,
	datac => cent_reg(3),
	datad => \charge~input_o\,
	combout => \cent_reg~4_combout\);

-- Location: FF_X23_Y4_N29
\cent_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cent_reg~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cent_reg(3));

-- Location: LCCOMB_X23_Y4_N30
\cent_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cent_reg~3_combout\ = (\state.shift~q\ & ((cent_reg(3)))) # (!\state.shift~q\ & (\cent[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cent[2]~input_o\,
	datac => \state.shift~q\,
	datad => cent_reg(3),
	combout => \cent_reg~3_combout\);

-- Location: FF_X23_Y4_N31
\cent_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cent_reg~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \cent_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cent_reg(2));

-- Location: IOIBUF_X0_Y11_N22
\cent[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cent(1),
	o => \cent[1]~input_o\);

-- Location: LCCOMB_X23_Y4_N24
\cent_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cent_reg~2_combout\ = (\state.shift~q\ & (cent_reg(2))) # (!\state.shift~q\ & ((\cent[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cent_reg(2),
	datab => \cent[1]~input_o\,
	datac => \state.shift~q\,
	combout => \cent_reg~2_combout\);

-- Location: FF_X23_Y4_N25
\cent_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cent_reg~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \cent_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cent_reg(1));

-- Location: LCCOMB_X23_Y4_N10
\cent_reg~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cent_reg~1_combout\ = (\state.shift~q\ & ((cent_reg(1)))) # (!\state.shift~q\ & (\cent[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cent[0]~input_o\,
	datac => \state.shift~q\,
	datad => cent_reg(1),
	combout => \cent_reg~1_combout\);

-- Location: FF_X23_Y4_N11
\cent_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cent_reg~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \cent_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cent_reg(0));

-- Location: LCCOMB_X22_Y4_N22
\dec_reg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[3]~4_combout\ = (\state.shift~q\ & ((cent_reg(0)))) # (!\state.shift~q\ & (\dec[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec[3]~input_o\,
	datac => cent_reg(0),
	datad => \state.shift~q\,
	combout => \dec_reg[3]~4_combout\);

-- Location: LCCOMB_X22_Y4_N28
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = dec_reg(3) $ (((dec_reg(2)) # ((dec_reg(0) & dec_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(0),
	datab => dec_reg(3),
	datac => dec_reg(1),
	datad => dec_reg(2),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X22_Y4_N30
\dec_reg[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[3]~5_combout\ = (\LessThan2~0_combout\ & ((\state.rest~q\ & ((!\Add2~1_combout\))) # (!\state.rest~q\ & (\dec_reg[3]~4_combout\)))) # (!\LessThan2~0_combout\ & (((\dec_reg[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \state.rest~q\,
	datac => \dec_reg[3]~4_combout\,
	datad => \Add2~1_combout\,
	combout => \dec_reg[3]~5_combout\);

-- Location: LCCOMB_X22_Y4_N6
\dec_reg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[3]~6_combout\ = (\dec_reg[0]~3_combout\ & ((\dec_reg[3]~5_combout\))) # (!\dec_reg[0]~3_combout\ & (dec_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_reg[0]~3_combout\,
	datac => dec_reg(3),
	datad => \dec_reg[3]~5_combout\,
	combout => \dec_reg[3]~6_combout\);

-- Location: FF_X22_Y4_N7
\dec_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_reg[3]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec_reg(3));

-- Location: LCCOMB_X22_Y4_N2
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (dec_reg(3)) # ((dec_reg(2) & ((dec_reg(1)) # (dec_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(3),
	datab => dec_reg(2),
	datac => dec_reg(1),
	datad => dec_reg(0),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y4_N10
\dec_reg[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[0]~3_combout\ = (\state.rest~q\ & (((\LessThan2~0_combout\)) # (!\process_0~0_combout\))) # (!\state.rest~q\ & (((\cent_reg[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \state.rest~q\,
	datac => \LessThan2~0_combout\,
	datad => \cent_reg[0]~0_combout\,
	combout => \dec_reg[0]~3_combout\);

-- Location: LCCOMB_X22_Y4_N24
\dec_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[0]~2_combout\ = (\state.rest~q\ & \LessThan2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.rest~q\,
	datad => \LessThan2~0_combout\,
	combout => \dec_reg[0]~2_combout\);

-- Location: LCCOMB_X22_Y4_N16
\dec_reg[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[2]~7_combout\ = (\dec_reg[0]~2_combout\ & (dec_reg(2) $ (((!dec_reg(1)) # (!dec_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(0),
	datab => dec_reg(2),
	datac => dec_reg(1),
	datad => \dec_reg[0]~2_combout\,
	combout => \dec_reg[2]~7_combout\);

-- Location: IOIBUF_X18_Y0_N15
\dec[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dec(2),
	o => \dec[2]~input_o\);

-- Location: LCCOMB_X22_Y4_N18
\dec_reg[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[2]~8_combout\ = (!\dec_reg[0]~2_combout\ & ((\state.shift~q\ & ((dec_reg(3)))) # (!\state.shift~q\ & (\dec[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec[2]~input_o\,
	datab => \state.shift~q\,
	datac => dec_reg(3),
	datad => \dec_reg[0]~2_combout\,
	combout => \dec_reg[2]~8_combout\);

-- Location: LCCOMB_X22_Y4_N0
\dec_reg[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[2]~9_combout\ = (\dec_reg[0]~3_combout\ & ((\dec_reg[2]~7_combout\) # ((\dec_reg[2]~8_combout\)))) # (!\dec_reg[0]~3_combout\ & (((dec_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec_reg[0]~3_combout\,
	datab => \dec_reg[2]~7_combout\,
	datac => dec_reg(2),
	datad => \dec_reg[2]~8_combout\,
	combout => \dec_reg[2]~9_combout\);

-- Location: FF_X22_Y4_N1
\dec_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_reg[2]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec_reg(2));

-- Location: LCCOMB_X22_Y4_N26
\dec_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[1]~1_combout\ = (\state.shift~q\ & ((dec_reg(2)))) # (!\state.shift~q\ & (\dec[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec[1]~input_o\,
	datab => \state.shift~q\,
	datad => dec_reg(2),
	combout => \dec_reg[1]~1_combout\);

-- Location: LCCOMB_X22_Y4_N20
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = dec_reg(1) $ (dec_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => dec_reg(1),
	datad => dec_reg(0),
	combout => \Add2~0_combout\);

-- Location: FF_X22_Y4_N27
\dec_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_reg[1]~1_combout\,
	asdata => \Add2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \dec_reg[0]~2_combout\,
	ena => \dec_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec_reg(1));

-- Location: LCCOMB_X22_Y4_N12
\dec_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[0]~0_combout\ = (\state.shift~q\ & ((dec_reg(1)))) # (!\state.shift~q\ & (\dec[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dec[0]~input_o\,
	datab => dec_reg(1),
	datad => \state.shift~q\,
	combout => \dec_reg[0]~0_combout\);

-- Location: LCCOMB_X22_Y4_N4
\dec_reg[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[0]~_wirecell_combout\ = !dec_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dec_reg(0),
	combout => \dec_reg[0]~_wirecell_combout\);

-- Location: FF_X22_Y4_N13
\dec_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_reg[0]~0_combout\,
	asdata => \dec_reg[0]~_wirecell_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \dec_reg[0]~2_combout\,
	ena => \dec_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec_reg(0));

-- Location: IOIBUF_X16_Y0_N22
\uni[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uni(3),
	o => \uni[3]~input_o\);

-- Location: LCCOMB_X22_Y4_N8
\uni_reg[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[3]~4_combout\ = (\state.shift~q\ & (dec_reg(0))) # (!\state.shift~q\ & ((\uni[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(0),
	datac => \uni[3]~input_o\,
	datad => \state.shift~q\,
	combout => \uni_reg[3]~4_combout\);

-- Location: LCCOMB_X24_Y4_N28
\uni_reg[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[3]~5_combout\ = (\state.rest~q\ & ((\LessThan1~0_combout\ & (!\Add1~1_combout\)) # (!\LessThan1~0_combout\ & ((\uni_reg[3]~4_combout\))))) # (!\state.rest~q\ & (((\uni_reg[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.rest~q\,
	datab => \LessThan1~0_combout\,
	datac => \Add1~1_combout\,
	datad => \uni_reg[3]~4_combout\,
	combout => \uni_reg[3]~5_combout\);

-- Location: LCCOMB_X24_Y4_N16
\uni_reg[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[3]~6_combout\ = (\uni_reg[0]~3_combout\ & ((\uni_reg[3]~5_combout\))) # (!\uni_reg[0]~3_combout\ & (uni_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uni_reg[0]~3_combout\,
	datac => uni_reg(3),
	datad => \uni_reg[3]~5_combout\,
	combout => \uni_reg[3]~6_combout\);

-- Location: FF_X24_Y4_N17
\uni_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_reg[3]~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_reg(3));

-- Location: LCCOMB_X24_Y4_N24
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (uni_reg(3)) # ((uni_reg(2) & ((uni_reg(0)) # (uni_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(2),
	datab => uni_reg(0),
	datac => uni_reg(1),
	datad => uni_reg(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y4_N18
\uni_reg[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[0]~2_combout\ = (\state.rest~q\ & \LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.rest~q\,
	datad => \LessThan1~0_combout\,
	combout => \uni_reg[0]~2_combout\);

-- Location: LCCOMB_X24_Y4_N6
\uni_reg[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[2]~7_combout\ = (\uni_reg[0]~2_combout\ & (uni_reg(2) $ (((!uni_reg(1)) # (!uni_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(2),
	datab => uni_reg(0),
	datac => uni_reg(1),
	datad => \uni_reg[0]~2_combout\,
	combout => \uni_reg[2]~7_combout\);

-- Location: IOIBUF_X28_Y0_N1
\uni[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uni(2),
	o => \uni[2]~input_o\);

-- Location: LCCOMB_X24_Y4_N12
\uni_reg[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[2]~8_combout\ = (!\uni_reg[0]~2_combout\ & ((\state.shift~q\ & ((uni_reg(3)))) # (!\state.shift~q\ & (\uni[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni[2]~input_o\,
	datab => uni_reg(3),
	datac => \state.shift~q\,
	datad => \uni_reg[0]~2_combout\,
	combout => \uni_reg[2]~8_combout\);

-- Location: LCCOMB_X24_Y4_N30
\uni_reg[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[2]~9_combout\ = (\uni_reg[0]~3_combout\ & ((\uni_reg[2]~7_combout\) # ((\uni_reg[2]~8_combout\)))) # (!\uni_reg[0]~3_combout\ & (((uni_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uni_reg[2]~7_combout\,
	datab => \uni_reg[0]~3_combout\,
	datac => uni_reg(2),
	datad => \uni_reg[2]~8_combout\,
	combout => \uni_reg[2]~9_combout\);

-- Location: FF_X24_Y4_N31
\uni_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_reg[2]~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_reg(2));

-- Location: IOIBUF_X13_Y0_N1
\uni[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uni(1),
	o => \uni[1]~input_o\);

-- Location: LCCOMB_X24_Y4_N14
\uni_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[1]~1_combout\ = (\state.shift~q\ & (uni_reg(2))) # (!\state.shift~q\ & ((\uni[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(2),
	datab => \state.shift~q\,
	datad => \uni[1]~input_o\,
	combout => \uni_reg[1]~1_combout\);

-- Location: LCCOMB_X25_Y4_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = uni_reg(1) $ (uni_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(1),
	datad => uni_reg(0),
	combout => \Add1~0_combout\);

-- Location: FF_X24_Y4_N15
\uni_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_reg[1]~1_combout\,
	asdata => \Add1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \uni_reg[0]~2_combout\,
	ena => \uni_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_reg(1));

-- Location: IOIBUF_X16_Y0_N1
\uni[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uni(0),
	o => \uni[0]~input_o\);

-- Location: LCCOMB_X24_Y4_N20
\uni_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[0]~0_combout\ = (\state.shift~q\ & (uni_reg(1))) # (!\state.shift~q\ & ((\uni[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shift~q\,
	datab => uni_reg(1),
	datad => \uni[0]~input_o\,
	combout => \uni_reg[0]~0_combout\);

-- Location: LCCOMB_X24_Y4_N26
\uni_reg[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[0]~_wirecell_combout\ = !uni_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => uni_reg(0),
	combout => \uni_reg[0]~_wirecell_combout\);

-- Location: FF_X24_Y4_N21
\uni_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_reg[0]~0_combout\,
	asdata => \uni_reg[0]~_wirecell_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => \uni_reg[0]~2_combout\,
	ena => \uni_reg[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_reg(0));

-- Location: LCCOMB_X25_Y4_N16
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (uni_reg(0) & \state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => uni_reg(0),
	datad => \state.shift~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X25_Y4_N18
\binary_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \binary_reg[0]~0_combout\ = (\state.idle~q\ & (((\state.shift~q\)))) # (!\state.idle~q\ & (!\start~input_o\ & (\charge~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~input_o\,
	datab => \charge~input_o\,
	datac => \state.idle~q\,
	datad => \state.shift~q\,
	combout => \binary_reg[0]~0_combout\);

-- Location: FF_X25_Y4_N17
\binary_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \binary_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => binary_reg(7));

-- Location: LCCOMB_X25_Y4_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (binary_reg(7) & \state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => binary_reg(7),
	datad => \state.shift~q\,
	combout => \Selector3~0_combout\);

-- Location: FF_X25_Y4_N7
\binary_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \binary_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => binary_reg(6));

-- Location: LCCOMB_X25_Y4_N4
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (binary_reg(6) & \state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => binary_reg(6),
	datad => \state.shift~q\,
	combout => \Selector4~0_combout\);

-- Location: FF_X25_Y4_N5
\binary_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \binary_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => binary_reg(5));

-- Location: LCCOMB_X25_Y4_N2
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (binary_reg(5) & \state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => binary_reg(5),
	datad => \state.shift~q\,
	combout => \Selector5~0_combout\);

-- Location: FF_X25_Y4_N3
\binary_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \binary_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => binary_reg(4));

-- Location: LCCOMB_X25_Y4_N20
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (binary_reg(4) & \state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => binary_reg(4),
	datad => \state.shift~q\,
	combout => \Selector6~0_combout\);

-- Location: FF_X25_Y4_N21
\binary_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \binary_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => binary_reg(3));

-- Location: LCCOMB_X25_Y4_N22
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (binary_reg(3) & \state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => binary_reg(3),
	datad => \state.shift~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X25_Y4_N23
\binary_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \binary_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => binary_reg(2));

-- Location: LCCOMB_X25_Y4_N28
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (binary_reg(2) & \state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => binary_reg(2),
	datad => \state.shift~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X25_Y4_N29
\binary_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \binary_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => binary_reg(1));

-- Location: LCCOMB_X25_Y4_N10
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (binary_reg(1) & \state.shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => binary_reg(1),
	datad => \state.shift~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X25_Y4_N11
\binary_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \binary_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => binary_reg(0));

ww_valid <= \valid~output_o\;

ww_binary(0) <= \binary[0]~output_o\;

ww_binary(1) <= \binary[1]~output_o\;

ww_binary(2) <= \binary[2]~output_o\;

ww_binary(3) <= \binary[3]~output_o\;

ww_binary(4) <= \binary[4]~output_o\;

ww_binary(5) <= \binary[5]~output_o\;

ww_binary(6) <= \binary[6]~output_o\;

ww_binary(7) <= \binary[7]~output_o\;
END structure;


