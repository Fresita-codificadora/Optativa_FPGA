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

-- DATE "06/16/2024 21:12:51"

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

ENTITY 	Proyect4 IS
    PORT (
	clk : IN std_logic;
	a : IN std_logic;
	b : IN std_logic;
	reset : IN std_logic;
	dato : IN std_logic_vector(7 DOWNTO 0);
	fin : OUT std_logic;
	stado : OUT std_logic_vector(2 DOWNTO 0);
	reg_b : OUT std_logic_vector(7 DOWNTO 0);
	reg_a : OUT std_logic_vector(7 DOWNTO 0);
	reg_r : OUT std_logic_vector(7 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0)
	);
END Proyect4;

-- Design Ports Information
-- fin	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stado[0]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stado[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- stado[2]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[0]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[1]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[2]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[3]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[5]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[6]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_b[7]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[0]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[1]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[2]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[4]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[5]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[6]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_a[7]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[1]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[2]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[3]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[4]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[5]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[6]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reg_r[7]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[2]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dato[7]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Proyect4 IS
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
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_dato : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_fin : std_logic;
SIGNAL ww_stado : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_reg_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_reg_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fin~output_o\ : std_logic;
SIGNAL \stado[0]~output_o\ : std_logic;
SIGNAL \stado[1]~output_o\ : std_logic;
SIGNAL \stado[2]~output_o\ : std_logic;
SIGNAL \reg_b[0]~output_o\ : std_logic;
SIGNAL \reg_b[1]~output_o\ : std_logic;
SIGNAL \reg_b[2]~output_o\ : std_logic;
SIGNAL \reg_b[3]~output_o\ : std_logic;
SIGNAL \reg_b[4]~output_o\ : std_logic;
SIGNAL \reg_b[5]~output_o\ : std_logic;
SIGNAL \reg_b[6]~output_o\ : std_logic;
SIGNAL \reg_b[7]~output_o\ : std_logic;
SIGNAL \reg_a[0]~output_o\ : std_logic;
SIGNAL \reg_a[1]~output_o\ : std_logic;
SIGNAL \reg_a[2]~output_o\ : std_logic;
SIGNAL \reg_a[3]~output_o\ : std_logic;
SIGNAL \reg_a[4]~output_o\ : std_logic;
SIGNAL \reg_a[5]~output_o\ : std_logic;
SIGNAL \reg_a[6]~output_o\ : std_logic;
SIGNAL \reg_a[7]~output_o\ : std_logic;
SIGNAL \reg_r[0]~output_o\ : std_logic;
SIGNAL \reg_r[1]~output_o\ : std_logic;
SIGNAL \reg_r[2]~output_o\ : std_logic;
SIGNAL \reg_r[3]~output_o\ : std_logic;
SIGNAL \reg_r[4]~output_o\ : std_logic;
SIGNAL \reg_r[5]~output_o\ : std_logic;
SIGNAL \reg_r[6]~output_o\ : std_logic;
SIGNAL \reg_r[7]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \dato[7]~input_o\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \state.idle~0_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \a_reg[0]~0_combout\ : std_logic;
SIGNAL \dato[6]~input_o\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \state.dato_a~q\ : std_logic;
SIGNAL \b_reg[4]~0_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \dato[5]~input_o\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \dato[4]~input_o\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \dato[3]~input_o\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \dato[2]~input_o\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \dato[1]~input_o\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \dato[0]~input_o\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \r_reg[0]~8_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \r_reg[0]~9\ : std_logic;
SIGNAL \r_reg[1]~10_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \r_reg[1]~11\ : std_logic;
SIGNAL \r_reg[2]~12_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \r_reg[2]~13\ : std_logic;
SIGNAL \r_reg[3]~14_combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \r_reg[3]~15\ : std_logic;
SIGNAL \r_reg[4]~16_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \r_reg[4]~17\ : std_logic;
SIGNAL \r_reg[5]~18_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \r_reg[5]~19\ : std_logic;
SIGNAL \r_reg[6]~20_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_cout\ : std_logic;
SIGNAL \LessThan5~3_cout\ : std_logic;
SIGNAL \LessThan5~5_cout\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~9_cout\ : std_logic;
SIGNAL \LessThan5~11_cout\ : std_logic;
SIGNAL \LessThan5~13_cout\ : std_logic;
SIGNAL \LessThan5~14_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state.dato_b~q\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan2~1_cout\ : std_logic;
SIGNAL \LessThan2~3_cout\ : std_logic;
SIGNAL \LessThan2~5_cout\ : std_logic;
SIGNAL \LessThan2~7_cout\ : std_logic;
SIGNAL \LessThan2~9_cout\ : std_logic;
SIGNAL \LessThan2~11_cout\ : std_logic;
SIGNAL \LessThan2~13_cout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \state.a_mayor~q\ : std_logic;
SIGNAL \state.r_a~q\ : std_logic;
SIGNAL \LessThan3~1_cout\ : std_logic;
SIGNAL \LessThan3~3_cout\ : std_logic;
SIGNAL \LessThan3~5_cout\ : std_logic;
SIGNAL \LessThan3~7_cout\ : std_logic;
SIGNAL \LessThan3~9_cout\ : std_logic;
SIGNAL \LessThan3~11_cout\ : std_logic;
SIGNAL \LessThan3~13_cout\ : std_logic;
SIGNAL \LessThan3~14_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~13_cout\ : std_logic;
SIGNAL \LessThan1~14_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \state.b_mayor~q\ : std_logic;
SIGNAL \state.r_b~q\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \r_reg[6]~21\ : std_logic;
SIGNAL \r_reg[7]~22_combout\ : std_logic;
SIGNAL \LessThan4~1_cout\ : std_logic;
SIGNAL \LessThan4~3_cout\ : std_logic;
SIGNAL \LessThan4~5_cout\ : std_logic;
SIGNAL \LessThan4~7_cout\ : std_logic;
SIGNAL \LessThan4~9_cout\ : std_logic;
SIGNAL \LessThan4~11_cout\ : std_logic;
SIGNAL \LessThan4~13_cout\ : std_logic;
SIGNAL \LessThan4~14_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \state.final~q\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \output~0_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \Selector29~0_combout\ : std_logic;
SIGNAL \Selector28~0_combout\ : std_logic;
SIGNAL r_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL b_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL a_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_WideOr7~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr9~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_a <= a;
ww_b <= b;
ww_reset <= reset;
ww_dato <= dato;
fin <= ww_fin;
stado <= ww_stado;
reg_b <= ww_reg_b;
reg_a <= ww_reg_a;
reg_r <= ww_reg_r;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_WideOr7~0_combout\ <= NOT \WideOr7~0_combout\;
\ALT_INV_WideOr8~0_combout\ <= NOT \WideOr8~0_combout\;
\ALT_INV_WideOr9~0_combout\ <= NOT \WideOr9~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y3_N23
\fin~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.final~q\,
	devoe => ww_devoe,
	o => \fin~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\stado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr9~0_combout\,
	devoe => ww_devoe,
	o => \stado[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\stado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \stado[1]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\stado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \stado[2]~output_o\);

-- Location: IOOBUF_X34_Y2_N16
\reg_b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(0),
	devoe => ww_devoe,
	o => \reg_b[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\reg_b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(1),
	devoe => ww_devoe,
	o => \reg_b[1]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\reg_b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(2),
	devoe => ww_devoe,
	o => \reg_b[2]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\reg_b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(3),
	devoe => ww_devoe,
	o => \reg_b[3]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\reg_b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(4),
	devoe => ww_devoe,
	o => \reg_b[4]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\reg_b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(5),
	devoe => ww_devoe,
	o => \reg_b[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\reg_b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(6),
	devoe => ww_devoe,
	o => \reg_b[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\reg_b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => b_reg(7),
	devoe => ww_devoe,
	o => \reg_b[7]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\reg_a[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_reg(0),
	devoe => ww_devoe,
	o => \reg_a[0]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\reg_a[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_reg(1),
	devoe => ww_devoe,
	o => \reg_a[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\reg_a[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_reg(2),
	devoe => ww_devoe,
	o => \reg_a[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\reg_a[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_reg(3),
	devoe => ww_devoe,
	o => \reg_a[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\reg_a[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_reg(4),
	devoe => ww_devoe,
	o => \reg_a[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\reg_a[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_reg(5),
	devoe => ww_devoe,
	o => \reg_a[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\reg_a[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_reg(6),
	devoe => ww_devoe,
	o => \reg_a[6]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\reg_a[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => a_reg(7),
	devoe => ww_devoe,
	o => \reg_a[7]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\reg_r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(0),
	devoe => ww_devoe,
	o => \reg_r[0]~output_o\);

-- Location: IOOBUF_X34_Y2_N23
\reg_r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(1),
	devoe => ww_devoe,
	o => \reg_r[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\reg_r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(2),
	devoe => ww_devoe,
	o => \reg_r[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\reg_r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(3),
	devoe => ww_devoe,
	o => \reg_r[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\reg_r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(4),
	devoe => ww_devoe,
	o => \reg_r[4]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\reg_r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(5),
	devoe => ww_devoe,
	o => \reg_r[5]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\reg_r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(6),
	devoe => ww_devoe,
	o => \reg_r[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\reg_r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_reg(7),
	devoe => ww_devoe,
	o => \reg_r[7]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector35~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X32_Y0_N16
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector34~0_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector33~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector32~0_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector31~0_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector30~0_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector29~0_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector28~0_combout\,
	devoe => ww_devoe,
	o => \output[7]~output_o\);

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

-- Location: IOIBUF_X18_Y24_N22
\dato[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(7),
	o => \dato[7]~input_o\);

-- Location: LCCOMB_X14_Y2_N30
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\state.r_a~q\ & (r_reg(7))) # (!\state.r_a~q\ & ((\dato[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_a~q\,
	datab => r_reg(7),
	datac => \dato[7]~input_o\,
	combout => \Selector4~0_combout\);

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

-- Location: IOIBUF_X32_Y0_N8
\a~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LCCOMB_X14_Y2_N28
\state.idle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.idle~0_combout\ = (\state.idle~q\) # (!\a~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \state.idle~q\,
	combout => \state.idle~0_combout\);

-- Location: FF_X14_Y2_N29
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

-- Location: LCCOMB_X13_Y1_N2
\a_reg[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \a_reg[0]~0_combout\ = (\state.idle~q\ & ((\state.r_a~q\))) # (!\state.idle~q\ & (!\a~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \state.r_a~q\,
	datad => \state.idle~q\,
	combout => \a_reg[0]~0_combout\);

-- Location: FF_X14_Y2_N31
\a_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \a_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(7));

-- Location: IOIBUF_X18_Y24_N15
\dato[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(6),
	o => \dato[6]~input_o\);

-- Location: LCCOMB_X12_Y3_N12
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = \state.a_mayor~q\ $ (a_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => a_reg(6),
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X14_Y3_N28
\Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.r_b~q\ & (r_reg(6))) # (!\state.r_b~q\ & ((\dato[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_reg(6),
	datac => \dato[6]~input_o\,
	datad => \state.r_b~q\,
	combout => \Selector13~0_combout\);

-- Location: IOIBUF_X30_Y0_N1
\b~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X13_Y1_N22
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\state.dato_a~q\ & \b~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.dato_a~q\,
	datad => \b~input_o\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X13_Y1_N26
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\) # ((!\a~input_o\ & ((\state.final~q\) # (!\state.idle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~0_combout\,
	datab => \state.final~q\,
	datac => \a~input_o\,
	datad => \state.idle~q\,
	combout => \Selector0~1_combout\);

-- Location: FF_X13_Y1_N27
\state.dato_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.dato_a~q\);

-- Location: LCCOMB_X16_Y3_N10
\b_reg[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \b_reg[4]~0_combout\ = (\state.dato_a~q\ & (!\b~input_o\)) # (!\state.dato_a~q\ & ((\state.r_b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datac => \state.r_b~q\,
	datad => \state.dato_a~q\,
	combout => \b_reg[4]~0_combout\);

-- Location: FF_X14_Y3_N29
\b_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector13~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(6));

-- Location: LCCOMB_X12_Y3_N18
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \state.a_mayor~q\ $ (b_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => b_reg(6),
	combout => \Add0~12_combout\);

-- Location: IOIBUF_X13_Y24_N15
\dato[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(5),
	o => \dato[5]~input_o\);

-- Location: LCCOMB_X14_Y3_N18
\Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\state.r_b~q\ & (r_reg(5))) # (!\state.r_b~q\ & ((\dato[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(5),
	datac => \dato[5]~input_o\,
	datad => \state.r_b~q\,
	combout => \Selector14~0_combout\);

-- Location: FF_X14_Y3_N19
\b_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector14~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(5));

-- Location: LCCOMB_X12_Y3_N6
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \state.a_mayor~q\ $ (b_reg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => b_reg(5),
	combout => \Add0~10_combout\);

-- Location: IOIBUF_X25_Y0_N1
\dato[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(4),
	o => \dato[4]~input_o\);

-- Location: LCCOMB_X14_Y1_N0
\Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.r_a~q\ & ((r_reg(4)))) # (!\state.r_a~q\ & (\dato[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dato[4]~input_o\,
	datac => r_reg(4),
	datad => \state.r_a~q\,
	combout => \Selector7~0_combout\);

-- Location: FF_X14_Y1_N1
\a_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \a_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(4));

-- Location: LCCOMB_X12_Y3_N20
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = \state.a_mayor~q\ $ (a_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => a_reg(4),
	combout => \Add0~9_combout\);

-- Location: IOIBUF_X16_Y24_N22
\dato[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(3),
	o => \dato[3]~input_o\);

-- Location: LCCOMB_X13_Y2_N6
\Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.r_b~q\ & ((r_reg(3)))) # (!\state.r_b~q\ & (\dato[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato[3]~input_o\,
	datab => \state.r_b~q\,
	datad => r_reg(3),
	combout => \Selector16~0_combout\);

-- Location: FF_X14_Y3_N31
\b_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector16~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(3));

-- Location: LCCOMB_X12_Y3_N28
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = b_reg(3) $ (\state.a_mayor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(3),
	datac => \state.a_mayor~q\,
	combout => \Add0~6_combout\);

-- Location: IOIBUF_X21_Y0_N8
\dato[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(2),
	o => \dato[2]~input_o\);

-- Location: LCCOMB_X14_Y3_N16
\Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.r_b~q\ & (r_reg(2))) # (!\state.r_b~q\ & ((\dato[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_b~q\,
	datab => r_reg(2),
	datad => \dato[2]~input_o\,
	combout => \Selector17~0_combout\);

