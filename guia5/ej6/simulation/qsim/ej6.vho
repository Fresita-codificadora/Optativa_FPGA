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

-- DATE "05/03/2024 14:44:12"

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

ENTITY 	ej6 IS
    PORT (
	output : BUFFER std_logic_vector(3 DOWNTO 0);
	input : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	rst : IN std_logic;
	CE : IN std_logic;
	L : IN std_logic
	);
END ej6;

-- Design Ports Information
-- output[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CE	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- L	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ej6 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_CE : std_logic;
SIGNAL ww_L : std_logic;
SIGNAL \cuenta[3]~27clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \L~input_o\ : std_logic;
SIGNAL \cuenta[3]~27_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \CE~input_o\ : std_logic;
SIGNAL \cuenta[3]~27clkctrl_outclk\ : std_logic;
SIGNAL \cuenta[0]~1_combout\ : std_logic;
SIGNAL \cuenta[0]~4_combout\ : std_logic;
SIGNAL \cuenta[0]~0_combout\ : std_logic;
SIGNAL \cuenta[0]~_emulated_q\ : std_logic;
SIGNAL \cuenta[0]~3_combout\ : std_logic;
SIGNAL \cuenta[0]~2_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \cuenta[1]~6_combout\ : std_logic;
SIGNAL \cuenta[1]~9_combout\ : std_logic;
SIGNAL \cuenta[1]~_emulated_q\ : std_logic;
SIGNAL \cuenta[1]~8_combout\ : std_logic;
SIGNAL \cuenta[1]~7_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \cuenta[2]~11_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cuenta[2]~14_combout\ : std_logic;
SIGNAL \cuenta[2]~_emulated_q\ : std_logic;
SIGNAL \cuenta[2]~13_combout\ : std_logic;
SIGNAL \cuenta[2]~12_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \cuenta[3]~28_combout\ : std_logic;
SIGNAL \cuenta[3]~16_combout\ : std_logic;
SIGNAL \cuenta[3]~19_combout\ : std_logic;
SIGNAL \cuenta[3]~_emulated_q\ : std_logic;
SIGNAL \cuenta[3]~18_combout\ : std_logic;
SIGNAL \cuenta[3]~17_combout\ : std_logic;
SIGNAL \ALT_INV_cuenta[0]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

output <= ww_output;
ww_input <= input;
ww_clk <= clk;
ww_rst <= rst;
ww_CE <= CE;
ww_L <= L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cuenta[3]~27clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cuenta[3]~27_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_cuenta[0]~0_combout\ <= NOT \cuenta[0]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuenta[0]~2_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuenta[1]~7_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuenta[2]~12_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cuenta[3]~17_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N15
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\L~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_L,
	o => \L~input_o\);

-- Location: LCCOMB_X1_Y7_N14
\cuenta[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[3]~27_combout\ = (!\rst~input_o\ & \L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~input_o\,
	datad => \L~input_o\,
	combout => \cuenta[3]~27_combout\);

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

-- Location: IOIBUF_X3_Y0_N1
\CE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CE,
	o => \CE~input_o\);

-- Location: CLKCTRL_G1
\cuenta[3]~27clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cuenta[3]~27clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cuenta[3]~27clkctrl_outclk\);

