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

-- DATE "05/14/2024 15:19:46"

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

ENTITY 	proyect1 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	dec : OUT std_logic_vector(7 DOWNTO 0);
	uni : OUT std_logic_vector(7 DOWNTO 0);
	decim : OUT std_logic_vector(7 DOWNTO 0)
	);
END proyect1;

-- Design Ports Information
-- dec[0]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[2]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[4]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[6]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dec[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[0]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[3]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[4]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[5]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[6]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uni[7]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decim[0]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decim[1]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decim[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decim[3]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decim[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decim[5]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decim[6]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decim[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF proyect1 IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_dec : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_uni : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_decim : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dec[0]~output_o\ : std_logic;
SIGNAL \dec[1]~output_o\ : std_logic;
SIGNAL \dec[2]~output_o\ : std_logic;
SIGNAL \dec[3]~output_o\ : std_logic;
SIGNAL \dec[4]~output_o\ : std_logic;
SIGNAL \dec[5]~output_o\ : std_logic;
SIGNAL \dec[6]~output_o\ : std_logic;
SIGNAL \dec[7]~output_o\ : std_logic;
SIGNAL \uni[0]~output_o\ : std_logic;
SIGNAL \uni[1]~output_o\ : std_logic;
SIGNAL \uni[2]~output_o\ : std_logic;
SIGNAL \uni[3]~output_o\ : std_logic;
SIGNAL \uni[4]~output_o\ : std_logic;
SIGNAL \uni[5]~output_o\ : std_logic;
SIGNAL \uni[6]~output_o\ : std_logic;
SIGNAL \uni[7]~output_o\ : std_logic;
SIGNAL \decim[0]~output_o\ : std_logic;
SIGNAL \decim[1]~output_o\ : std_logic;
SIGNAL \decim[2]~output_o\ : std_logic;
SIGNAL \decim[3]~output_o\ : std_logic;
SIGNAL \decim[4]~output_o\ : std_logic;
SIGNAL \decim[5]~output_o\ : std_logic;
SIGNAL \decim[6]~output_o\ : std_logic;
SIGNAL \decim[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \cuenta~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \cuenta~0_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \clk_out~0_combout\ : std_logic;
SIGNAL \clk_out~feeder_combout\ : std_logic;
SIGNAL \clk_out~q\ : std_logic;
SIGNAL \clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \cont_dec[0]~4_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \cont_decim[0]~3_combout\ : std_logic;
SIGNAL \cont_decim~2_combout\ : std_logic;
SIGNAL \cont_decim~0_combout\ : std_logic;
SIGNAL \cont_decim[2]~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \cont_uni[0]~3_combout\ : std_logic;
SIGNAL \cont_uni~2_combout\ : std_logic;
SIGNAL \cont_uni~0_combout\ : std_logic;
SIGNAL \cont_uni[2]~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \cont_dec[3]~0_combout\ : std_logic;
SIGNAL \cont_dec[2]~2_combout\ : std_logic;
SIGNAL \cont_dec~3_combout\ : std_logic;
SIGNAL \cont_dec~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \dec[0]~reg0_q\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \dec[1]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \dec[2]~reg0_q\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \dec[3]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \dec[4]~reg0_q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \dec[5]~reg0_q\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \dec[6]~reg0_q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \uni[0]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \uni[1]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \uni[2]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \uni[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \uni[4]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \uni[5]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \uni[6]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \decim[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \decim[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \decim[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \decim[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \decim[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \decim[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \decim[6]~reg0_q\ : std_logic;
SIGNAL cont_dec : std_logic_vector(3 DOWNTO 0);
SIGNAL cont_uni : std_logic_vector(3 DOWNTO 0);
SIGNAL cont_decim : std_logic_vector(3 DOWNTO 0);
SIGNAL cuenta : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
dec <= ww_dec;
uni <= ww_uni;
decim <= ww_decim;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_out~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X25_Y0_N2
\dec[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dec[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\dec[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dec[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\dec[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dec[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\dec[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec[3]~reg0_q\,
	devoe => ww_devoe,
	o => \dec[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\dec[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec[4]~reg0_q\,
	devoe => ww_devoe,
	o => \dec[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\dec[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec[5]~reg0_q\,
	devoe => ww_devoe,
	o => \dec[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\dec[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dec[6]~reg0_q\,
	devoe => ww_devoe,
	o => \dec[6]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\dec[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dec[7]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\uni[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni[0]~reg0_q\,
	devoe => ww_devoe,
	o => \uni[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\uni[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni[1]~reg0_q\,
	devoe => ww_devoe,
	o => \uni[1]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\uni[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni[2]~reg0_q\,
	devoe => ww_devoe,
	o => \uni[2]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\uni[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni[3]~reg0_q\,
	devoe => ww_devoe,
	o => \uni[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\uni[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni[4]~reg0_q\,
	devoe => ww_devoe,
	o => \uni[4]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\uni[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni[5]~reg0_q\,
	devoe => ww_devoe,
	o => \uni[5]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\uni[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uni[6]~reg0_q\,
	devoe => ww_devoe,
	o => \uni[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\uni[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \uni[7]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\decim[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decim[0]~reg0_q\,
	devoe => ww_devoe,
	o => \decim[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\decim[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decim[1]~reg0_q\,
	devoe => ww_devoe,
	o => \decim[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\decim[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decim[2]~reg0_q\,
	devoe => ww_devoe,
	o => \decim[2]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\decim[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decim[3]~reg0_q\,
	devoe => ww_devoe,
	o => \decim[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\decim[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decim[4]~reg0_q\,
	devoe => ww_devoe,
	o => \decim[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\decim[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decim[5]~reg0_q\,
	devoe => ww_devoe,
	o => \decim[5]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\decim[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decim[6]~reg0_q\,
	devoe => ww_devoe,
	o => \decim[6]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\decim[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \decim[7]~output_o\);

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

-- Location: LCCOMB_X33_Y12_N16
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = cuenta(0) $ (VCC)
-- \Add0~1\ = CARRY(cuenta(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => cuenta(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X33_Y12_N14
\cuenta~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta~1_combout\ = (\Add0~0_combout\ & ((cuenta(4)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(4),
	datac => \Add0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \cuenta~1_combout\);

-- Location: FF_X33_Y12_N15
\cuenta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(0));

-- Location: LCCOMB_X33_Y12_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (cuenta(1) & (!cuenta(0) & (!cuenta(3) & !cuenta(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(1),
	datab => cuenta(0),
	datac => cuenta(3),
	datad => cuenta(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X33_Y12_N18
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (cuenta(1) & (!\Add0~1\)) # (!cuenta(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!cuenta(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X33_Y12_N10
\cuenta~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cuenta~0_combout\ = (\Add0~2_combout\ & ((cuenta(4)) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(4),
	datac => \Equal0~0_combout\,
	datad => \Add0~2_combout\,
	combout => \cuenta~0_combout\);

-- Location: FF_X33_Y12_N11
\cuenta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \cuenta~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(1));

-- Location: LCCOMB_X33_Y12_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (cuenta(2) & (\Add0~3\ $ (GND))) # (!cuenta(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((cuenta(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => cuenta(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X33_Y12_N21
\cuenta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(2));

-- Location: LCCOMB_X33_Y12_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (cuenta(3) & (!\Add0~5\)) # (!cuenta(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!cuenta(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X33_Y12_N23
\cuenta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(3));

-- Location: LCCOMB_X33_Y12_N24
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = cuenta(4) $ (!\Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(4),
	cin => \Add0~7\,
	combout => \Add0~8_combout\);

-- Location: FF_X33_Y12_N25
\cuenta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cuenta(4));

-- Location: LCCOMB_X33_Y12_N0
\clk_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_out~0_combout\ = \clk_out~q\ $ (((!cuenta(4) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cuenta(4),
	datac => \clk_out~q\,
	datad => \Equal0~0_combout\,
	combout => \clk_out~0_combout\);

-- Location: LCCOMB_X33_Y12_N4
\clk_out~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_out~feeder_combout\ = \clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_out~0_combout\,
	combout => \clk_out~feeder_combout\);

-- Location: FF_X33_Y12_N5
clk_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_out~q\);

-- Location: CLKCTRL_G7
\clk_out~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_out~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y7_N12
\cont_dec[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_dec[0]~4_combout\ = !cont_dec(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_dec(0),
	combout => \cont_dec[0]~4_combout\);

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

-- Location: LCCOMB_X32_Y7_N26
\cont_decim[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_decim[0]~3_combout\ = !cont_decim(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_decim(0),
	combout => \cont_decim[0]~3_combout\);

-- Location: FF_X32_Y7_N27
\cont_decim[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_decim[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_decim(0));

-- Location: LCCOMB_X32_Y7_N24
\cont_decim~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_decim~2_combout\ = (cont_decim(0) & ((cont_decim(2) & (cont_decim(3) $ (cont_decim(1)))) # (!cont_decim(2) & (cont_decim(3) & cont_decim(1))))) # (!cont_decim(0) & (((cont_decim(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(2),
	datac => cont_decim(3),
	datad => cont_decim(1),
	combout => \cont_decim~2_combout\);

-- Location: FF_X32_Y7_N25
\cont_decim[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_decim~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_decim(3));

-- Location: LCCOMB_X32_Y7_N28
\cont_decim~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_decim~0_combout\ = (cont_decim(0) & (!cont_decim(1) & ((cont_decim(2)) # (!cont_decim(3))))) # (!cont_decim(0) & (((cont_decim(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(3),
	datac => cont_decim(1),
	datad => cont_decim(2),
	combout => \cont_decim~0_combout\);

-- Location: FF_X32_Y7_N29
\cont_decim[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_decim~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_decim(1));

-- Location: LCCOMB_X32_Y7_N6
\cont_decim[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_decim[2]~1_combout\ = cont_decim(2) $ (((cont_decim(0) & cont_decim(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datac => cont_decim(2),
	datad => cont_decim(1),
	combout => \cont_decim[2]~1_combout\);

-- Location: FF_X32_Y7_N7
\cont_decim[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_decim[2]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_decim(2));

-- Location: LCCOMB_X32_Y7_N14
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!cont_decim(2) & (!cont_decim(1) & (cont_decim(0) & cont_decim(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(2),
	datab => cont_decim(1),
	datac => cont_decim(0),
	datad => cont_decim(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X33_Y7_N22
\cont_uni[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_uni[0]~3_combout\ = !cont_uni(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => cont_uni(0),
	combout => \cont_uni[0]~3_combout\);

-- Location: FF_X33_Y7_N23
\cont_uni[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_uni[0]~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_uni(0));

-- Location: LCCOMB_X33_Y7_N30
\cont_uni~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_uni~2_combout\ = (cont_uni(0) & ((cont_uni(1) & (cont_uni(3) $ (cont_uni(2)))) # (!cont_uni(1) & (cont_uni(3) & cont_uni(2))))) # (!cont_uni(0) & (((cont_uni(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(0),
	datab => cont_uni(1),
	datac => cont_uni(3),
	datad => cont_uni(2),
	combout => \cont_uni~2_combout\);

-- Location: FF_X33_Y7_N31
\cont_uni[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_uni~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_uni(3));

-- Location: LCCOMB_X33_Y7_N12
\cont_uni~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_uni~0_combout\ = (cont_uni(0) & (!cont_uni(1) & ((cont_uni(2)) # (!cont_uni(3))))) # (!cont_uni(0) & (((cont_uni(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(0),
	datab => cont_uni(3),
	datac => cont_uni(1),
	datad => cont_uni(2),
	combout => \cont_uni~0_combout\);

-- Location: FF_X33_Y7_N13
\cont_uni[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_uni~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_uni(1));

-- Location: LCCOMB_X32_Y7_N20
\cont_uni[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_uni[2]~1_combout\ = cont_uni(2) $ (((\Equal1~0_combout\ & (cont_uni(1) & cont_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => cont_uni(1),
	datac => cont_uni(2),
	datad => cont_uni(0),
	combout => \cont_uni[2]~1_combout\);

-- Location: FF_X32_Y7_N21
\cont_uni[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_uni[2]~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_uni(2));

-- Location: LCCOMB_X32_Y7_N16
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!cont_uni(2) & (!cont_uni(1) & (cont_uni(3) & cont_uni(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(2),
	datab => cont_uni(1),
	datac => cont_uni(3),
	datad => cont_uni(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X32_Y7_N30
\cont_dec[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_dec[3]~0_combout\ = (\Equal1~0_combout\ & \Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~0_combout\,
	datad => \Equal2~0_combout\,
	combout => \cont_dec[3]~0_combout\);

-- Location: FF_X32_Y7_N13
\cont_dec[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_dec[0]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cont_dec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_dec(0));

-- Location: LCCOMB_X32_Y7_N4
\cont_dec[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_dec[2]~2_combout\ = cont_dec(2) $ (((cont_dec(0) & (cont_dec(1) & \cont_dec[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(0),
	datab => cont_dec(1),
	datac => cont_dec(2),
	datad => \cont_dec[3]~0_combout\,
	combout => \cont_dec[2]~2_combout\);

-- Location: FF_X32_Y7_N5
\cont_dec[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_dec[2]~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_dec(2));

-- Location: LCCOMB_X32_Y7_N22
\cont_dec~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_dec~3_combout\ = (cont_dec(2) & (cont_dec(3) $ (((cont_dec(1) & cont_dec(0)))))) # (!cont_dec(2) & (cont_dec(3) & ((cont_dec(1)) # (!cont_dec(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(2),
	datab => cont_dec(1),
	datac => cont_dec(3),
	datad => cont_dec(0),
	combout => \cont_dec~3_combout\);

-- Location: FF_X32_Y7_N23
\cont_dec[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_dec~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cont_dec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_dec(3));

-- Location: LCCOMB_X32_Y7_N18
\cont_dec~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \cont_dec~1_combout\ = (cont_dec(0) & (!cont_dec(1) & ((cont_dec(2)) # (!cont_dec(3))))) # (!cont_dec(0) & (((cont_dec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(0),
	datab => cont_dec(3),
	datac => cont_dec(1),
	datad => cont_dec(2),
	combout => \cont_dec~1_combout\);

-- Location: FF_X32_Y7_N19
\cont_dec[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \cont_dec~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \cont_dec[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => cont_dec(1));

-- Location: LCCOMB_X31_Y7_N12
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (cont_dec(1)) # ((cont_dec(3)) # (cont_dec(0) $ (!cont_dec(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(1),
	datab => cont_dec(3),
	datac => cont_dec(0),
	datad => cont_dec(2),
	combout => \Mux20~0_combout\);

-- Location: FF_X31_Y7_N13
\dec[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux20~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec[0]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N22
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (cont_dec(3) & (!cont_dec(1) & ((!cont_dec(2))))) # (!cont_dec(3) & ((cont_dec(1) $ (!cont_dec(0))) # (!cont_dec(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(1),
	datab => cont_dec(3),
	datac => cont_dec(0),
	datad => cont_dec(2),
	combout => \Mux19~0_combout\);

-- Location: FF_X31_Y7_N23
\dec[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux19~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec[1]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N24
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (cont_dec(2) & (((!cont_dec(3))))) # (!cont_dec(2) & (((!cont_dec(3) & cont_dec(0))) # (!cont_dec(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(1),
	datab => cont_dec(3),
	datac => cont_dec(0),
	datad => cont_dec(2),
	combout => \Mux18~0_combout\);

-- Location: FF_X31_Y7_N25
\dec[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux18~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec[2]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N18
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (cont_dec(1) & (!cont_dec(3) & ((!cont_dec(2)) # (!cont_dec(0))))) # (!cont_dec(1) & (cont_dec(2) $ (((cont_dec(3)) # (!cont_dec(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(1),
	datab => cont_dec(3),
	datac => cont_dec(0),
	datad => cont_dec(2),
	combout => \Mux17~0_combout\);

-- Location: FF_X31_Y7_N19
\dec[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux17~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec[3]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N28
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!cont_dec(0) & ((cont_dec(1) & (!cont_dec(3))) # (!cont_dec(1) & ((!cont_dec(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(1),
	datab => cont_dec(3),
	datac => cont_dec(0),
	datad => cont_dec(2),
	combout => \Mux16~0_combout\);

-- Location: FF_X31_Y7_N29
\dec[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux16~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec[4]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N26
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (cont_dec(0) & (!cont_dec(1) & (cont_dec(3) $ (cont_dec(2))))) # (!cont_dec(0) & ((cont_dec(2) & ((!cont_dec(3)))) # (!cont_dec(2) & (!cont_dec(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(1),
	datab => cont_dec(3),
	datac => cont_dec(0),
	datad => cont_dec(2),
	combout => \Mux15~0_combout\);

-- Location: FF_X31_Y7_N27
\dec[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux15~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec[5]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N20
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (cont_dec(1) & (!cont_dec(3) & ((!cont_dec(2)) # (!cont_dec(0))))) # (!cont_dec(1) & (cont_dec(3) $ (((cont_dec(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_dec(1),
	datab => cont_dec(3),
	datac => cont_dec(0),
	datad => cont_dec(2),
	combout => \Mux14~0_combout\);

-- Location: FF_X31_Y7_N21
\dec[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux14~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dec[6]~reg0_q\);

-- Location: LCCOMB_X33_Y7_N24
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (cont_uni(1)) # ((cont_uni(3)) # (cont_uni(2) $ (!cont_uni(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(2),
	datab => cont_uni(1),
	datac => cont_uni(0),
	datad => cont_uni(3),
	combout => \Mux13~0_combout\);

-- Location: FF_X33_Y7_N25
\uni[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux13~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni[0]~reg0_q\);

-- Location: LCCOMB_X33_Y7_N18
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (cont_uni(2) & (!cont_uni(3) & (cont_uni(0) $ (!cont_uni(1))))) # (!cont_uni(2) & (((!cont_uni(1))) # (!cont_uni(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(2),
	datab => cont_uni(3),
	datac => cont_uni(0),
	datad => cont_uni(1),
	combout => \Mux12~0_combout\);

-- Location: FF_X33_Y7_N19
\uni[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux12~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni[1]~reg0_q\);

-- Location: LCCOMB_X33_Y7_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (cont_uni(2) & (!cont_uni(3))) # (!cont_uni(2) & (((!cont_uni(3) & cont_uni(0))) # (!cont_uni(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(2),
	datab => cont_uni(3),
	datac => cont_uni(0),
	datad => cont_uni(1),
	combout => \Mux11~0_combout\);

-- Location: FF_X33_Y7_N29
\uni[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux11~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni[2]~reg0_q\);

-- Location: LCCOMB_X33_Y7_N14
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (cont_uni(1) & (!cont_uni(3) & ((!cont_uni(0)) # (!cont_uni(2))))) # (!cont_uni(1) & (cont_uni(2) $ (((cont_uni(3)) # (!cont_uni(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(1),
	datab => cont_uni(2),
	datac => cont_uni(0),
	datad => cont_uni(3),
	combout => \Mux10~0_combout\);

-- Location: FF_X33_Y7_N15
\uni[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux10~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni[3]~reg0_q\);

-- Location: LCCOMB_X33_Y7_N20
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (!cont_uni(0) & ((cont_uni(1) & ((!cont_uni(3)))) # (!cont_uni(1) & (!cont_uni(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(2),
	datab => cont_uni(1),
	datac => cont_uni(0),
	datad => cont_uni(3),
	combout => \Mux9~0_combout\);

-- Location: FF_X33_Y7_N21
\uni[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux9~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni[4]~reg0_q\);

-- Location: LCCOMB_X33_Y7_N26
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (cont_uni(2) & (!cont_uni(3) & ((!cont_uni(0)) # (!cont_uni(1))))) # (!cont_uni(2) & (!cont_uni(1) & ((cont_uni(3)) # (!cont_uni(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(1),
	datab => cont_uni(2),
	datac => cont_uni(0),
	datad => cont_uni(3),
	combout => \Mux8~0_combout\);

-- Location: FF_X33_Y7_N27
\uni[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux8~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni[5]~reg0_q\);

-- Location: LCCOMB_X33_Y7_N16
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (cont_uni(2) & (!cont_uni(3) & ((!cont_uni(1)) # (!cont_uni(0))))) # (!cont_uni(2) & (cont_uni(3) $ (((cont_uni(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_uni(3),
	datab => cont_uni(2),
	datac => cont_uni(0),
	datad => cont_uni(1),
	combout => \Mux7~0_combout\);

-- Location: FF_X33_Y7_N17
\uni[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux7~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uni[6]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N14
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (cont_decim(1)) # ((cont_decim(3)) # (cont_decim(0) $ (!cont_decim(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(1),
	datac => cont_decim(2),
	datad => cont_decim(3),
	combout => \Mux6~0_combout\);

-- Location: FF_X31_Y7_N15
\decim[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux6~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decim[0]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N16
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (cont_decim(2) & (!cont_decim(3) & (cont_decim(0) $ (!cont_decim(1))))) # (!cont_decim(2) & (((!cont_decim(3)) # (!cont_decim(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(1),
	datac => cont_decim(2),
	datad => cont_decim(3),
	combout => \Mux5~0_combout\);

-- Location: FF_X31_Y7_N17
\decim[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux5~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decim[1]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N6
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (cont_decim(2) & (((!cont_decim(3))))) # (!cont_decim(2) & (((cont_decim(0) & !cont_decim(3))) # (!cont_decim(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(1),
	datac => cont_decim(2),
	datad => cont_decim(3),
	combout => \Mux4~0_combout\);

-- Location: FF_X31_Y7_N7
\decim[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux4~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decim[2]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N0
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (cont_decim(1) & (!cont_decim(3) & ((!cont_decim(2)) # (!cont_decim(0))))) # (!cont_decim(1) & (cont_decim(2) $ (((cont_decim(3)) # (!cont_decim(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(1),
	datac => cont_decim(2),
	datad => cont_decim(3),
	combout => \Mux3~0_combout\);

-- Location: FF_X31_Y7_N1
\decim[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux3~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decim[3]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N2
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!cont_decim(0) & ((cont_decim(1) & ((!cont_decim(3)))) # (!cont_decim(1) & (!cont_decim(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(1),
	datac => cont_decim(2),
	datad => cont_decim(3),
	combout => \Mux2~0_combout\);

-- Location: FF_X31_Y7_N3
\decim[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux2~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decim[4]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N4
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (cont_decim(0) & (!cont_decim(1) & (cont_decim(2) $ (cont_decim(3))))) # (!cont_decim(0) & ((cont_decim(2) & ((!cont_decim(3)))) # (!cont_decim(2) & (!cont_decim(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(1),
	datac => cont_decim(2),
	datad => cont_decim(3),
	combout => \Mux1~0_combout\);

-- Location: FF_X31_Y7_N5
\decim[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux1~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decim[5]~reg0_q\);

-- Location: LCCOMB_X31_Y7_N10
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (cont_decim(1) & (!cont_decim(3) & ((!cont_decim(2)) # (!cont_decim(0))))) # (!cont_decim(1) & ((cont_decim(2) $ (cont_decim(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => cont_decim(0),
	datab => cont_decim(1),
	datac => cont_decim(2),
	datad => cont_decim(3),
	combout => \Mux0~0_combout\);

-- Location: FF_X31_Y7_N11
\decim[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_out~clkctrl_outclk\,
	d => \Mux0~0_combout\,
	ena => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \decim[6]~reg0_q\);

ww_dec(0) <= \dec[0]~output_o\;

ww_dec(1) <= \dec[1]~output_o\;

ww_dec(2) <= \dec[2]~output_o\;

ww_dec(3) <= \dec[3]~output_o\;

ww_dec(4) <= \dec[4]~output_o\;

ww_dec(5) <= \dec[5]~output_o\;

ww_dec(6) <= \dec[6]~output_o\;

ww_dec(7) <= \dec[7]~output_o\;

ww_uni(0) <= \uni[0]~output_o\;

ww_uni(1) <= \uni[1]~output_o\;

ww_uni(2) <= \uni[2]~output_o\;

ww_uni(3) <= \uni[3]~output_o\;

ww_uni(4) <= \uni[4]~output_o\;

ww_uni(5) <= \uni[5]~output_o\;

ww_uni(6) <= \uni[6]~output_o\;

ww_uni(7) <= \uni[7]~output_o\;

ww_decim(0) <= \decim[0]~output_o\;

ww_decim(1) <= \decim[1]~output_o\;

ww_decim(2) <= \decim[2]~output_o\;

ww_decim(3) <= \decim[3]~output_o\;

ww_decim(4) <= \decim[4]~output_o\;

ww_decim(5) <= \decim[5]~output_o\;

ww_decim(6) <= \decim[6]~output_o\;

ww_decim(7) <= \decim[7]~output_o\;
END structure;