-- Location: FF_X14_Y3_N17
\b_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector17~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(2));

-- Location: LCCOMB_X12_Y3_N2
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \state.a_mayor~q\ $ (b_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => b_reg(2),
	combout => \Add0~4_combout\);

-- Location: IOIBUF_X23_Y24_N15
\dato[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(1),
	o => \dato[1]~input_o\);

-- Location: LCCOMB_X16_Y3_N20
\Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.r_b~q\ & (r_reg(1))) # (!\state.r_b~q\ & ((\dato[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(1),
	datac => \state.r_b~q\,
	datad => \dato[1]~input_o\,
	combout => \Selector18~0_combout\);

-- Location: FF_X14_Y3_N27
\b_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector18~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(1));

-- Location: LCCOMB_X14_Y3_N26
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = b_reg(1) $ (\state.a_mayor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => b_reg(1),
	datad => \state.a_mayor~q\,
	combout => \Add0~2_combout\);

-- Location: IOIBUF_X28_Y0_N1
\dato[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dato(0),
	o => \dato[0]~input_o\);

-- Location: LCCOMB_X12_Y3_N4
\Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.r_b~q\ & (r_reg(0))) # (!\state.r_b~q\ & ((\dato[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => r_reg(0),
	datac => \dato[0]~input_o\,
	datad => \state.r_b~q\,
	combout => \Selector19~0_combout\);