-- Location: LCCOMB_X2_Y7_N20
\cuenta[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[0]~1_combout\ = (!\rst~input_o\ & ((GLOBAL(\cuenta[3]~27clkctrl_outclk\) & (\input[0]~input_o\)) # (!GLOBAL(\cuenta[3]~27clkctrl_outclk\) & ((\cuenta[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \rst~input_o\,
	datac => \cuenta[0]~1_combout\,
	datad => \cuenta[3]~27clkctrl_outclk\,
	combout => \cuenta[0]~1_combout\);

-- Location: LCCOMB_X2_Y7_N4
\cuenta[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[0]~4_combout\ = \CE~input_o\ $ (\cuenta[0]~1_combout\ $ (\cuenta[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CE~input_o\,
	datac => \cuenta[0]~1_combout\,
	datad => \cuenta[0]~2_combout\,
	combout => \cuenta[0]~4_combout\);

-- Location: LCCOMB_X1_Y7_N30
\cuenta[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[0]~0_combout\ = (\cuenta[3]~27_combout\) # (\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuenta[3]~27_combout\,
	datac => \rst~input_o\,
	combout => \cuenta[0]~0_combout\);

-- Location: FF_X2_Y7_N5
\cuenta[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[0]~4_combout\,
	clrn => \ALT_INV_cuenta[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta[0]~_emulated_q\);

-- Location: LCCOMB_X2_Y7_N26
\cuenta[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[0]~3_combout\ = \cuenta[0]~_emulated_q\ $ (\cuenta[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuenta[0]~_emulated_q\,
	datad => \cuenta[0]~1_combout\,
	combout => \cuenta[0]~3_combout\);

-- Location: LCCOMB_X1_Y7_N16
\cuenta[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[0]~2_combout\ = (!\rst~input_o\ & ((\cuenta[3]~27_combout\ & (\input[0]~input_o\)) # (!\cuenta[3]~27_combout\ & ((\cuenta[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[0]~input_o\,
	datab => \rst~input_o\,
	datac => \cuenta[3]~27_combout\,
	datad => \cuenta[0]~3_combout\,
	combout => \cuenta[0]~2_combout\);

-- Location: IOIBUF_X0_Y6_N22
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: LCCOMB_X1_Y7_N0
\cuenta[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[1]~6_combout\ = (!\rst~input_o\ & ((GLOBAL(\cuenta[3]~27clkctrl_outclk\) & (\input[1]~input_o\)) # (!GLOBAL(\cuenta[3]~27clkctrl_outclk\) & ((\cuenta[1]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[1]~input_o\,
	datab => \rst~input_o\,
	datac => \cuenta[3]~27clkctrl_outclk\,
	datad => \cuenta[1]~6_combout\,
	combout => \cuenta[1]~6_combout\);

-- Location: LCCOMB_X1_Y7_N4
\cuenta[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[1]~9_combout\ = \cuenta[1]~7_combout\ $ (\cuenta[1]~6_combout\ $ (((\cuenta[0]~2_combout\ & \CE~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuenta[0]~2_combout\,
	datab => \CE~input_o\,
	datac => \cuenta[1]~7_combout\,
	datad => \cuenta[1]~6_combout\,
	combout => \cuenta[1]~9_combout\);

-- Location: FF_X1_Y7_N5
\cuenta[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[1]~9_combout\,
	clrn => \ALT_INV_cuenta[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta[1]~_emulated_q\);

-- Location: LCCOMB_X1_Y7_N12
\cuenta[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[1]~8_combout\ = \cuenta[1]~_emulated_q\ $ (\cuenta[1]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuenta[1]~_emulated_q\,
	datad => \cuenta[1]~6_combout\,
	combout => \cuenta[1]~8_combout\);

-- Location: LCCOMB_X1_Y7_N2
\cuenta[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[1]~7_combout\ = (!\rst~input_o\ & ((\cuenta[3]~27_combout\ & (\input[1]~input_o\)) # (!\cuenta[3]~27_combout\ & ((\cuenta[1]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuenta[3]~27_combout\,
	datab => \input[1]~input_o\,
	datac => \rst~input_o\,
	datad => \cuenta[1]~8_combout\,
	combout => \cuenta[1]~7_combout\);

-- Location: IOIBUF_X1_Y0_N15
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X2_Y7_N30
\cuenta[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[2]~11_combout\ = (!\rst~input_o\ & ((GLOBAL(\cuenta[3]~27clkctrl_outclk\) & (\input[2]~input_o\)) # (!GLOBAL(\cuenta[3]~27clkctrl_outclk\) & ((\cuenta[2]~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \rst~input_o\,
	datac => \cuenta[2]~11_combout\,
	datad => \cuenta[3]~27clkctrl_outclk\,
	combout => \cuenta[2]~11_combout\);

-- Location: LCCOMB_X1_Y7_N20
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\cuenta[1]~7_combout\ & \cuenta[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cuenta[1]~7_combout\,
	datac => \cuenta[0]~2_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y7_N22
\cuenta[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[2]~14_combout\ = \cuenta[2]~11_combout\ $ (\cuenta[2]~12_combout\ $ (((\Add0~0_combout\ & \CE~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuenta[2]~11_combout\,
	datab => \Add0~0_combout\,
	datac => \cuenta[2]~12_combout\,
	datad => \CE~input_o\,
	combout => \cuenta[2]~14_combout\);

-- Location: FF_X1_Y7_N23
\cuenta[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[2]~14_combout\,
	clrn => \ALT_INV_cuenta[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta[2]~_emulated_q\);

-- Location: LCCOMB_X1_Y7_N10
\cuenta[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[2]~13_combout\ = \cuenta[2]~_emulated_q\ $ (\cuenta[2]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuenta[2]~_emulated_q\,
	datac => \cuenta[2]~11_combout\,
	combout => \cuenta[2]~13_combout\);

-- Location: LCCOMB_X1_Y7_N8
\cuenta[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[2]~12_combout\ = (!\rst~input_o\ & ((\cuenta[3]~27_combout\ & (\input[2]~input_o\)) # (!\cuenta[3]~27_combout\ & ((\cuenta[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[2]~input_o\,
	datab => \cuenta[3]~27_combout\,
	datac => \rst~input_o\,
	datad => \cuenta[2]~13_combout\,
	combout => \cuenta[2]~12_combout\);

-- Location: IOIBUF_X0_Y6_N15
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: LCCOMB_X1_Y7_N28
\cuenta[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[3]~28_combout\ = \cuenta[3]~17_combout\ $ (((\Add0~0_combout\ & (\cuenta[2]~12_combout\ & \CE~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuenta[3]~17_combout\,
	datab => \Add0~0_combout\,
	datac => \cuenta[2]~12_combout\,
	datad => \CE~input_o\,
	combout => \cuenta[3]~28_combout\);

-- Location: LCCOMB_X1_Y7_N24
\cuenta[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[3]~16_combout\ = (!\rst~input_o\ & ((GLOBAL(\cuenta[3]~27clkctrl_outclk\) & (\input[3]~input_o\)) # (!GLOBAL(\cuenta[3]~27clkctrl_outclk\) & ((\cuenta[3]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \rst~input_o\,
	datac => \cuenta[3]~27clkctrl_outclk\,
	datad => \cuenta[3]~16_combout\,
	combout => \cuenta[3]~16_combout\);

-- Location: LCCOMB_X1_Y7_N26
\cuenta[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[3]~19_combout\ = \cuenta[3]~28_combout\ $ (\cuenta[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuenta[3]~28_combout\,
	datad => \cuenta[3]~16_combout\,
	combout => \cuenta[3]~19_combout\);

-- Location: FF_X1_Y7_N27
\cuenta[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta[3]~19_combout\,
	clrn => \ALT_INV_cuenta[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cuenta[3]~_emulated_q\);

-- Location: LCCOMB_X1_Y7_N18
\cuenta[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[3]~18_combout\ = \cuenta[3]~_emulated_q\ $ (\cuenta[3]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cuenta[3]~_emulated_q\,
	datad => \cuenta[3]~16_combout\,
	combout => \cuenta[3]~18_combout\);

-- Location: LCCOMB_X1_Y7_N6
\cuenta[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta[3]~17_combout\ = (!\rst~input_o\ & ((\cuenta[3]~27_combout\ & (\input[3]~input_o\)) # (!\cuenta[3]~27_combout\ & ((\cuenta[3]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cuenta[3]~27_combout\,
	datab => \input[3]~input_o\,
	datac => \rst~input_o\,
	datad => \cuenta[3]~18_combout\,
	combout => \cuenta[3]~17_combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;
END structure;


