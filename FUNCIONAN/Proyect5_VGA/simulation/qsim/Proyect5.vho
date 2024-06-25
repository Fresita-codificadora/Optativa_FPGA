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

-- DATE "06/21/2024 22:11:36"

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

ENTITY 	decod IS
    PORT (
	clk : IN std_logic;
	rojo : IN std_logic;
	verde : IN std_logic;
	azul : IN std_logic;
	rojo_out : OUT std_logic_vector(5 DOWNTO 0);
	verde_out : OUT std_logic_vector(5 DOWNTO 0);
	azul_out : OUT std_logic_vector(5 DOWNTO 0)
	);
END decod;

-- Design Ports Information
-- rojo_out[0]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[1]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[2]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[4]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[5]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[0]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[2]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[3]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[4]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[5]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[0]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[1]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[2]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[3]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[4]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[5]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decod IS
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
SIGNAL ww_rojo : std_logic;
SIGNAL ww_verde : std_logic;
SIGNAL ww_azul : std_logic;
SIGNAL ww_rojo_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_verde_out : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_azul_out : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rojo_out[0]~output_o\ : std_logic;
SIGNAL \rojo_out[1]~output_o\ : std_logic;
SIGNAL \rojo_out[2]~output_o\ : std_logic;
SIGNAL \rojo_out[3]~output_o\ : std_logic;
SIGNAL \rojo_out[4]~output_o\ : std_logic;
SIGNAL \rojo_out[5]~output_o\ : std_logic;
SIGNAL \verde_out[0]~output_o\ : std_logic;
SIGNAL \verde_out[1]~output_o\ : std_logic;
SIGNAL \verde_out[2]~output_o\ : std_logic;
SIGNAL \verde_out[3]~output_o\ : std_logic;
SIGNAL \verde_out[4]~output_o\ : std_logic;
SIGNAL \verde_out[5]~output_o\ : std_logic;
SIGNAL \azul_out[0]~output_o\ : std_logic;
SIGNAL \azul_out[1]~output_o\ : std_logic;
SIGNAL \azul_out[2]~output_o\ : std_logic;
SIGNAL \azul_out[3]~output_o\ : std_logic;
SIGNAL \azul_out[4]~output_o\ : std_logic;
SIGNAL \azul_out[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rojo~input_o\ : std_logic;
SIGNAL \rojo_out[0]~reg0_q\ : std_logic;
SIGNAL \rojo_out[1]~reg0_q\ : std_logic;
SIGNAL \rojo_out[2]~reg0_q\ : std_logic;
SIGNAL \rojo_out[3]~reg0_q\ : std_logic;
SIGNAL \rojo_out[4]~reg0_q\ : std_logic;
SIGNAL \rojo_out[5]~reg0_q\ : std_logic;
SIGNAL \verde~input_o\ : std_logic;
SIGNAL \verde_out~0_combout\ : std_logic;
SIGNAL \verde_out[0]~reg0_q\ : std_logic;
SIGNAL \verde_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \verde_out[1]~reg0_q\ : std_logic;
SIGNAL \verde_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \verde_out[2]~reg0_q\ : std_logic;
SIGNAL \verde_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \verde_out[3]~reg0_q\ : std_logic;
SIGNAL \verde_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \verde_out[4]~reg0_q\ : std_logic;
SIGNAL \verde_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \verde_out[5]~reg0_q\ : std_logic;
SIGNAL \azul~input_o\ : std_logic;
SIGNAL \azul_out~0_combout\ : std_logic;
SIGNAL \azul_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \azul_out[0]~reg0_q\ : std_logic;
SIGNAL \azul_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \azul_out[1]~reg0_q\ : std_logic;
SIGNAL \azul_out[2]~reg0feeder_combout\ : std_logic;
SIGNAL \azul_out[2]~reg0_q\ : std_logic;
SIGNAL \azul_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \azul_out[3]~reg0_q\ : std_logic;
SIGNAL \azul_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \azul_out[4]~reg0_q\ : std_logic;
SIGNAL \azul_out[5]~reg0feeder_combout\ : std_logic;
SIGNAL \azul_out[5]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rojo <= rojo;
ww_verde <= verde;
ww_azul <= azul;
rojo_out <= ww_rojo_out;
verde_out <= ww_verde_out;
azul_out <= ww_azul_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y3_N23
\rojo_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rojo_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \rojo_out[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\rojo_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rojo_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \rojo_out[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\rojo_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rojo_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \rojo_out[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\rojo_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rojo_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \rojo_out[3]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\rojo_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rojo_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \rojo_out[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\rojo_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rojo_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \rojo_out[5]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\verde_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verde_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \verde_out[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\verde_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verde_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \verde_out[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\verde_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verde_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \verde_out[2]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\verde_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verde_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \verde_out[3]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\verde_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verde_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \verde_out[4]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\verde_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verde_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \verde_out[5]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\azul_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \azul_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \azul_out[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\azul_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \azul_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \azul_out[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\azul_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \azul_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \azul_out[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\azul_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \azul_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \azul_out[3]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\azul_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \azul_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \azul_out[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N16
\azul_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \azul_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \azul_out[5]~output_o\);

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

-- Location: IOIBUF_X34_Y4_N22
\rojo~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rojo,
	o => \rojo~input_o\);

-- Location: FF_X28_Y3_N25
\rojo_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rojo~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rojo_out[0]~reg0_q\);

-- Location: FF_X28_Y3_N27
\rojo_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rojo~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rojo_out[1]~reg0_q\);

-- Location: FF_X28_Y3_N21
\rojo_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rojo~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rojo_out[2]~reg0_q\);

-- Location: FF_X28_Y3_N31
\rojo_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rojo~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rojo_out[3]~reg0_q\);

-- Location: FF_X28_Y3_N17
\rojo_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rojo~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rojo_out[4]~reg0_q\);

-- Location: FF_X28_Y3_N11
\rojo_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rojo~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rojo_out[5]~reg0_q\);

-- Location: IOIBUF_X30_Y24_N22
\verde~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_verde,
	o => \verde~input_o\);

-- Location: LCCOMB_X32_Y17_N8
\verde_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \verde_out~0_combout\ = (\verde~input_o\ & !\rojo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verde~input_o\,
	datad => \rojo~input_o\,
	combout => \verde_out~0_combout\);

-- Location: FF_X32_Y17_N1
\verde_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \verde_out~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verde_out[0]~reg0_q\);

-- Location: LCCOMB_X33_Y17_N8
\verde_out[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \verde_out[1]~reg0feeder_combout\ = \verde_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \verde_out~0_combout\,
	combout => \verde_out[1]~reg0feeder_combout\);

-- Location: FF_X33_Y17_N9
\verde_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verde_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verde_out[1]~reg0_q\);