-- Location: FF_X14_Y3_N25
\b_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector19~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(0));

-- Location: LCCOMB_X14_Y3_N22
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = b_reg(0) $ (\state.a_mayor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => b_reg(0),
	datad => \state.a_mayor~q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X13_Y3_N16
\r_reg[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_reg[0]~8_combout\ = (\Add0~1_combout\ & (\Add0~0_combout\ $ (VCC))) # (!\Add0~1_combout\ & ((\Add0~0_combout\) # (GND)))
-- \r_reg[0]~9\ = CARRY((\Add0~0_combout\) # (!\Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datab => \Add0~0_combout\,
	datad => VCC,
	combout => \r_reg[0]~8_combout\,
	cout => \r_reg[0]~9\);

-- Location: LCCOMB_X12_Y3_N22
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (\state.a_mayor~q\) # (\state.b_mayor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => \state.b_mayor~q\,
	combout => \WideOr5~0_combout\);

-- Location: FF_X13_Y3_N17
\r_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_reg[0]~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(0));

-- Location: LCCOMB_X14_Y1_N8
\Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\state.r_a~q\ & (r_reg(0))) # (!\state.r_a~q\ & ((\dato[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.r_a~q\,
	datac => r_reg(0),
	datad => \dato[0]~input_o\,
	combout => \Selector11~0_combout\);

-- Location: FF_X14_Y1_N9
\a_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector11~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \a_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(0));

