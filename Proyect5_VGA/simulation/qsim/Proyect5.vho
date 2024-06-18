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

-- DATE "06/17/2024 15:12:36"

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

ENTITY 	Proyect5 IS
    PORT (
	clk : IN std_logic;
	rojo_in : IN std_logic_vector(5 DOWNTO 0);
	verde_in : IN std_logic_vector(5 DOWNTO 0);
	azul_in : IN std_logic_vector(5 DOWNTO 0);
	reset : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_Blank : OUT std_logic;
	VGA_Synd : OUT std_logic;
	VGA_clk : OUT std_logic;
	h_blank_sim : OUT std_logic;
	v_blank_sim : OUT std_logic;
	rojo_out : OUT std_logic_vector(9 DOWNTO 0);
	verde_out : OUT std_logic_vector(9 DOWNTO 0);
	azul_out : OUT std_logic_vector(9 DOWNTO 0)
	);
END Proyect5;

-- Design Ports Information
-- rojo_in[0]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_in[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_in[2]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_in[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_in[4]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_in[5]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_in[0]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_in[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_in[2]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_in[3]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_in[4]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_in[5]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_in[0]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_in[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_in[2]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_in[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_in[4]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_in[5]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_Blank	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_Synd	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_clk	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_blank_sim	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_blank_sim	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[0]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[2]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[4]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[5]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[6]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[7]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[8]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rojo_out[9]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[1]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[4]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[5]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[7]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[8]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- verde_out[9]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[0]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[1]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[2]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[5]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[6]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[8]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- azul_out[9]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Proyect5 IS
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
SIGNAL ww_rojo_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_verde_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_azul_in : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_Blank : std_logic;
SIGNAL ww_VGA_Synd : std_logic;
SIGNAL ww_VGA_clk : std_logic;
SIGNAL ww_h_blank_sim : std_logic;
SIGNAL ww_v_blank_sim : std_logic;
SIGNAL ww_rojo_out : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_verde_out : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_azul_out : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk_2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rojo_in[0]~input_o\ : std_logic;
SIGNAL \rojo_in[1]~input_o\ : std_logic;
SIGNAL \rojo_in[2]~input_o\ : std_logic;
SIGNAL \rojo_in[3]~input_o\ : std_logic;
SIGNAL \rojo_in[4]~input_o\ : std_logic;
SIGNAL \rojo_in[5]~input_o\ : std_logic;
SIGNAL \verde_in[0]~input_o\ : std_logic;
SIGNAL \verde_in[1]~input_o\ : std_logic;
SIGNAL \verde_in[2]~input_o\ : std_logic;
SIGNAL \verde_in[3]~input_o\ : std_logic;
SIGNAL \verde_in[4]~input_o\ : std_logic;
SIGNAL \verde_in[5]~input_o\ : std_logic;
SIGNAL \azul_in[0]~input_o\ : std_logic;
SIGNAL \azul_in[1]~input_o\ : std_logic;
SIGNAL \azul_in[2]~input_o\ : std_logic;
SIGNAL \azul_in[3]~input_o\ : std_logic;
SIGNAL \azul_in[4]~input_o\ : std_logic;
SIGNAL \azul_in[5]~input_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_Blank~output_o\ : std_logic;
SIGNAL \VGA_Synd~output_o\ : std_logic;
SIGNAL \VGA_clk~output_o\ : std_logic;
SIGNAL \h_blank_sim~output_o\ : std_logic;
SIGNAL \v_blank_sim~output_o\ : std_logic;
SIGNAL \rojo_out[0]~output_o\ : std_logic;
SIGNAL \rojo_out[1]~output_o\ : std_logic;
SIGNAL \rojo_out[2]~output_o\ : std_logic;
SIGNAL \rojo_out[3]~output_o\ : std_logic;
SIGNAL \rojo_out[4]~output_o\ : std_logic;
SIGNAL \rojo_out[5]~output_o\ : std_logic;
SIGNAL \rojo_out[6]~output_o\ : std_logic;
SIGNAL \rojo_out[7]~output_o\ : std_logic;
SIGNAL \rojo_out[8]~output_o\ : std_logic;
SIGNAL \rojo_out[9]~output_o\ : std_logic;
SIGNAL \verde_out[0]~output_o\ : std_logic;
SIGNAL \verde_out[1]~output_o\ : std_logic;
SIGNAL \verde_out[2]~output_o\ : std_logic;
SIGNAL \verde_out[3]~output_o\ : std_logic;
SIGNAL \verde_out[4]~output_o\ : std_logic;
SIGNAL \verde_out[5]~output_o\ : std_logic;
SIGNAL \verde_out[6]~output_o\ : std_logic;
SIGNAL \verde_out[7]~output_o\ : std_logic;
SIGNAL \verde_out[8]~output_o\ : std_logic;
SIGNAL \verde_out[9]~output_o\ : std_logic;
SIGNAL \azul_out[0]~output_o\ : std_logic;
SIGNAL \azul_out[1]~output_o\ : std_logic;
SIGNAL \azul_out[2]~output_o\ : std_logic;
SIGNAL \azul_out[3]~output_o\ : std_logic;
SIGNAL \azul_out[4]~output_o\ : std_logic;
SIGNAL \azul_out[5]~output_o\ : std_logic;
SIGNAL \azul_out[6]~output_o\ : std_logic;
SIGNAL \azul_out[7]~output_o\ : std_logic;
SIGNAL \azul_out[8]~output_o\ : std_logic;
SIGNAL \azul_out[9]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_2~0_combout\ : std_logic;
SIGNAL \clk_2~q\ : std_logic;
SIGNAL \clk_2~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[0]~1_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[1]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[2]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[2]~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[2]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[3]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[3]~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[3]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[4]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[4]~q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \state.b~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[4]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[5]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[5]~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[5]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[6]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[6]~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[6]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[7]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[7]~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[7]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[8]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[8]~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[8]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[9]~3_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[9]~q\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Selector12~1_combout\ : std_logic;
SIGNAL \state.c~q\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \state.d~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[9]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[9]~2_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[0]~q\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[0]~2\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[1]~1_combout\ : std_logic;
SIGNAL \VGA_horizontal:cont_int[1]~q\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Selector10~2_combout\ : std_logic;
SIGNAL \state.a~q\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \linea~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \linea~3_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \linea~2_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \VGA_vertical~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \linea~1_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \linea~0_combout\ : std_logic;
SIGNAL \VGA_vertical~0_combout\ : std_logic;
SIGNAL \VGA_vertical~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \VGA_vertical~3_combout\ : std_logic;
SIGNAL \VGA_vertical~4_combout\ : std_logic;
SIGNAL \VGA_vertical~6_combout\ : std_logic;
SIGNAL \VGA_vertical~5_combout\ : std_logic;
SIGNAL \VGA_vertical~7_combout\ : std_logic;
SIGNAL \VGA_VS~0_combout\ : std_logic;
SIGNAL \VGA_VS~1_combout\ : std_logic;
SIGNAL \VGA_VS~2_combout\ : std_logic;
SIGNAL \VGA_VS~3_combout\ : std_logic;
SIGNAL \VGA_VS~4_combout\ : std_logic;
SIGNAL \VGA_VS~5_combout\ : std_logic;
SIGNAL \VGA_VS~reg0_q\ : std_logic;
SIGNAL \V_blank~0_combout\ : std_logic;
SIGNAL \V_blank~q\ : std_logic;
SIGNAL linea : std_logic_vector(10 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rojo_in <= rojo_in;
ww_verde_in <= verde_in;
ww_azul_in <= azul_in;
ww_reset <= reset;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_Blank <= ww_VGA_Blank;
VGA_Synd <= ww_VGA_Synd;
VGA_clk <= ww_VGA_clk;
h_blank_sim <= ww_h_blank_sim;
v_blank_sim <= ww_v_blank_sim;
rojo_out <= ww_rojo_out;
verde_out <= ww_verde_out;
azul_out <= ww_azul_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk_2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_2~q\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y24_N16
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.a~q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_VS~reg0_q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\VGA_Blank~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_Blank~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\VGA_Synd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_Synd~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\VGA_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_2~q\,
	devoe => ww_devoe,
	o => \VGA_clk~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\h_blank_sim~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.c~q\,
	devoe => ww_devoe,
	o => \h_blank_sim~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\v_blank_sim~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \V_blank~q\,
	devoe => ww_devoe,
	o => \v_blank_sim~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\rojo_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\rojo_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[1]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\rojo_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[2]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\rojo_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[3]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\rojo_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\rojo_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\rojo_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\rojo_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\rojo_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\rojo_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rojo_out[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\verde_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\verde_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[1]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\verde_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\verde_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\verde_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[4]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\verde_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\verde_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\verde_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\verde_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[8]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\verde_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \verde_out[9]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\azul_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[0]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\azul_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[1]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\azul_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\azul_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\azul_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[4]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\azul_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\azul_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\azul_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[7]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\azul_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[8]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\azul_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \azul_out[9]~output_o\);

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

-- Location: LCCOMB_X33_Y12_N18
\clk_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_2~0_combout\ = !\clk_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_2~q\,
	combout => \clk_2~0_combout\);

-- Location: FF_X33_Y12_N29
clk_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \clk_2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_2~q\);

-- Location: CLKCTRL_G8
\clk_2~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_2~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y23_N8
\VGA_horizontal:cont_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[0]~1_combout\ = \VGA_horizontal:cont_int[0]~q\ $ (VCC)
-- \VGA_horizontal:cont_int[0]~2\ = CARRY(\VGA_horizontal:cont_int[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[0]~q\,
	datad => VCC,
	combout => \VGA_horizontal:cont_int[0]~1_combout\,
	cout => \VGA_horizontal:cont_int[0]~2\);

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

-- Location: LCCOMB_X10_Y23_N10
\VGA_horizontal:cont_int[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[1]~1_combout\ = (\VGA_horizontal:cont_int[1]~q\ & (!\VGA_horizontal:cont_int[0]~2\)) # (!\VGA_horizontal:cont_int[1]~q\ & ((\VGA_horizontal:cont_int[0]~2\) # (GND)))
-- \VGA_horizontal:cont_int[1]~2\ = CARRY((!\VGA_horizontal:cont_int[0]~2\) # (!\VGA_horizontal:cont_int[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[1]~q\,
	datad => VCC,
	cin => \VGA_horizontal:cont_int[0]~2\,
	combout => \VGA_horizontal:cont_int[1]~1_combout\,
	cout => \VGA_horizontal:cont_int[1]~2\);

-- Location: LCCOMB_X10_Y23_N12
\VGA_horizontal:cont_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[2]~1_combout\ = (\VGA_horizontal:cont_int[2]~q\ & (\VGA_horizontal:cont_int[1]~2\ $ (GND))) # (!\VGA_horizontal:cont_int[2]~q\ & (!\VGA_horizontal:cont_int[1]~2\ & VCC))
-- \VGA_horizontal:cont_int[2]~2\ = CARRY((\VGA_horizontal:cont_int[2]~q\ & !\VGA_horizontal:cont_int[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[2]~q\,
	datad => VCC,
	cin => \VGA_horizontal:cont_int[1]~2\,
	combout => \VGA_horizontal:cont_int[2]~1_combout\,
	cout => \VGA_horizontal:cont_int[2]~2\);

-- Location: FF_X10_Y23_N13
\VGA_horizontal:cont_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[2]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[2]~q\);

-- Location: LCCOMB_X10_Y23_N14
\VGA_horizontal:cont_int[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[3]~1_combout\ = (\VGA_horizontal:cont_int[3]~q\ & (!\VGA_horizontal:cont_int[2]~2\)) # (!\VGA_horizontal:cont_int[3]~q\ & ((\VGA_horizontal:cont_int[2]~2\) # (GND)))
-- \VGA_horizontal:cont_int[3]~2\ = CARRY((!\VGA_horizontal:cont_int[2]~2\) # (!\VGA_horizontal:cont_int[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[3]~q\,
	datad => VCC,
	cin => \VGA_horizontal:cont_int[2]~2\,
	combout => \VGA_horizontal:cont_int[3]~1_combout\,
	cout => \VGA_horizontal:cont_int[3]~2\);

-- Location: FF_X10_Y23_N15
\VGA_horizontal:cont_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[3]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[3]~q\);

-- Location: LCCOMB_X10_Y23_N16
\VGA_horizontal:cont_int[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[4]~1_combout\ = (\VGA_horizontal:cont_int[4]~q\ & (\VGA_horizontal:cont_int[3]~2\ $ (GND))) # (!\VGA_horizontal:cont_int[4]~q\ & (!\VGA_horizontal:cont_int[3]~2\ & VCC))
-- \VGA_horizontal:cont_int[4]~2\ = CARRY((\VGA_horizontal:cont_int[4]~q\ & !\VGA_horizontal:cont_int[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_horizontal:cont_int[4]~q\,
	datad => VCC,
	cin => \VGA_horizontal:cont_int[3]~2\,
	combout => \VGA_horizontal:cont_int[4]~1_combout\,
	cout => \VGA_horizontal:cont_int[4]~2\);

-- Location: FF_X10_Y23_N17
\VGA_horizontal:cont_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[4]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[4]~q\);

-- Location: LCCOMB_X10_Y23_N4
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (!\VGA_horizontal:cont_int[4]~q\ & (((!\VGA_horizontal:cont_int[1]~q\) # (!\VGA_horizontal:cont_int[3]~q\)) # (!\VGA_horizontal:cont_int[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_horizontal:cont_int[2]~q\,
	datab => \VGA_horizontal:cont_int[3]~q\,
	datac => \VGA_horizontal:cont_int[1]~q\,
	datad => \VGA_horizontal:cont_int[4]~q\,
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X9_Y23_N28
\Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\Selector11~0_combout\) # ((!\state.a~q\ & !\Selector10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.a~q\,
	datac => \Selector10~1_combout\,
	datad => \Selector11~0_combout\,
	combout => \Selector11~1_combout\);

-- Location: FF_X9_Y23_N29
\state.b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Selector11~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.b~q\);

-- Location: LCCOMB_X10_Y23_N18
\VGA_horizontal:cont_int[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[5]~1_combout\ = (\VGA_horizontal:cont_int[5]~q\ & (!\VGA_horizontal:cont_int[4]~2\)) # (!\VGA_horizontal:cont_int[5]~q\ & ((\VGA_horizontal:cont_int[4]~2\) # (GND)))
-- \VGA_horizontal:cont_int[5]~2\ = CARRY((!\VGA_horizontal:cont_int[4]~2\) # (!\VGA_horizontal:cont_int[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[5]~q\,
	datad => VCC,
	cin => \VGA_horizontal:cont_int[4]~2\,
	combout => \VGA_horizontal:cont_int[5]~1_combout\,
	cout => \VGA_horizontal:cont_int[5]~2\);

-- Location: FF_X10_Y23_N19
\VGA_horizontal:cont_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[5]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[5]~q\);

-- Location: LCCOMB_X10_Y23_N20
\VGA_horizontal:cont_int[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[6]~1_combout\ = (\VGA_horizontal:cont_int[6]~q\ & (\VGA_horizontal:cont_int[5]~2\ $ (GND))) # (!\VGA_horizontal:cont_int[6]~q\ & (!\VGA_horizontal:cont_int[5]~2\ & VCC))
-- \VGA_horizontal:cont_int[6]~2\ = CARRY((\VGA_horizontal:cont_int[6]~q\ & !\VGA_horizontal:cont_int[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[6]~q\,
	datad => VCC,
	cin => \VGA_horizontal:cont_int[5]~2\,
	combout => \VGA_horizontal:cont_int[6]~1_combout\,
	cout => \VGA_horizontal:cont_int[6]~2\);

-- Location: FF_X10_Y23_N21
\VGA_horizontal:cont_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[6]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[6]~q\);

-- Location: LCCOMB_X10_Y23_N22
\VGA_horizontal:cont_int[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[7]~1_combout\ = (\VGA_horizontal:cont_int[7]~q\ & (!\VGA_horizontal:cont_int[6]~2\)) # (!\VGA_horizontal:cont_int[7]~q\ & ((\VGA_horizontal:cont_int[6]~2\) # (GND)))
-- \VGA_horizontal:cont_int[7]~2\ = CARRY((!\VGA_horizontal:cont_int[6]~2\) # (!\VGA_horizontal:cont_int[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_horizontal:cont_int[7]~q\,
	datad => VCC,
	cin => \VGA_horizontal:cont_int[6]~2\,
	combout => \VGA_horizontal:cont_int[7]~1_combout\,
	cout => \VGA_horizontal:cont_int[7]~2\);

-- Location: FF_X10_Y23_N23
\VGA_horizontal:cont_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[7]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[7]~q\);

-- Location: LCCOMB_X10_Y23_N24
\VGA_horizontal:cont_int[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[8]~1_combout\ = (\VGA_horizontal:cont_int[8]~q\ & (\VGA_horizontal:cont_int[7]~2\ $ (GND))) # (!\VGA_horizontal:cont_int[8]~q\ & (!\VGA_horizontal:cont_int[7]~2\ & VCC))
-- \VGA_horizontal:cont_int[8]~2\ = CARRY((\VGA_horizontal:cont_int[8]~q\ & !\VGA_horizontal:cont_int[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[8]~q\,
	datad => VCC,
	cin => \VGA_horizontal:cont_int[7]~2\,
	combout => \VGA_horizontal:cont_int[8]~1_combout\,
	cout => \VGA_horizontal:cont_int[8]~2\);

-- Location: FF_X10_Y23_N25
\VGA_horizontal:cont_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[8]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[8]~q\);

-- Location: LCCOMB_X10_Y23_N26
\VGA_horizontal:cont_int[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[9]~3_combout\ = \VGA_horizontal:cont_int[9]~q\ $ (\VGA_horizontal:cont_int[8]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_horizontal:cont_int[9]~q\,
	cin => \VGA_horizontal:cont_int[8]~2\,
	combout => \VGA_horizontal:cont_int[9]~3_combout\);

-- Location: FF_X10_Y23_N27
\VGA_horizontal:cont_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[9]~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[9]~q\);

-- Location: LCCOMB_X9_Y23_N22
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!\VGA_horizontal:cont_int[6]~q\ & (!\VGA_horizontal:cont_int[9]~q\ & (!\VGA_horizontal:cont_int[8]~q\ & !\VGA_horizontal:cont_int[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_horizontal:cont_int[6]~q\,
	datab => \VGA_horizontal:cont_int[9]~q\,
	datac => \VGA_horizontal:cont_int[8]~q\,
	datad => \VGA_horizontal:cont_int[7]~q\,
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X9_Y23_N16
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.b~q\ & (\LessThan3~1_combout\ & ((\LessThan3~0_combout\) # (!\VGA_horizontal:cont_int[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \state.b~q\,
	datac => \LessThan3~1_combout\,
	datad => \VGA_horizontal:cont_int[5]~q\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X9_Y23_N20
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\VGA_horizontal:cont_int[5]~q\ & (\VGA_horizontal:cont_int[6]~q\ & \LessThan2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[5]~q\,
	datac => \VGA_horizontal:cont_int[6]~q\,
	datad => \LessThan2~0_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X9_Y23_N14
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ((!\VGA_horizontal:cont_int[8]~q\ & (!\VGA_horizontal:cont_int[7]~q\ & !\LessThan2~1_combout\))) # (!\VGA_horizontal:cont_int[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_horizontal:cont_int[8]~q\,
	datab => \VGA_horizontal:cont_int[7]~q\,
	datac => \VGA_horizontal:cont_int[9]~q\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X9_Y23_N18
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.b~q\ & (((\VGA_horizontal:cont_int[5]~q\ & !\LessThan3~0_combout\)) # (!\LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~1_combout\,
	datab => \VGA_horizontal:cont_int[5]~q\,
	datac => \LessThan3~0_combout\,
	datad => \state.b~q\,
	combout => \Selector12~0_combout\);

-- Location: LCCOMB_X9_Y23_N26
\Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~1_combout\ = (\Selector12~0_combout\) # ((\LessThan2~2_combout\ & \state.c~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~2_combout\,
	datac => \state.c~q\,
	datad => \Selector12~0_combout\,
	combout => \Selector12~1_combout\);

-- Location: FF_X9_Y23_N27
\state.c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Selector12~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.c~q\);

-- Location: LCCOMB_X10_Y23_N30
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.d~q\ & (!\VGA_horizontal:cont_int[5]~q\ & (\LessThan3~0_combout\ & \LessThan3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.d~q\,
	datab => \VGA_horizontal:cont_int[5]~q\,
	datac => \LessThan3~0_combout\,
	datad => \LessThan3~1_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X9_Y23_N12
\Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\Selector13~0_combout\) # ((\state.c~q\ & !\LessThan2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.c~q\,
	datab => \LessThan2~2_combout\,
	datac => \Selector13~0_combout\,
	combout => \Selector13~1_combout\);

-- Location: FF_X9_Y23_N13
\state.d\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Selector13~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.d~q\);

-- Location: LCCOMB_X10_Y23_N28
\VGA_horizontal:cont_int[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[9]~1_combout\ = (!\state.b~q\ & ((\Selector13~0_combout\) # ((!\state.d~q\ & \LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.d~q\,
	datab => \state.b~q\,
	datac => \Selector13~0_combout\,
	datad => \LessThan2~2_combout\,
	combout => \VGA_horizontal:cont_int[9]~1_combout\);

-- Location: LCCOMB_X10_Y23_N2
\VGA_horizontal:cont_int[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_horizontal:cont_int[9]~2_combout\ = (\state.a~q\ & (((!\Selector11~0_combout\ & !\VGA_horizontal:cont_int[9]~1_combout\)))) # (!\state.a~q\ & (!\Selector10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.a~q\,
	datab => \Selector10~1_combout\,
	datac => \Selector11~0_combout\,
	datad => \VGA_horizontal:cont_int[9]~1_combout\,
	combout => \VGA_horizontal:cont_int[9]~2_combout\);

-- Location: FF_X10_Y23_N9
\VGA_horizontal:cont_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[0]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[0]~q\);

-- Location: FF_X10_Y23_N11
\VGA_horizontal:cont_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \VGA_horizontal:cont_int[1]~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \VGA_horizontal:cont_int[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_horizontal:cont_int[1]~q\);

-- Location: LCCOMB_X10_Y23_N6
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\VGA_horizontal:cont_int[1]~q\ & (\VGA_horizontal:cont_int[3]~q\ & (\VGA_horizontal:cont_int[2]~q\ & \VGA_horizontal:cont_int[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_horizontal:cont_int[1]~q\,
	datab => \VGA_horizontal:cont_int[3]~q\,
	datac => \VGA_horizontal:cont_int[2]~q\,
	datad => \VGA_horizontal:cont_int[4]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X9_Y23_N10
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!\VGA_horizontal:cont_int[9]~q\ & (!\VGA_horizontal:cont_int[8]~q\ & !\VGA_horizontal:cont_int[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_horizontal:cont_int[9]~q\,
	datac => \VGA_horizontal:cont_int[8]~q\,
	datad => \VGA_horizontal:cont_int[7]~q\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X10_Y23_N0
\Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = (\LessThan3~2_combout\ & (((!\LessThan2~0_combout\ & !\VGA_horizontal:cont_int[5]~q\)) # (!\VGA_horizontal:cont_int[6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~0_combout\,
	datab => \VGA_horizontal:cont_int[5]~q\,
	datac => \VGA_horizontal:cont_int[6]~q\,
	datad => \LessThan3~2_combout\,
	combout => \Selector10~1_combout\);

-- Location: LCCOMB_X9_Y23_N24
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.d~q\ & ((\VGA_horizontal:cont_int[5]~q\) # ((!\LessThan3~0_combout\) # (!\LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.d~q\,
	datab => \VGA_horizontal:cont_int[5]~q\,
	datac => \LessThan3~1_combout\,
	datad => \LessThan3~0_combout\,
	combout => \Selector10~0_combout\);

-- Location: LCCOMB_X9_Y23_N8
\Selector10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~2_combout\ = (!\Selector10~0_combout\ & ((\state.a~q\) # (!\Selector10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector10~1_combout\,
	datac => \state.a~q\,
	datad => \Selector10~0_combout\,
	combout => \Selector10~2_combout\);

-- Location: FF_X9_Y23_N9
\state.a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Selector10~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.a~q\);

-- Location: LCCOMB_X9_Y22_N10
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (linea(1) & (!\Add1~1\)) # (!linea(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!linea(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => linea(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X9_Y22_N12
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (linea(2) & (\Add1~3\ $ (GND))) # (!linea(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((linea(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => linea(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X9_Y22_N4
\linea~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \linea~4_combout\ = (\Add1~4_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datac => \Equal0~3_combout\,
	combout => \linea~4_combout\);

-- Location: FF_X9_Y22_N5
\linea[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \linea~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(2));

-- Location: LCCOMB_X9_Y22_N14
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (linea(3) & (!\Add1~5\)) # (!linea(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!linea(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => linea(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X10_Y22_N16
\linea~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \linea~3_combout\ = (\Add1~6_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datad => \Equal0~3_combout\,
	combout => \linea~3_combout\);

-- Location: FF_X10_Y22_N17
\linea[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \linea~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(3));

-- Location: LCCOMB_X9_Y22_N16
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (linea(4) & (\Add1~7\ $ (GND))) # (!linea(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((linea(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => linea(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X9_Y22_N17
\linea[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(4));

-- Location: LCCOMB_X9_Y22_N18
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (linea(5) & (!\Add1~9\)) # (!linea(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!linea(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => linea(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X9_Y22_N19
\linea[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Add1~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(5));

-- Location: LCCOMB_X9_Y22_N20
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (linea(6) & (\Add1~11\ $ (GND))) # (!linea(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((linea(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => linea(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X9_Y22_N21
\linea[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Add1~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(6));

-- Location: LCCOMB_X9_Y22_N22
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (linea(7) & (!\Add1~13\)) # (!linea(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!linea(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => linea(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X9_Y22_N23
\linea[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(7));

-- Location: LCCOMB_X9_Y22_N24
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (linea(8) & (\Add1~15\ $ (GND))) # (!linea(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((linea(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => linea(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X9_Y22_N25
\linea[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Add1~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(8));

-- Location: LCCOMB_X9_Y22_N26
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (linea(9) & (!\Add1~17\)) # (!linea(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!linea(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => linea(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X9_Y22_N30
\linea~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \linea~2_combout\ = (!\Equal0~3_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~3_combout\,
	datad => \Add1~18_combout\,
	combout => \linea~2_combout\);

-- Location: FF_X9_Y22_N31
\linea[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \linea~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(9));

-- Location: LCCOMB_X10_Y22_N24
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (linea(3) & (linea(2) & linea(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => linea(3),
	datac => linea(2),
	datad => linea(9),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X9_Y22_N28
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = \Add1~19\ $ (!linea(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => linea(10),
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: FF_X9_Y22_N29
\linea[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(10));

-- Location: LCCOMB_X9_Y22_N2
\VGA_vertical~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_vertical~1_combout\ = (!linea(8) & (!linea(7) & !linea(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => linea(8),
	datac => linea(7),
	datad => linea(6),
	combout => \VGA_vertical~1_combout\);

-- Location: LCCOMB_X8_Y22_N18
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!linea(4) & (!linea(10) & (!linea(5) & \VGA_vertical~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(4),
	datab => linea(10),
	datac => linea(5),
	datad => \VGA_vertical~1_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y22_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\Equal0~2_combout\ & (!linea(0) & (!linea(1) & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => linea(0),
	datac => linea(1),
	datad => \Equal0~0_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X9_Y22_N8
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = linea(0) $ (GND)
-- \Add1~1\ = CARRY(!linea(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => linea(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X9_Y22_N0
\linea~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \linea~1_combout\ = (!\Equal0~3_combout\ & !\Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~3_combout\,
	datac => \Add1~0_combout\,
	combout => \linea~1_combout\);

-- Location: FF_X9_Y22_N1
\linea[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \linea~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(0));

-- Location: LCCOMB_X8_Y22_N16
\linea~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \linea~0_combout\ = (\Add1~2_combout\ & !\Equal0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \linea~0_combout\);

-- Location: FF_X8_Y22_N17
\linea[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_2~clkctrl_outclk\,
	d => \linea~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => linea(1));

-- Location: LCCOMB_X10_Y22_N26
\VGA_vertical~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_vertical~0_combout\ = (linea(3)) # ((linea(2)) # (linea(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => linea(3),
	datac => linea(2),
	datad => linea(9),
	combout => \VGA_vertical~0_combout\);

-- Location: LCCOMB_X8_Y22_N4
\VGA_vertical~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_vertical~2_combout\ = (linea(1)) # ((linea(0)) # ((\VGA_vertical~0_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(1),
	datab => linea(0),
	datac => \Equal0~0_combout\,
	datad => \VGA_vertical~0_combout\,
	combout => \VGA_vertical~2_combout\);

-- Location: LCCOMB_X8_Y22_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!linea(1) & (!linea(0) & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => linea(1),
	datac => linea(0),
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X8_Y22_N28
\VGA_vertical~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_vertical~3_combout\ = (linea(3) & (linea(2) & ((linea(1)) # (!linea(0))))) # (!linea(3) & (((!linea(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(1),
	datab => linea(0),
	datac => linea(3),
	datad => linea(2),
	combout => \VGA_vertical~3_combout\);

-- Location: LCCOMB_X8_Y22_N22
\VGA_vertical~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_vertical~4_combout\ = (\VGA_vertical~3_combout\) # (!linea(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => linea(9),
	datad => \VGA_vertical~3_combout\,
	combout => \VGA_vertical~4_combout\);

-- Location: LCCOMB_X8_Y22_N14
\VGA_vertical~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_vertical~6_combout\ = (!linea(6) & (!linea(8) & (!linea(9) & !linea(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(6),
	datab => linea(8),
	datac => linea(9),
	datad => linea(7),
	combout => \VGA_vertical~6_combout\);

-- Location: LCCOMB_X8_Y22_N12
\VGA_vertical~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_vertical~5_combout\ = (!linea(2) & (!linea(3) & ((linea(0)) # (!linea(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(2),
	datab => linea(1),
	datac => linea(0),
	datad => linea(3),
	combout => \VGA_vertical~5_combout\);

-- Location: LCCOMB_X8_Y22_N0
\VGA_vertical~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_vertical~7_combout\ = (linea(5) $ (((!linea(4) & \VGA_vertical~5_combout\)))) # (!\VGA_vertical~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(4),
	datab => linea(5),
	datac => \VGA_vertical~6_combout\,
	datad => \VGA_vertical~5_combout\,
	combout => \VGA_vertical~7_combout\);

-- Location: LCCOMB_X8_Y22_N26
\VGA_VS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_VS~0_combout\ = (linea(10) & (((\VGA_vertical~4_combout\)) # (!\Equal0~0_combout\))) # (!linea(10) & (\VGA_vertical~7_combout\ & ((\VGA_vertical~4_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(10),
	datab => \Equal0~0_combout\,
	datac => \VGA_vertical~4_combout\,
	datad => \VGA_vertical~7_combout\,
	combout => \VGA_VS~0_combout\);

-- Location: LCCOMB_X9_Y22_N6
\VGA_VS~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_VS~1_combout\ = ((!linea(4) & (!linea(2) & !linea(3)))) # (!linea(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(5),
	datab => linea(4),
	datac => linea(2),
	datad => linea(3),
	combout => \VGA_VS~1_combout\);

-- Location: LCCOMB_X8_Y22_N30
\VGA_VS~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_VS~2_combout\ = (!linea(10) & ((!\VGA_VS~1_combout\) # (!\VGA_vertical~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => linea(10),
	datac => \VGA_vertical~6_combout\,
	datad => \VGA_VS~1_combout\,
	combout => \VGA_VS~2_combout\);

-- Location: LCCOMB_X8_Y22_N20
\VGA_VS~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_VS~3_combout\ = (linea(4)) # ((linea(5)) # ((!\VGA_vertical~5_combout\) # (!\VGA_vertical~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(4),
	datab => linea(5),
	datac => \VGA_vertical~1_combout\,
	datad => \VGA_vertical~5_combout\,
	combout => \VGA_VS~3_combout\);

-- Location: LCCOMB_X8_Y22_N10
\VGA_VS~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_VS~4_combout\ = (\VGA_VS~2_combout\ & ((!\VGA_VS~3_combout\) # (!linea(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => linea(9),
	datac => \VGA_VS~2_combout\,
	datad => \VGA_VS~3_combout\,
	combout => \VGA_VS~4_combout\);

-- Location: LCCOMB_X8_Y22_N8
\VGA_VS~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_VS~5_combout\ = ((\VGA_VS~4_combout\) # ((!\VGA_vertical~0_combout\ & \Equal0~1_combout\))) # (!\VGA_VS~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_vertical~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \VGA_VS~0_combout\,
	datad => \VGA_VS~4_combout\,
	combout => \VGA_VS~5_combout\);

-- Location: FF_X8_Y22_N5
\VGA_VS~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \VGA_vertical~2_combout\,
	ena => \VGA_VS~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_VS~reg0_q\);

-- Location: LCCOMB_X8_Y22_N2
\V_blank~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \V_blank~0_combout\ = (\VGA_VS~4_combout\ & ((\VGA_vertical~7_combout\) # (linea(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_VS~4_combout\,
	datab => \VGA_vertical~7_combout\,
	datad => linea(10),
	combout => \V_blank~0_combout\);

-- Location: FF_X8_Y22_N3
V_blank : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \V_blank~0_combout\,
	ena => \VGA_VS~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \V_blank~q\);

-- Location: IOIBUF_X23_Y0_N8
\rojo_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rojo_in(0),
	o => \rojo_in[0]~input_o\);

-- Location: IOIBUF_X7_Y0_N1
\rojo_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rojo_in(1),
	o => \rojo_in[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\rojo_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rojo_in(2),
	o => \rojo_in[2]~input_o\);

-- Location: IOIBUF_X16_Y24_N1
\rojo_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rojo_in(3),
	o => \rojo_in[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\rojo_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rojo_in(4),
	o => \rojo_in[4]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\rojo_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rojo_in(5),
	o => \rojo_in[5]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\verde_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_verde_in(0),
	o => \verde_in[0]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\verde_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_verde_in(1),
	o => \verde_in[1]~input_o\);

-- Location: IOIBUF_X34_Y17_N22
\verde_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_verde_in(2),
	o => \verde_in[2]~input_o\);

-- Location: IOIBUF_X30_Y24_N1
\verde_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_verde_in(3),
	o => \verde_in[3]~input_o\);

-- Location: IOIBUF_X34_Y2_N15
\verde_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_verde_in(4),
	o => \verde_in[4]~input_o\);

-- Location: IOIBUF_X1_Y24_N1
\verde_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_verde_in(5),
	o => \verde_in[5]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\azul_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_azul_in(0),
	o => \azul_in[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\azul_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_azul_in(1),
	o => \azul_in[1]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\azul_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_azul_in(2),
	o => \azul_in[2]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\azul_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_azul_in(3),
	o => \azul_in[3]~input_o\);

-- Location: IOIBUF_X28_Y24_N8
\azul_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_azul_in(4),
	o => \azul_in[4]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\azul_in[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_azul_in(5),
	o => \azul_in[5]~input_o\);

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_Blank <= \VGA_Blank~output_o\;

ww_VGA_Synd <= \VGA_Synd~output_o\;

ww_VGA_clk <= \VGA_clk~output_o\;

ww_h_blank_sim <= \h_blank_sim~output_o\;

ww_v_blank_sim <= \v_blank_sim~output_o\;

ww_rojo_out(0) <= \rojo_out[0]~output_o\;

ww_rojo_out(1) <= \rojo_out[1]~output_o\;

ww_rojo_out(2) <= \rojo_out[2]~output_o\;

ww_rojo_out(3) <= \rojo_out[3]~output_o\;

ww_rojo_out(4) <= \rojo_out[4]~output_o\;

ww_rojo_out(5) <= \rojo_out[5]~output_o\;

ww_rojo_out(6) <= \rojo_out[6]~output_o\;

ww_rojo_out(7) <= \rojo_out[7]~output_o\;

ww_rojo_out(8) <= \rojo_out[8]~output_o\;

ww_rojo_out(9) <= \rojo_out[9]~output_o\;

ww_verde_out(0) <= \verde_out[0]~output_o\;

ww_verde_out(1) <= \verde_out[1]~output_o\;

ww_verde_out(2) <= \verde_out[2]~output_o\;

ww_verde_out(3) <= \verde_out[3]~output_o\;

ww_verde_out(4) <= \verde_out[4]~output_o\;

ww_verde_out(5) <= \verde_out[5]~output_o\;

ww_verde_out(6) <= \verde_out[6]~output_o\;

ww_verde_out(7) <= \verde_out[7]~output_o\;

ww_verde_out(8) <= \verde_out[8]~output_o\;

ww_verde_out(9) <= \verde_out[9]~output_o\;

ww_azul_out(0) <= \azul_out[0]~output_o\;

ww_azul_out(1) <= \azul_out[1]~output_o\;

ww_azul_out(2) <= \azul_out[2]~output_o\;

ww_azul_out(3) <= \azul_out[3]~output_o\;

ww_azul_out(4) <= \azul_out[4]~output_o\;

ww_azul_out(5) <= \azul_out[5]~output_o\;

ww_azul_out(6) <= \azul_out[6]~output_o\;

ww_azul_out(7) <= \azul_out[7]~output_o\;

ww_azul_out(8) <= \azul_out[8]~output_o\;

ww_azul_out(9) <= \azul_out[9]~output_o\;
END structure;


