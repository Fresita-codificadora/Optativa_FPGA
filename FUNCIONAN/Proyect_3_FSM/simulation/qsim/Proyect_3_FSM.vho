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

-- DATE "06/16/2024 13:24:15"

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

ENTITY 	Proyect_3_FSM IS
    PORT (
	clk : IN std_logic;
	start : IN std_logic;
	charge : IN std_logic;
	entrada : IN std_logic_vector(7 DOWNTO 0);
	reset : IN std_logic;
	valid : OUT std_logic;
	uni : OUT std_logic_vector(3 DOWNTO 0);
	dec : OUT std_logic_vector(3 DOWNTO 0);
	cent : OUT std_logic_vector(3 DOWNTO 0)
	);
END Proyect_3_FSM;

-- Design Ports Information
-- valid	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[1]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[3]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[1]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[2]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[3]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cent[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cent[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cent[2]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cent[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- charge	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[6]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[5]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[3]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada[0]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Proyect_3_FSM IS
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
SIGNAL ww_entrada : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_valid : std_logic;
SIGNAL ww_uni : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_dec : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cent : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \valid~output_o\ : std_logic;
SIGNAL \uni[0]~output_o\ : std_logic;
SIGNAL \uni[1]~output_o\ : std_logic;
SIGNAL \uni[2]~output_o\ : std_logic;
SIGNAL \uni[3]~output_o\ : std_logic;
SIGNAL \dec[0]~output_o\ : std_logic;
SIGNAL \dec[1]~output_o\ : std_logic;
SIGNAL \dec[2]~output_o\ : std_logic;
SIGNAL \dec[3]~output_o\ : std_logic;
SIGNAL \cent[0]~output_o\ : std_logic;
SIGNAL \cent[1]~output_o\ : std_logic;
SIGNAL \cent[2]~output_o\ : std_logic;
SIGNAL \cent[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \state.idle~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \i[3]~3_combout\ : std_logic;
SIGNAL \state.sum~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.shift~q\ : std_logic;
SIGNAL \state.check_sum~feeder_combout\ : std_logic;
SIGNAL \state.check_sum~q\ : std_logic;
SIGNAL \i[1]~1_combout\ : std_logic;
SIGNAL \i[2]~0_combout\ : std_logic;
SIGNAL \i[0]~2_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.fin~0_combout\ : std_logic;
SIGNAL \state.fin~q\ : std_logic;
SIGNAL \entrada[7]~input_o\ : std_logic;
SIGNAL \entrada[1]~input_o\ : std_logic;
SIGNAL \charge~input_o\ : std_logic;
SIGNAL \entrada[0]~input_o\ : std_logic;
SIGNAL \input_reg~8_combout\ : std_logic;
SIGNAL \input_reg~7_combout\ : std_logic;
SIGNAL \input_reg[7]~1_combout\ : std_logic;
SIGNAL \entrada[2]~input_o\ : std_logic;
SIGNAL \input_reg~6_combout\ : std_logic;
SIGNAL \entrada[3]~input_o\ : std_logic;
SIGNAL \input_reg~5_combout\ : std_logic;
SIGNAL \entrada[4]~input_o\ : std_logic;
SIGNAL \input_reg~4_combout\ : std_logic;
SIGNAL \entrada[5]~input_o\ : std_logic;
SIGNAL \input_reg~3_combout\ : std_logic;
SIGNAL \entrada[6]~input_o\ : std_logic;
SIGNAL \input_reg~2_combout\ : std_logic;
SIGNAL \input_reg~0_combout\ : std_logic;
SIGNAL \uni_reg[0]~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \uni_reg[1]~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \uni_reg[2]~2_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \uni_reg[3]~3_combout\ : std_logic;
SIGNAL \uni_reg[0]~4_combout\ : std_logic;
SIGNAL \uni_reg[0]~5_combout\ : std_logic;
SIGNAL \dec_reg[0]~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \dec_reg[1]~1_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \dec_reg[2]~2_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \dec_reg[3]~3_combout\ : std_logic;
SIGNAL \dec_reg[0]~4_combout\ : std_logic;
SIGNAL \dec_reg[0]~5_combout\ : std_logic;
SIGNAL \Cent_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Cent_reg[1]~feeder_combout\ : std_logic;
SIGNAL \Cent_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Cent_reg[3]~feeder_combout\ : std_logic;
SIGNAL uni_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL dec_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL input_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL Cent_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL i : std_logic_vector(3 DOWNTO 0);

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
ww_entrada <= entrada;
ww_reset <= reset;
valid <= ww_valid;
uni <= ww_uni;
dec <= ww_dec;
cent <= ww_cent;
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

-- Location: IOOBUF_X7_Y0_N2
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

-- Location: IOOBUF_X13_Y0_N2
\uni[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => uni_reg(0),
	devoe => ww_devoe,
	o => \uni[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\uni[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => uni_reg(1),
	devoe => ww_devoe,
	o => \uni[1]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\uni[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => uni_reg(2),
	devoe => ww_devoe,
	o => \uni[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\uni[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => uni_reg(3),
	devoe => ww_devoe,
	o => \uni[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\dec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dec_reg(0),
	devoe => ww_devoe,
	o => \dec[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\dec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dec_reg(1),
	devoe => ww_devoe,
	o => \dec[1]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\dec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dec_reg(2),
	devoe => ww_devoe,
	o => \dec[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\dec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => dec_reg(3),
	devoe => ww_devoe,
	o => \dec[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\cent[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cent_reg(0),
	devoe => ww_devoe,
	o => \cent[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\cent[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cent_reg(1),
	devoe => ww_devoe,
	o => \cent[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\cent[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cent_reg(2),
	devoe => ww_devoe,
	o => \cent[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\cent[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => Cent_reg(3),
	devoe => ww_devoe,
	o => \cent[3]~output_o\);

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

-- Location: LCCOMB_X24_Y1_N16
\state.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.idle~0_combout\ = (\state.idle~q\) # (!\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.idle~q\,
	datad => \start~input_o\,
	combout => \state.idle~0_combout\);

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

-- Location: FF_X24_Y1_N17
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

-- Location: LCCOMB_X25_Y1_N16
\i[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~3_combout\ = (\state.check_sum~q\ & (((!i(2)) # (!i(1))) # (!i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(1),
	datac => i(2),
	datad => \state.check_sum~q\,
	combout => \i[3]~3_combout\);

-- Location: FF_X25_Y1_N17
\state.sum\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \i[3]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.sum~q\);

-- Location: LCCOMB_X24_Y1_N6
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.sum~q\) # ((!\state.idle~q\ & !\start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.idle~q\,
	datac => \state.sum~q\,
	datad => \start~input_o\,
	combout => \Selector0~0_combout\);

-- Location: FF_X24_Y1_N7
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

-- Location: LCCOMB_X23_Y1_N16
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

-- Location: FF_X23_Y1_N17
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

-- Location: LCCOMB_X23_Y1_N4
\i[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[1]~1_combout\ = (i(0) & ((\state.check_sum~q\ & ((i(2)) # (!i(1)))) # (!\state.check_sum~q\ & (i(1))))) # (!i(0) & (((i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \state.check_sum~q\,
	datac => i(1),
	datad => i(2),
	combout => \i[1]~1_combout\);

-- Location: FF_X23_Y1_N5
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

-- Location: LCCOMB_X23_Y1_N6
\i[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[2]~0_combout\ = (i(2)) # ((i(0) & (i(1) & \state.check_sum~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(1),
	datac => i(2),
	datad => \state.check_sum~q\,
	combout => \i[2]~0_combout\);

-- Location: FF_X23_Y1_N7
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

-- Location: LCCOMB_X23_Y1_N26
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

-- Location: FF_X23_Y1_N27
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

-- Location: LCCOMB_X23_Y1_N28
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (i(0) & (\state.check_sum~q\ & (i(1) & i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \state.check_sum~q\,
	datac => i(1),
	datad => i(2),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X23_Y1_N2
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

-- Location: FF_X23_Y1_N3
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

-- Location: IOIBUF_X16_Y0_N22
\entrada[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(7),
	o => \entrada[7]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\entrada[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(1),
	o => \entrada[1]~input_o\);

-- Location: IOIBUF_X13_Y0_N15
\charge~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_charge,
	o => \charge~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\entrada[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(0),
	o => \entrada[0]~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\input_reg~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg~8_combout\ = (\charge~input_o\ & (input_reg(0))) # (!\charge~input_o\ & ((\entrada[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \charge~input_o\,
	datac => input_reg(0),
	datad => \entrada[0]~input_o\,
	combout => \input_reg~8_combout\);

-- Location: FF_X23_Y1_N25
\input_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input_reg(0));

-- Location: LCCOMB_X24_Y1_N18
\input_reg~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg~7_combout\ = (\state.shift~q\ & ((input_reg(0)))) # (!\state.shift~q\ & (\entrada[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shift~q\,
	datab => \entrada[1]~input_o\,
	datad => input_reg(0),
	combout => \input_reg~7_combout\);

-- Location: LCCOMB_X24_Y1_N10
\input_reg[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg[7]~1_combout\ = (\state.shift~q\) # (!\charge~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \charge~input_o\,
	datad => \state.shift~q\,
	combout => \input_reg[7]~1_combout\);

-- Location: FF_X24_Y1_N19
\input_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \input_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input_reg(1));

-- Location: IOIBUF_X32_Y0_N8
\entrada[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(2),
	o => \entrada[2]~input_o\);

-- Location: LCCOMB_X24_Y1_N20
\input_reg~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg~6_combout\ = (\state.shift~q\ & (input_reg(1))) # (!\state.shift~q\ & ((\entrada[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shift~q\,
	datab => input_reg(1),
	datad => \entrada[2]~input_o\,
	combout => \input_reg~6_combout\);

-- Location: FF_X24_Y1_N21
\input_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \input_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input_reg(2));

-- Location: IOIBUF_X30_Y0_N1
\entrada[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(3),
	o => \entrada[3]~input_o\);

-- Location: LCCOMB_X24_Y1_N30
\input_reg~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg~5_combout\ = (\state.shift~q\ & (input_reg(2))) # (!\state.shift~q\ & ((\entrada[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shift~q\,
	datab => input_reg(2),
	datad => \entrada[3]~input_o\,
	combout => \input_reg~5_combout\);

-- Location: FF_X24_Y1_N31
\input_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \input_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input_reg(3));

-- Location: IOIBUF_X28_Y0_N1
\entrada[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(4),
	o => \entrada[4]~input_o\);

-- Location: LCCOMB_X24_Y1_N8
\input_reg~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg~4_combout\ = (\state.shift~q\ & (input_reg(3))) # (!\state.shift~q\ & ((\entrada[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shift~q\,
	datac => input_reg(3),
	datad => \entrada[4]~input_o\,
	combout => \input_reg~4_combout\);

-- Location: FF_X24_Y1_N9
\input_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \input_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input_reg(4));

-- Location: IOIBUF_X25_Y0_N1
\entrada[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(5),
	o => \entrada[5]~input_o\);

-- Location: LCCOMB_X24_Y1_N14
\input_reg~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg~3_combout\ = (\state.shift~q\ & (input_reg(4))) # (!\state.shift~q\ & ((\entrada[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shift~q\,
	datac => input_reg(4),
	datad => \entrada[5]~input_o\,
	combout => \input_reg~3_combout\);

-- Location: FF_X24_Y1_N15
\input_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \input_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input_reg(5));

-- Location: IOIBUF_X5_Y0_N22
\entrada[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada(6),
	o => \entrada[6]~input_o\);

-- Location: LCCOMB_X24_Y1_N0
\input_reg~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg~2_combout\ = (\state.shift~q\ & (input_reg(5))) # (!\state.shift~q\ & ((\entrada[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shift~q\,
	datac => input_reg(5),
	datad => \entrada[6]~input_o\,
	combout => \input_reg~2_combout\);

-- Location: FF_X24_Y1_N1
\input_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \input_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input_reg(6));

-- Location: LCCOMB_X24_Y1_N12
\input_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \input_reg~0_combout\ = (\state.shift~q\ & ((input_reg(6)))) # (!\state.shift~q\ & (\entrada[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.shift~q\,
	datac => \entrada[7]~input_o\,
	datad => input_reg(6),
	combout => \input_reg~0_combout\);

-- Location: FF_X24_Y1_N13
\input_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \input_reg~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \input_reg[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => input_reg(7));

-- Location: LCCOMB_X24_Y1_N4
\uni_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[0]~0_combout\ = (\state.sum~q\ & (!uni_reg(0))) # (!\state.sum~q\ & ((input_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sum~q\,
	datac => uni_reg(0),
	datad => input_reg(7),
	combout => \uni_reg[0]~0_combout\);

-- Location: LCCOMB_X23_Y1_N14
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = uni_reg(1) $ (uni_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => uni_reg(1),
	datad => uni_reg(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X24_Y1_N22
\uni_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[1]~1_combout\ = (\state.sum~q\ & ((!\Add1~0_combout\))) # (!\state.sum~q\ & (uni_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.sum~q\,
	datab => uni_reg(0),
	datad => \Add1~0_combout\,
	combout => \uni_reg[1]~1_combout\);

-- Location: FF_X24_Y1_N23
\uni_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_reg[1]~1_combout\,
	asdata => uni_reg(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \uni_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_reg(1));

-- Location: LCCOMB_X23_Y1_N12
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = uni_reg(2) $ (((uni_reg(1)) # (uni_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => uni_reg(2),
	datac => uni_reg(1),
	datad => uni_reg(0),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X24_Y1_N24
\uni_reg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[2]~2_combout\ = (\state.sum~q\ & ((\Add1~1_combout\))) # (!\state.sum~q\ & (uni_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(1),
	datab => \state.sum~q\,
	datad => \Add1~1_combout\,
	combout => \uni_reg[2]~2_combout\);

-- Location: FF_X24_Y1_N25
\uni_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_reg[2]~2_combout\,
	asdata => uni_reg(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \uni_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_reg(2));

-- Location: LCCOMB_X23_Y1_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = uni_reg(3) $ (((uni_reg(2) & ((uni_reg(0)) # (uni_reg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(0),
	datab => uni_reg(1),
	datac => uni_reg(3),
	datad => uni_reg(2),
	combout => \Add1~2_combout\);

-- Location: LCCOMB_X24_Y1_N26
\uni_reg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[3]~3_combout\ = (\state.sum~q\ & ((\Add1~2_combout\))) # (!\state.sum~q\ & (uni_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(2),
	datab => \state.sum~q\,
	datad => \Add1~2_combout\,
	combout => \uni_reg[3]~3_combout\);

-- Location: FF_X24_Y1_N27
\uni_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_reg[3]~3_combout\,
	asdata => uni_reg(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \uni_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_reg(3));

-- Location: LCCOMB_X24_Y1_N28
\uni_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[0]~4_combout\ = ((!uni_reg(1) & !uni_reg(0))) # (!uni_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(1),
	datac => uni_reg(0),
	datad => uni_reg(2),
	combout => \uni_reg[0]~4_combout\);

-- Location: LCCOMB_X24_Y1_N2
\uni_reg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uni_reg[0]~5_combout\ = (\state.sum~q\ & (!uni_reg(3) & ((\uni_reg[0]~4_combout\)))) # (!\state.sum~q\ & (((!\state.shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uni_reg(3),
	datab => \state.shift~q\,
	datac => \state.sum~q\,
	datad => \uni_reg[0]~4_combout\,
	combout => \uni_reg[0]~5_combout\);

-- Location: FF_X24_Y1_N5
\uni_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \uni_reg[0]~0_combout\,
	asdata => uni_reg(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \uni_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uni_reg(0));

-- Location: LCCOMB_X25_Y1_N4
\dec_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[0]~0_combout\ = (\state.sum~q\ & (!dec_reg(0))) # (!\state.sum~q\ & ((uni_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.sum~q\,
	datac => dec_reg(0),
	datad => uni_reg(3),
	combout => \dec_reg[0]~0_combout\);

-- Location: LCCOMB_X25_Y1_N30
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = dec_reg(1) $ (dec_reg(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => dec_reg(1),
	datad => dec_reg(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X25_Y1_N26
\dec_reg[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[1]~1_combout\ = (\state.sum~q\ & (!\Add2~0_combout\)) # (!\state.sum~q\ & ((dec_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \state.sum~q\,
	datad => dec_reg(0),
	combout => \dec_reg[1]~1_combout\);

-- Location: FF_X25_Y1_N27
\dec_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_reg[1]~1_combout\,
	asdata => dec_reg(1),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \dec_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec_reg(1));

-- Location: LCCOMB_X25_Y1_N28
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = dec_reg(2) $ (((dec_reg(1)) # (dec_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(2),
	datab => dec_reg(1),
	datad => dec_reg(0),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X25_Y1_N8
\dec_reg[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[2]~2_combout\ = (\state.sum~q\ & ((\Add2~1_combout\))) # (!\state.sum~q\ & (dec_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(1),
	datab => \state.sum~q\,
	datad => \Add2~1_combout\,
	combout => \dec_reg[2]~2_combout\);

-- Location: FF_X25_Y1_N9
\dec_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_reg[2]~2_combout\,
	asdata => dec_reg(2),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \dec_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec_reg(2));

-- Location: LCCOMB_X25_Y1_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = dec_reg(3) $ (((dec_reg(2) & ((dec_reg(1)) # (dec_reg(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(3),
	datab => dec_reg(1),
	datac => dec_reg(2),
	datad => dec_reg(0),
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X25_Y1_N10
\dec_reg[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[3]~3_combout\ = (\state.sum~q\ & ((\Add2~2_combout\))) # (!\state.sum~q\ & (dec_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(2),
	datab => \state.sum~q\,
	datad => \Add2~2_combout\,
	combout => \dec_reg[3]~3_combout\);

-- Location: FF_X25_Y1_N11
\dec_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_reg[3]~3_combout\,
	asdata => dec_reg(3),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \dec_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec_reg(3));

-- Location: LCCOMB_X25_Y1_N6
\dec_reg[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[0]~4_combout\ = (\state.sum~q\ & (((!dec_reg(1) & !dec_reg(0))) # (!dec_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(1),
	datab => dec_reg(0),
	datac => dec_reg(2),
	datad => \state.sum~q\,
	combout => \dec_reg[0]~4_combout\);

-- Location: LCCOMB_X25_Y1_N0
\dec_reg[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dec_reg[0]~5_combout\ = (dec_reg(3) & (!\state.sum~q\ & (!\state.shift~q\))) # (!dec_reg(3) & ((\dec_reg[0]~4_combout\) # ((!\state.sum~q\ & !\state.shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => dec_reg(3),
	datab => \state.sum~q\,
	datac => \state.shift~q\,
	datad => \dec_reg[0]~4_combout\,
	combout => \dec_reg[0]~5_combout\);

-- Location: FF_X25_Y1_N5
\dec_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \dec_reg[0]~0_combout\,
	asdata => dec_reg(0),
	clrn => \reset~inputclkctrl_outclk\,
	sload => \dec_reg[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => dec_reg(0));

-- Location: LCCOMB_X25_Y1_N24
\Cent_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cent_reg[0]~feeder_combout\ = dec_reg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => dec_reg(3),
	combout => \Cent_reg[0]~feeder_combout\);

-- Location: FF_X25_Y1_N25
\Cent_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Cent_reg[0]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cent_reg(0));

-- Location: LCCOMB_X25_Y1_N22
\Cent_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cent_reg[1]~feeder_combout\ = Cent_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Cent_reg(0),
	combout => \Cent_reg[1]~feeder_combout\);

-- Location: FF_X25_Y1_N23
\Cent_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Cent_reg[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cent_reg(1));

-- Location: LCCOMB_X25_Y1_N12
\Cent_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cent_reg[2]~feeder_combout\ = Cent_reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Cent_reg(1),
	combout => \Cent_reg[2]~feeder_combout\);

-- Location: FF_X25_Y1_N13
\Cent_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Cent_reg[2]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cent_reg(2));

-- Location: LCCOMB_X25_Y1_N18
\Cent_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cent_reg[3]~feeder_combout\ = Cent_reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Cent_reg(2),
	combout => \Cent_reg[3]~feeder_combout\);

-- Location: FF_X25_Y1_N19
\Cent_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Cent_reg[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \state.shift~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cent_reg(3));

ww_valid <= \valid~output_o\;

ww_uni(0) <= \uni[0]~output_o\;

ww_uni(1) <= \uni[1]~output_o\;

ww_uni(2) <= \uni[2]~output_o\;

ww_uni(3) <= \uni[3]~output_o\;

ww_dec(0) <= \dec[0]~output_o\;

ww_dec(1) <= \dec[1]~output_o\;

ww_dec(2) <= \dec[2]~output_o\;

ww_dec(3) <= \dec[3]~output_o\;

ww_cent(0) <= \cent[0]~output_o\;

ww_cent(1) <= \cent[1]~output_o\;

ww_cent(2) <= \cent[2]~output_o\;

ww_cent(3) <= \cent[3]~output_o\;
END structure;