-- Location: LCCOMB_X14_Y1_N4
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = a_reg(0) $ (\state.a_mayor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_reg(0),
	datad => \state.a_mayor~q\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X13_Y3_N18
\r_reg[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_reg[1]~10_combout\ = (\Add0~3_combout\ & ((\Add0~2_combout\ & (!\r_reg[0]~9\)) # (!\Add0~2_combout\ & ((\r_reg[0]~9\) # (GND))))) # (!\Add0~3_combout\ & ((\Add0~2_combout\ & (\r_reg[0]~9\ & VCC)) # (!\Add0~2_combout\ & (!\r_reg[0]~9\))))
-- \r_reg[1]~11\ = CARRY((\Add0~3_combout\ & ((!\r_reg[0]~9\) # (!\Add0~2_combout\))) # (!\Add0~3_combout\ & (!\Add0~2_combout\ & !\r_reg[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Add0~2_combout\,
	datad => VCC,
	cin => \r_reg[0]~9\,
	combout => \r_reg[1]~10_combout\,
	cout => \r_reg[1]~11\);

-- Location: FF_X13_Y3_N19
\r_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_reg[1]~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(1));

-- Location: LCCOMB_X14_Y1_N6
\Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.r_a~q\ & ((r_reg(1)))) # (!\state.r_a~q\ & (\dato[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato[1]~input_o\,
	datab => r_reg(1),
	datad => \state.r_a~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X14_Y1_N7
\a_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector10~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \a_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(1));

-- Location: LCCOMB_X12_Y3_N0
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \state.a_mayor~q\ $ (a_reg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => a_reg(1),
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X13_Y3_N20
\r_reg[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_reg[2]~12_combout\ = ((\Add0~5_combout\ $ (\Add0~4_combout\ $ (\r_reg[1]~11\)))) # (GND)
-- \r_reg[2]~13\ = CARRY((\Add0~5_combout\ & (\Add0~4_combout\ & !\r_reg[1]~11\)) # (!\Add0~5_combout\ & ((\Add0~4_combout\) # (!\r_reg[1]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Add0~4_combout\,
	datad => VCC,
	cin => \r_reg[1]~11\,
	combout => \r_reg[2]~12_combout\,
	cout => \r_reg[2]~13\);

-- Location: FF_X13_Y3_N21
\r_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_reg[2]~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(2));

-- Location: LCCOMB_X14_Y3_N24
\Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.r_a~q\ & ((r_reg(2)))) # (!\state.r_a~q\ & (\dato[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato[2]~input_o\,
	datab => r_reg(2),
	datad => \state.r_a~q\,
	combout => \Selector9~0_combout\);

-- Location: FF_X14_Y1_N29
\a_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector9~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \a_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(2));

-- Location: LCCOMB_X14_Y1_N10
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = a_reg(2) $ (\state.a_mayor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_reg(2),
	datad => \state.a_mayor~q\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X13_Y3_N22
\r_reg[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_reg[3]~14_combout\ = (\Add0~7_combout\ & ((\Add0~6_combout\ & (!\r_reg[2]~13\)) # (!\Add0~6_combout\ & ((\r_reg[2]~13\) # (GND))))) # (!\Add0~7_combout\ & ((\Add0~6_combout\ & (\r_reg[2]~13\ & VCC)) # (!\Add0~6_combout\ & (!\r_reg[2]~13\))))
-- \r_reg[3]~15\ = CARRY((\Add0~7_combout\ & ((!\r_reg[2]~13\) # (!\Add0~6_combout\))) # (!\Add0~7_combout\ & (!\Add0~6_combout\ & !\r_reg[2]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \Add0~6_combout\,
	datad => VCC,
	cin => \r_reg[2]~13\,
	combout => \r_reg[3]~14_combout\,
	cout => \r_reg[3]~15\);

-- Location: FF_X13_Y3_N23
\r_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_reg[3]~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(3));

-- Location: LCCOMB_X14_Y1_N2
\Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\state.r_a~q\ & ((r_reg(3)))) # (!\state.r_a~q\ & (\dato[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato[3]~input_o\,
	datac => r_reg(3),
	datad => \state.r_a~q\,
	combout => \Selector8~0_combout\);

-- Location: FF_X14_Y1_N3
\a_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \a_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(3));

-- Location: LCCOMB_X14_Y1_N28
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = a_reg(3) $ (\state.a_mayor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_reg(3),
	datad => \state.a_mayor~q\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X13_Y3_N24
\r_reg[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_reg[4]~16_combout\ = ((\Add0~8_combout\ $ (\Add0~9_combout\ $ (\r_reg[3]~15\)))) # (GND)
-- \r_reg[4]~17\ = CARRY((\Add0~8_combout\ & ((!\r_reg[3]~15\) # (!\Add0~9_combout\))) # (!\Add0~8_combout\ & (!\Add0~9_combout\ & !\r_reg[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Add0~9_combout\,
	datad => VCC,
	cin => \r_reg[3]~15\,
	combout => \r_reg[4]~16_combout\,
	cout => \r_reg[4]~17\);

-- Location: FF_X13_Y3_N25
\r_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_reg[4]~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(4));

-- Location: LCCOMB_X14_Y3_N20
\Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.r_b~q\ & ((r_reg(4)))) # (!\state.r_b~q\ & (\dato[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_b~q\,
	datac => \dato[4]~input_o\,
	datad => r_reg(4),
	combout => \Selector15~0_combout\);

-- Location: FF_X14_Y3_N21
\b_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector15~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \b_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(4));

-- Location: LCCOMB_X12_Y3_N10
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \state.a_mayor~q\ $ (b_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => b_reg(4),
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X13_Y3_N26
\r_reg[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_reg[5]~18_combout\ = (\Add0~11_combout\ & ((\Add0~10_combout\ & (!\r_reg[4]~17\)) # (!\Add0~10_combout\ & ((\r_reg[4]~17\) # (GND))))) # (!\Add0~11_combout\ & ((\Add0~10_combout\ & (\r_reg[4]~17\ & VCC)) # (!\Add0~10_combout\ & (!\r_reg[4]~17\))))
-- \r_reg[5]~19\ = CARRY((\Add0~11_combout\ & ((!\r_reg[4]~17\) # (!\Add0~10_combout\))) # (!\Add0~11_combout\ & (!\Add0~10_combout\ & !\r_reg[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \r_reg[4]~17\,
	combout => \r_reg[5]~18_combout\,
	cout => \r_reg[5]~19\);

-- Location: FF_X13_Y3_N27
\r_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_reg[5]~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(5));

-- Location: LCCOMB_X14_Y1_N30
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\state.r_a~q\ & ((r_reg(5)))) # (!\state.r_a~q\ & (\dato[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dato[5]~input_o\,
	datab => \state.r_a~q\,
	datad => r_reg(5),
	combout => \Selector6~0_combout\);

-- Location: FF_X13_Y1_N23
\a_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector6~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \a_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(5));

-- Location: LCCOMB_X12_Y3_N16
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \state.a_mayor~q\ $ (a_reg(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.a_mayor~q\,
	datac => a_reg(5),
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X13_Y3_N28
\r_reg[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_reg[6]~20_combout\ = ((\Add0~13_combout\ $ (\Add0~12_combout\ $ (\r_reg[5]~19\)))) # (GND)
-- \r_reg[6]~21\ = CARRY((\Add0~13_combout\ & (\Add0~12_combout\ & !\r_reg[5]~19\)) # (!\Add0~13_combout\ & ((\Add0~12_combout\) # (!\r_reg[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \r_reg[5]~19\,
	combout => \r_reg[6]~20_combout\,
	cout => \r_reg[6]~21\);

-- Location: FF_X13_Y3_N29
\r_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_reg[6]~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(6));

-- Location: LCCOMB_X14_Y3_N30
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\state.r_a~q\ & ((r_reg(6)))) # (!\state.r_a~q\ & (\dato[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_a~q\,
	datab => \dato[6]~input_o\,
	datad => r_reg(6),
	combout => \Selector5~0_combout\);

-- Location: FF_X14_Y1_N31
\a_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector5~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \a_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => a_reg(6));

-- Location: LCCOMB_X14_Y1_N12
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_cout\ = CARRY((!r_reg(0) & a_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(0),
	datab => a_reg(0),
	datad => VCC,
	cout => \LessThan5~1_cout\);

-- Location: LCCOMB_X14_Y1_N14
\LessThan5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~3_cout\ = CARRY((a_reg(1) & (r_reg(1) & !\LessThan5~1_cout\)) # (!a_reg(1) & ((r_reg(1)) # (!\LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(1),
	datab => r_reg(1),
	datad => VCC,
	cin => \LessThan5~1_cout\,
	cout => \LessThan5~3_cout\);

-- Location: LCCOMB_X14_Y1_N16
\LessThan5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~5_cout\ = CARRY((r_reg(2) & (a_reg(2) & !\LessThan5~3_cout\)) # (!r_reg(2) & ((a_reg(2)) # (!\LessThan5~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(2),
	datab => a_reg(2),
	datad => VCC,
	cin => \LessThan5~3_cout\,
	cout => \LessThan5~5_cout\);

-- Location: LCCOMB_X14_Y1_N18
\LessThan5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((r_reg(3) & ((!\LessThan5~5_cout\) # (!a_reg(3)))) # (!r_reg(3) & (!a_reg(3) & !\LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(3),
	datab => a_reg(3),
	datad => VCC,
	cin => \LessThan5~5_cout\,
	cout => \LessThan5~7_cout\);

-- Location: LCCOMB_X14_Y1_N20
\LessThan5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~9_cout\ = CARRY((r_reg(4) & (a_reg(4) & !\LessThan5~7_cout\)) # (!r_reg(4) & ((a_reg(4)) # (!\LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(4),
	datab => a_reg(4),
	datad => VCC,
	cin => \LessThan5~7_cout\,
	cout => \LessThan5~9_cout\);

-- Location: LCCOMB_X14_Y1_N22
\LessThan5~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~11_cout\ = CARRY((r_reg(5) & ((!\LessThan5~9_cout\) # (!a_reg(5)))) # (!r_reg(5) & (!a_reg(5) & !\LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(5),
	datab => a_reg(5),
	datad => VCC,
	cin => \LessThan5~9_cout\,
	cout => \LessThan5~11_cout\);

-- Location: LCCOMB_X14_Y1_N24
\LessThan5~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~13_cout\ = CARRY((a_reg(6) & ((!\LessThan5~11_cout\) # (!r_reg(6)))) # (!a_reg(6) & (!r_reg(6) & !\LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(6),
	datab => r_reg(6),
	datad => VCC,
	cin => \LessThan5~11_cout\,
	cout => \LessThan5~13_cout\);

-- Location: LCCOMB_X14_Y1_N26
\LessThan5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~14_combout\ = (r_reg(7) & (\LessThan5~13_cout\ & a_reg(7))) # (!r_reg(7) & ((\LessThan5~13_cout\) # (a_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(7),
	datad => a_reg(7),
	cin => \LessThan5~13_cout\,
	combout => \LessThan5~14_combout\);

-- Location: LCCOMB_X16_Y3_N4
\state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~13_combout\ = (!\b~input_o\ & \state.dato_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~input_o\,
	datad => \state.dato_a~q\,
	combout => \state~13_combout\);

-- Location: FF_X16_Y3_N5
\state.dato_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.dato_b~q\);

-- Location: LCCOMB_X13_Y1_N4
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!b_reg(0) & a_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(0),
	datab => a_reg(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X13_Y1_N6
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((a_reg(1) & (b_reg(1) & !\LessThan0~1_cout\)) # (!a_reg(1) & ((b_reg(1)) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(1),
	datab => b_reg(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X13_Y1_N8
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((b_reg(2) & (a_reg(2) & !\LessThan0~3_cout\)) # (!b_reg(2) & ((a_reg(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(2),
	datab => a_reg(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X13_Y1_N10
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((a_reg(3) & (b_reg(3) & !\LessThan0~5_cout\)) # (!a_reg(3) & ((b_reg(3)) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(3),
	datab => b_reg(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X13_Y1_N12
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((b_reg(4) & (a_reg(4) & !\LessThan0~7_cout\)) # (!b_reg(4) & ((a_reg(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(4),
	datab => a_reg(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X13_Y1_N14
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((b_reg(5) & ((!\LessThan0~9_cout\) # (!a_reg(5)))) # (!b_reg(5) & (!a_reg(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(5),
	datab => a_reg(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X13_Y1_N16
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((b_reg(6) & (a_reg(6) & !\LessThan0~11_cout\)) # (!b_reg(6) & ((a_reg(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(6),
	datab => a_reg(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X13_Y1_N18
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (a_reg(7) & ((\LessThan0~13_cout\) # (!b_reg(7)))) # (!a_reg(7) & (\LessThan0~13_cout\ & !b_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => a_reg(7),
	datad => b_reg(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X13_Y3_N0
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_cout\ = CARRY((!b_reg(0) & r_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(0),
	datab => r_reg(0),
	datad => VCC,
	cout => \LessThan2~1_cout\);

-- Location: LCCOMB_X13_Y3_N2
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_cout\ = CARRY((r_reg(1) & (b_reg(1) & !\LessThan2~1_cout\)) # (!r_reg(1) & ((b_reg(1)) # (!\LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(1),
	datab => b_reg(1),
	datad => VCC,
	cin => \LessThan2~1_cout\,
	cout => \LessThan2~3_cout\);

-- Location: LCCOMB_X13_Y3_N4
\LessThan2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~5_cout\ = CARRY((b_reg(2) & (r_reg(2) & !\LessThan2~3_cout\)) # (!b_reg(2) & ((r_reg(2)) # (!\LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(2),
	datab => r_reg(2),
	datad => VCC,
	cin => \LessThan2~3_cout\,
	cout => \LessThan2~5_cout\);

-- Location: LCCOMB_X13_Y3_N6
\LessThan2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~7_cout\ = CARRY((b_reg(3) & ((!\LessThan2~5_cout\) # (!r_reg(3)))) # (!b_reg(3) & (!r_reg(3) & !\LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(3),
	datab => r_reg(3),
	datad => VCC,
	cin => \LessThan2~5_cout\,
	cout => \LessThan2~7_cout\);

-- Location: LCCOMB_X13_Y3_N8
\LessThan2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~9_cout\ = CARRY((r_reg(4) & ((!\LessThan2~7_cout\) # (!b_reg(4)))) # (!r_reg(4) & (!b_reg(4) & !\LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(4),
	datab => b_reg(4),
	datad => VCC,
	cin => \LessThan2~7_cout\,
	cout => \LessThan2~9_cout\);

-- Location: LCCOMB_X13_Y3_N10
\LessThan2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~11_cout\ = CARRY((r_reg(5) & (b_reg(5) & !\LessThan2~9_cout\)) # (!r_reg(5) & ((b_reg(5)) # (!\LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(5),
	datab => b_reg(5),
	datad => VCC,
	cin => \LessThan2~9_cout\,
	cout => \LessThan2~11_cout\);

-- Location: LCCOMB_X13_Y3_N12
\LessThan2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~13_cout\ = CARRY((r_reg(6) & ((!\LessThan2~11_cout\) # (!b_reg(6)))) # (!r_reg(6) & (!b_reg(6) & !\LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(6),
	datab => b_reg(6),
	datad => VCC,
	cin => \LessThan2~11_cout\,
	cout => \LessThan2~13_cout\);

-- Location: LCCOMB_X13_Y3_N14
\LessThan2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = (r_reg(7) & ((\LessThan2~13_cout\) # (!b_reg(7)))) # (!r_reg(7) & (\LessThan2~13_cout\ & !b_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(7),
	datad => b_reg(7),
	cin => \LessThan2~13_cout\,
	combout => \LessThan2~14_combout\);

-- Location: LCCOMB_X13_Y1_N20
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.dato_b~q\ & ((\LessThan0~14_combout\) # ((\state.r_a~q\ & \LessThan2~14_combout\)))) # (!\state.dato_b~q\ & (((\state.r_a~q\ & \LessThan2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.dato_b~q\,
	datab => \LessThan0~14_combout\,
	datac => \state.r_a~q\,
	datad => \LessThan2~14_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X13_Y1_N30
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\state.r_b~q\ & (\LessThan5~14_combout\ & !\LessThan4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_b~q\,
	datab => \LessThan5~14_combout\,
	datac => \LessThan4~14_combout\,
	datad => \Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X13_Y1_N31
\state.a_mayor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.a_mayor~q\);

-- Location: FF_X13_Y2_N7
\state.r_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.a_mayor~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.r_a~q\);

-- Location: LCCOMB_X14_Y3_N0
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_cout\ = CARRY((!r_reg(0) & b_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(0),
	datab => b_reg(0),
	datad => VCC,
	cout => \LessThan3~1_cout\);

-- Location: LCCOMB_X14_Y3_N2
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_cout\ = CARRY((b_reg(1) & (r_reg(1) & !\LessThan3~1_cout\)) # (!b_reg(1) & ((r_reg(1)) # (!\LessThan3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(1),
	datab => r_reg(1),
	datad => VCC,
	cin => \LessThan3~1_cout\,
	cout => \LessThan3~3_cout\);

-- Location: LCCOMB_X14_Y3_N4
\LessThan3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~5_cout\ = CARRY((b_reg(2) & ((!\LessThan3~3_cout\) # (!r_reg(2)))) # (!b_reg(2) & (!r_reg(2) & !\LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(2),
	datab => r_reg(2),
	datad => VCC,
	cin => \LessThan3~3_cout\,
	cout => \LessThan3~5_cout\);

-- Location: LCCOMB_X14_Y3_N6
\LessThan3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~7_cout\ = CARRY((b_reg(3) & (r_reg(3) & !\LessThan3~5_cout\)) # (!b_reg(3) & ((r_reg(3)) # (!\LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(3),
	datab => r_reg(3),
	datad => VCC,
	cin => \LessThan3~5_cout\,
	cout => \LessThan3~7_cout\);

-- Location: LCCOMB_X14_Y3_N8
\LessThan3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~9_cout\ = CARRY((b_reg(4) & ((!\LessThan3~7_cout\) # (!r_reg(4)))) # (!b_reg(4) & (!r_reg(4) & !\LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(4),
	datab => r_reg(4),
	datad => VCC,
	cin => \LessThan3~7_cout\,
	cout => \LessThan3~9_cout\);

-- Location: LCCOMB_X14_Y3_N10
\LessThan3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~11_cout\ = CARRY((r_reg(5) & ((!\LessThan3~9_cout\) # (!b_reg(5)))) # (!r_reg(5) & (!b_reg(5) & !\LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(5),
	datab => b_reg(5),
	datad => VCC,
	cin => \LessThan3~9_cout\,
	cout => \LessThan3~11_cout\);

-- Location: LCCOMB_X14_Y3_N12
\LessThan3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~13_cout\ = CARRY((b_reg(6) & ((!\LessThan3~11_cout\) # (!r_reg(6)))) # (!b_reg(6) & (!r_reg(6) & !\LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(6),
	datab => r_reg(6),
	datad => VCC,
	cin => \LessThan3~11_cout\,
	cout => \LessThan3~13_cout\);

-- Location: LCCOMB_X14_Y3_N14
\LessThan3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~14_combout\ = (b_reg(7) & ((\LessThan3~13_cout\) # (!r_reg(7)))) # (!b_reg(7) & (!r_reg(7) & \LessThan3~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(7),
	datab => r_reg(7),
	cin => \LessThan3~13_cout\,
	combout => \LessThan3~14_combout\);

-- Location: LCCOMB_X13_Y2_N30
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.r_a~q\ & (!\LessThan2~14_combout\ & \LessThan3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_a~q\,
	datac => \LessThan2~14_combout\,
	datad => \LessThan3~14_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X14_Y2_N2
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((b_reg(0) & !a_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(0),
	datab => a_reg(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X14_Y2_N4
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((b_reg(1) & (a_reg(1) & !\LessThan1~1_cout\)) # (!b_reg(1) & ((a_reg(1)) # (!\LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(1),
	datab => a_reg(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X14_Y2_N6
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((b_reg(2) & ((!\LessThan1~3_cout\) # (!a_reg(2)))) # (!b_reg(2) & (!a_reg(2) & !\LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(2),
	datab => a_reg(2),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X14_Y2_N8
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((b_reg(3) & (a_reg(3) & !\LessThan1~5_cout\)) # (!b_reg(3) & ((a_reg(3)) # (!\LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(3),
	datab => a_reg(3),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X14_Y2_N10
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((b_reg(4) & ((!\LessThan1~7_cout\) # (!a_reg(4)))) # (!b_reg(4) & (!a_reg(4) & !\LessThan1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(4),
	datab => a_reg(4),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X14_Y2_N12
\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((a_reg(5) & ((!\LessThan1~9_cout\) # (!b_reg(5)))) # (!a_reg(5) & (!b_reg(5) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(5),
	datab => b_reg(5),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X14_Y2_N14
\LessThan1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~13_cout\ = CARRY((b_reg(6) & ((!\LessThan1~11_cout\) # (!a_reg(6)))) # (!b_reg(6) & (!a_reg(6) & !\LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(6),
	datab => a_reg(6),
	datad => VCC,
	cin => \LessThan1~11_cout\,
	cout => \LessThan1~13_cout\);

-- Location: LCCOMB_X14_Y2_N16
\LessThan1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~14_combout\ = (a_reg(7) & (\LessThan1~13_cout\ & b_reg(7))) # (!a_reg(7) & ((\LessThan1~13_cout\) # (b_reg(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(7),
	datad => b_reg(7),
	cin => \LessThan1~13_cout\,
	combout => \LessThan1~14_combout\);

-- Location: LCCOMB_X13_Y2_N0
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\state.dato_b~q\ & (!\LessThan0~14_combout\ & \LessThan1~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.dato_b~q\,
	datac => \LessThan0~14_combout\,
	datad => \LessThan1~14_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X13_Y2_N4
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~0_combout\) # ((\Selector2~1_combout\) # ((\LessThan4~14_combout\ & \state.r_b~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~14_combout\,
	datab => \state.r_b~q\,
	datac => \Selector2~0_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X13_Y2_N5
\state.b_mayor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.b_mayor~q\);

-- Location: FF_X13_Y1_N1
\state.r_b\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.b_mayor~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.r_b~q\);

-- Location: LCCOMB_X14_Y2_N26
\Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.r_b~q\ & ((r_reg(7)))) # (!\state.r_b~q\ & (\dato[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_b~q\,
	datab => \dato[7]~input_o\,
	datad => r_reg(7),
	combout => \Selector12~0_combout\);

-- Location: FF_X14_Y3_N23
\b_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Selector12~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \b_reg[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => b_reg(7));

-- Location: LCCOMB_X12_Y3_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = b_reg(7) $ (\state.a_mayor~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(7),
	datac => \state.a_mayor~q\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X12_Y3_N8
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \state.a_mayor~q\ $ (a_reg(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.a_mayor~q\,
	datad => a_reg(7),
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X13_Y3_N30
\r_reg[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_reg[7]~22_combout\ = \Add0~14_combout\ $ (\r_reg[6]~21\ $ (!\Add0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Add0~15_combout\,
	cin => \r_reg[6]~21\,
	combout => \r_reg[7]~22_combout\);

-- Location: FF_X13_Y3_N31
\r_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_reg[7]~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_reg(7));

-- Location: LCCOMB_X13_Y2_N12
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_cout\ = CARRY((r_reg(0) & !a_reg(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(0),
	datab => a_reg(0),
	datad => VCC,
	cout => \LessThan4~1_cout\);

-- Location: LCCOMB_X13_Y2_N14
\LessThan4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~3_cout\ = CARRY((a_reg(1) & ((!\LessThan4~1_cout\) # (!r_reg(1)))) # (!a_reg(1) & (!r_reg(1) & !\LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(1),
	datab => r_reg(1),
	datad => VCC,
	cin => \LessThan4~1_cout\,
	cout => \LessThan4~3_cout\);

-- Location: LCCOMB_X13_Y2_N16
\LessThan4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~5_cout\ = CARRY((r_reg(2) & ((!\LessThan4~3_cout\) # (!a_reg(2)))) # (!r_reg(2) & (!a_reg(2) & !\LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(2),
	datab => a_reg(2),
	datad => VCC,
	cin => \LessThan4~3_cout\,
	cout => \LessThan4~5_cout\);

-- Location: LCCOMB_X13_Y2_N18
\LessThan4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~7_cout\ = CARRY((r_reg(3) & (a_reg(3) & !\LessThan4~5_cout\)) # (!r_reg(3) & ((a_reg(3)) # (!\LessThan4~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(3),
	datab => a_reg(3),
	datad => VCC,
	cin => \LessThan4~5_cout\,
	cout => \LessThan4~7_cout\);

-- Location: LCCOMB_X13_Y2_N20
\LessThan4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~9_cout\ = CARRY((a_reg(4) & (r_reg(4) & !\LessThan4~7_cout\)) # (!a_reg(4) & ((r_reg(4)) # (!\LessThan4~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(4),
	datab => r_reg(4),
	datad => VCC,
	cin => \LessThan4~7_cout\,
	cout => \LessThan4~9_cout\);

-- Location: LCCOMB_X13_Y2_N22
\LessThan4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~11_cout\ = CARRY((r_reg(5) & (a_reg(5) & !\LessThan4~9_cout\)) # (!r_reg(5) & ((a_reg(5)) # (!\LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(5),
	datab => a_reg(5),
	datad => VCC,
	cin => \LessThan4~9_cout\,
	cout => \LessThan4~11_cout\);

-- Location: LCCOMB_X13_Y2_N24
\LessThan4~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~13_cout\ = CARRY((r_reg(6) & ((!\LessThan4~11_cout\) # (!a_reg(6)))) # (!r_reg(6) & (!a_reg(6) & !\LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_reg(6),
	datab => a_reg(6),
	datad => VCC,
	cin => \LessThan4~11_cout\,
	cout => \LessThan4~13_cout\);

-- Location: LCCOMB_X13_Y2_N26
\LessThan4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~14_combout\ = (r_reg(7) & ((\LessThan4~13_cout\) # (!a_reg(7)))) # (!r_reg(7) & (\LessThan4~13_cout\ & !a_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_reg(7),
	datad => a_reg(7),
	cin => \LessThan4~13_cout\,
	combout => \LessThan4~14_combout\);

-- Location: LCCOMB_X13_Y2_N2
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.r_a~q\ & (!\LessThan2~14_combout\ & !\LessThan3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_a~q\,
	datac => \LessThan2~14_combout\,
	datad => \LessThan3~14_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X13_Y2_N10
\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~0_combout\) # ((!\LessThan4~14_combout\ & (\state.r_b~q\ & !\LessThan5~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~14_combout\,
	datab => \state.r_b~q\,
	datac => \LessThan5~14_combout\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X13_Y2_N28
\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\state.dato_b~q\ & (!\LessThan1~14_combout\ & !\LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.dato_b~q\,
	datab => \LessThan1~14_combout\,
	datad => \LessThan0~14_combout\,
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X13_Y2_N8
\Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~2_combout\) # ((\Selector3~1_combout\) # ((\a~input_o\ & \state.final~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~2_combout\,
	datab => \a~input_o\,
	datac => \state.final~q\,
	datad => \Selector3~1_combout\,
	combout => \Selector3~3_combout\);

-- Location: FF_X13_Y2_N9
\state.final\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.final~q\);

-- Location: LCCOMB_X13_Y1_N0
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (\state.r_a~q\) # ((\state.dato_b~q\) # ((\state.r_b~q\) # (!\state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.r_a~q\,
	datab => \state.dato_b~q\,
	datac => \state.r_b~q\,
	datad => \state.idle~q\,
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X13_Y1_N28
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (\state.dato_a~q\) # ((\state.b_mayor~q\) # ((\state.r_a~q\) # (!\state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.dato_a~q\,
	datab => \state.b_mayor~q\,
	datac => \state.r_a~q\,
	datad => \state.idle~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X13_Y1_N24
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (\state.dato_b~q\) # ((\state.a_mayor~q\) # ((\state.dato_a~q\) # (!\state.idle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.dato_b~q\,
	datab => \state.a_mayor~q\,
	datac => \state.dato_a~q\,
	datad => \state.idle~q\,
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X16_Y3_N30
\output~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \output~0_combout\ = (\state.final~q\) # (\state.dato_a~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.final~q\,
	datad => \state.dato_a~q\,
	combout => \output~0_combout\);

-- Location: LCCOMB_X16_Y3_N24
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\output~0_combout\ & ((a_reg(0)) # ((\state.dato_b~q\ & b_reg(0))))) # (!\output~0_combout\ & (\state.dato_b~q\ & ((b_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~0_combout\,
	datab => \state.dato_b~q\,
	datac => a_reg(0),
	datad => b_reg(0),
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X16_Y3_N2
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (a_reg(1) & ((\output~0_combout\) # ((\state.dato_b~q\ & b_reg(1))))) # (!a_reg(1) & (\state.dato_b~q\ & ((b_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(1),
	datab => \state.dato_b~q\,
	datac => \output~0_combout\,
	datad => b_reg(1),
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X16_Y3_N12
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (b_reg(2) & ((\state.dato_b~q\) # ((\output~0_combout\ & a_reg(2))))) # (!b_reg(2) & (((\output~0_combout\ & a_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(2),
	datab => \state.dato_b~q\,
	datac => \output~0_combout\,
	datad => a_reg(2),
	combout => \Selector33~0_combout\);

-- Location: LCCOMB_X16_Y3_N26
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\output~0_combout\ & ((a_reg(3)) # ((\state.dato_b~q\ & b_reg(3))))) # (!\output~0_combout\ & (((\state.dato_b~q\ & b_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \output~0_combout\,
	datab => a_reg(3),
	datac => \state.dato_b~q\,
	datad => b_reg(3),
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X14_Y2_N20
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\state.dato_b~q\ & ((b_reg(4)) # ((a_reg(4) & \output~0_combout\)))) # (!\state.dato_b~q\ & (a_reg(4) & ((\output~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.dato_b~q\,
	datab => a_reg(4),
	datac => b_reg(4),
	datad => \output~0_combout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X16_Y3_N28
\Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (a_reg(5) & ((\output~0_combout\) # ((\state.dato_b~q\ & b_reg(5))))) # (!a_reg(5) & (\state.dato_b~q\ & ((b_reg(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_reg(5),
	datab => \state.dato_b~q\,
	datac => \output~0_combout\,
	datad => b_reg(5),
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X16_Y3_N18
\Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector29~0_combout\ = (b_reg(6) & ((\state.dato_b~q\) # ((\output~0_combout\ & a_reg(6))))) # (!b_reg(6) & (((\output~0_combout\ & a_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(6),
	datab => \state.dato_b~q\,
	datac => \output~0_combout\,
	datad => a_reg(6),
	combout => \Selector29~0_combout\);

-- Location: LCCOMB_X16_Y3_N0
\Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector28~0_combout\ = (b_reg(7) & ((\state.dato_b~q\) # ((\output~0_combout\ & a_reg(7))))) # (!b_reg(7) & (((\output~0_combout\ & a_reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => b_reg(7),
	datab => \state.dato_b~q\,
	datac => \output~0_combout\,
	datad => a_reg(7),
	combout => \Selector28~0_combout\);

ww_fin <= \fin~output_o\;

ww_stado(0) <= \stado[0]~output_o\;

ww_stado(1) <= \stado[1]~output_o\;

ww_stado(2) <= \stado[2]~output_o\;

ww_reg_b(0) <= \reg_b[0]~output_o\;

ww_reg_b(1) <= \reg_b[1]~output_o\;

ww_reg_b(2) <= \reg_b[2]~output_o\;

ww_reg_b(3) <= \reg_b[3]~output_o\;

ww_reg_b(4) <= \reg_b[4]~output_o\;

ww_reg_b(5) <= \reg_b[5]~output_o\;

ww_reg_b(6) <= \reg_b[6]~output_o\;

ww_reg_b(7) <= \reg_b[7]~output_o\;

ww_reg_a(0) <= \reg_a[0]~output_o\;

ww_reg_a(1) <= \reg_a[1]~output_o\;

ww_reg_a(2) <= \reg_a[2]~output_o\;

ww_reg_a(3) <= \reg_a[3]~output_o\;

ww_reg_a(4) <= \reg_a[4]~output_o\;

ww_reg_a(5) <= \reg_a[5]~output_o\;

ww_reg_a(6) <= \reg_a[6]~output_o\;

ww_reg_a(7) <= \reg_a[7]~output_o\;

ww_reg_r(0) <= \reg_r[0]~output_o\;

ww_reg_r(1) <= \reg_r[1]~output_o\;

ww_reg_r(2) <= \reg_r[2]~output_o\;

ww_reg_r(3) <= \reg_r[3]~output_o\;

ww_reg_r(4) <= \reg_r[4]~output_o\;

ww_reg_r(5) <= \reg_r[5]~output_o\;

ww_reg_r(6) <= \reg_r[6]~output_o\;

ww_reg_r(7) <= \reg_r[7]~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(7) <= \output[7]~output_o\;
END structure;