-- Location: LCCOMB_X33_Y17_N2
\verde_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \verde_out[2]~reg0feeder_combout\ = \verde_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \verde_out~0_combout\,
	combout => \verde_out[2]~reg0feeder_combout\);

-- Location: FF_X33_Y17_N3
\verde_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verde_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verde_out[2]~reg0_q\);

-- Location: LCCOMB_X33_Y17_N12
\verde_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \verde_out[3]~reg0feeder_combout\ = \verde_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \verde_out~0_combout\,
	combout => \verde_out[3]~reg0feeder_combout\);

-- Location: FF_X33_Y17_N13
\verde_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verde_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verde_out[3]~reg0_q\);

-- Location: LCCOMB_X33_Y17_N22
\verde_out[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \verde_out[4]~reg0feeder_combout\ = \verde_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \verde_out~0_combout\,
	combout => \verde_out[4]~reg0feeder_combout\);

-- Location: FF_X33_Y17_N23
\verde_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verde_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verde_out[4]~reg0_q\);

-- Location: LCCOMB_X33_Y17_N24
\verde_out[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \verde_out[5]~reg0feeder_combout\ = \verde_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \verde_out~0_combout\,
	combout => \verde_out[5]~reg0feeder_combout\);

-- Location: FF_X33_Y17_N25
\verde_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verde_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verde_out[5]~reg0_q\);

-- Location: IOIBUF_X34_Y20_N8
\azul~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_azul,
	o => \azul~input_o\);

-- Location: LCCOMB_X32_Y17_N2
\azul_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \azul_out~0_combout\ = (!\verde~input_o\ & (!\rojo~input_o\ & \azul~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verde~input_o\,
	datab => \rojo~input_o\,
	datad => \azul~input_o\,
	combout => \azul_out~0_combout\);

-- Location: LCCOMB_X33_Y17_N10
\azul_out[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \azul_out[0]~reg0feeder_combout\ = \azul_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \azul_out~0_combout\,
	combout => \azul_out[0]~reg0feeder_combout\);

-- Location: FF_X33_Y17_N11
\azul_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \azul_out[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \azul_out[0]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N18
\azul_out[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \azul_out[1]~reg0feeder_combout\ = \azul_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \azul_out~0_combout\,
	combout => \azul_out[1]~reg0feeder_combout\);

-- Location: FF_X32_Y17_N19
\azul_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \azul_out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \azul_out[1]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N12
\azul_out[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \azul_out[2]~reg0feeder_combout\ = \azul_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \azul_out~0_combout\,
	combout => \azul_out[2]~reg0feeder_combout\);

-- Location: FF_X32_Y17_N13
\azul_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \azul_out[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \azul_out[2]~reg0_q\);

-- Location: LCCOMB_X33_Y17_N28
\azul_out[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \azul_out[3]~reg0feeder_combout\ = \azul_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \azul_out~0_combout\,
	combout => \azul_out[3]~reg0feeder_combout\);

-- Location: FF_X33_Y17_N29
\azul_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \azul_out[3]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \azul_out[3]~reg0_q\);

-- Location: LCCOMB_X32_Y17_N14
\azul_out[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \azul_out[4]~reg0feeder_combout\ = \azul_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \azul_out~0_combout\,
	combout => \azul_out[4]~reg0feeder_combout\);

-- Location: FF_X32_Y17_N15
\azul_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \azul_out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \azul_out[4]~reg0_q\);

-- Location: LCCOMB_X33_Y17_N14
\azul_out[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \azul_out[5]~reg0feeder_combout\ = \azul_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \azul_out~0_combout\,
	combout => \azul_out[5]~reg0feeder_combout\);

-- Location: FF_X33_Y17_N15
\azul_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \azul_out[5]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \azul_out[5]~reg0_q\);

ww_rojo_out(0) <= \rojo_out[0]~output_o\;

ww_rojo_out(1) <= \rojo_out[1]~output_o\;

ww_rojo_out(2) <= \rojo_out[2]~output_o\;

ww_rojo_out(3) <= \rojo_out[3]~output_o\;

ww_rojo_out(4) <= \rojo_out[4]~output_o\;

ww_rojo_out(5) <= \rojo_out[5]~output_o\;

ww_verde_out(0) <= \verde_out[0]~output_o\;

ww_verde_out(1) <= \verde_out[1]~output_o\;

ww_verde_out(2) <= \verde_out[2]~output_o\;

ww_verde_out(3) <= \verde_out[3]~output_o\;

ww_verde_out(4) <= \verde_out[4]~output_o\;

ww_verde_out(5) <= \verde_out[5]~output_o\;

ww_azul_out(0) <= \azul_out[0]~output_o\;

ww_azul_out(1) <= \azul_out[1]~output_o\;

ww_azul_out(2) <= \azul_out[2]~output_o\;

ww_azul_out(3) <= \azul_out[3]~output_o\;

ww_azul_out(4) <= \azul_out[4]~output_o\;

ww_azul_out(5) <= \azul_out[5]~output_o\;
END structure;


