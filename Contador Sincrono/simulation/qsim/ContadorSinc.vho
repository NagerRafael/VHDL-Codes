-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/26/2021 16:38:21"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	ContadorSinc IS
    PORT (
	P : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	load : IN std_logic;
	enp : IN std_logic;
	reset : IN std_logic;
	Q : INOUT std_logic_vector(3 DOWNTO 0)
	);
END ContadorSinc;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[0]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enp	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[1]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[2]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- P[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ContadorSinc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_P : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_load : std_logic;
SIGNAL ww_enp : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~input_o\ : std_logic;
SIGNAL \Q[1]~input_o\ : std_logic;
SIGNAL \Q[2]~input_o\ : std_logic;
SIGNAL \Q[3]~input_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \load~input_o\ : std_logic;
SIGNAL \P[0]~input_o\ : std_logic;
SIGNAL \Q[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \enp~input_o\ : std_logic;
SIGNAL \Q~12_combout\ : std_logic;
SIGNAL \Q[0]~reg0_q\ : std_logic;
SIGNAL \P[1]~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Q[1]~1_combout\ : std_logic;
SIGNAL \Q[1]~reg0_q\ : std_logic;
SIGNAL \P[2]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Q[2]~2_combout\ : std_logic;
SIGNAL \Q[2]~reg0_q\ : std_logic;
SIGNAL \P[3]~input_o\ : std_logic;
SIGNAL \Q[3]~13_combout\ : std_logic;
SIGNAL \Q[3]~3_combout\ : std_logic;
SIGNAL \Q[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_P <= P;
ww_clk <= clk;
ww_load <= load;
ww_enp <= enp;
ww_reset <= reset;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X5_Y0_N16
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[0]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[1]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[2]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Q[3]~reg0_q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

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
\load~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load,
	o => \load~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\P[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(0),
	o => \P[0]~input_o\);

-- Location: LCCOMB_X1_Y4_N4
\Q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[0]~0_combout\ = (\load~input_o\ & ((!\Q[0]~reg0_q\))) # (!\load~input_o\ & (\P[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \P[0]~input_o\,
	datac => \Q[0]~reg0_q\,
	combout => \Q[0]~0_combout\);

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

-- Location: IOIBUF_X0_Y5_N15
\enp~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enp,
	o => \enp~input_o\);

-- Location: LCCOMB_X1_Y4_N20
\Q~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q~12_combout\ = (\load~input_o\ & !\enp~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datad => \enp~input_o\,
	combout => \Q~12_combout\);

-- Location: FF_X1_Y4_N5
\Q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q[0]~0_combout\,
	asdata => \Q[0]~reg0_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \Q~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[0]~reg0_q\);

-- Location: IOIBUF_X1_Y0_N22
\P[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(1),
	o => \P[1]~input_o\);

-- Location: LCCOMB_X1_Y4_N18
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \Q[0]~reg0_q\ $ (\Q[1]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Q[0]~reg0_q\,
	datad => \Q[1]~reg0_q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y4_N2
\Q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[1]~1_combout\ = (\load~input_o\ & ((\Add0~0_combout\))) # (!\load~input_o\ & (\P[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \P[1]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Q[1]~1_combout\);

-- Location: FF_X1_Y4_N3
\Q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q[1]~1_combout\,
	asdata => \Q[1]~reg0_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \Q~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[1]~reg0_q\);

-- Location: IOIBUF_X0_Y7_N1
\P[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(2),
	o => \P[2]~input_o\);

-- Location: LCCOMB_X1_Y4_N24
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \Q[2]~reg0_q\ $ (((\Q[1]~reg0_q\ & \Q[0]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q[1]~reg0_q\,
	datac => \Q[0]~reg0_q\,
	datad => \Q[2]~reg0_q\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y4_N28
\Q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[2]~2_combout\ = (\load~input_o\ & ((\Add0~1_combout\))) # (!\load~input_o\ & (\P[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \P[2]~input_o\,
	datad => \Add0~1_combout\,
	combout => \Q[2]~2_combout\);

-- Location: FF_X1_Y4_N29
\Q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q[2]~2_combout\,
	asdata => \Q[2]~reg0_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \Q~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[2]~reg0_q\);

-- Location: IOIBUF_X0_Y6_N22
\P[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_P(3),
	o => \P[3]~input_o\);

-- Location: LCCOMB_X1_Y4_N6
\Q[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[3]~13_combout\ = (\load~input_o\ & (((!\Q[2]~reg0_q\) # (!\Q[0]~reg0_q\)))) # (!\load~input_o\ & (\P[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P[3]~input_o\,
	datab => \load~input_o\,
	datac => \Q[0]~reg0_q\,
	datad => \Q[2]~reg0_q\,
	combout => \Q[3]~13_combout\);

-- Location: LCCOMB_X1_Y4_N22
\Q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Q[3]~3_combout\ = (\load~input_o\ & (\Q[3]~reg0_q\ $ (((\Q[1]~reg0_q\ & !\Q[3]~13_combout\))))) # (!\load~input_o\ & (((\Q[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \load~input_o\,
	datab => \Q[1]~reg0_q\,
	datac => \Q[3]~reg0_q\,
	datad => \Q[3]~13_combout\,
	combout => \Q[3]~3_combout\);

-- Location: FF_X1_Y4_N23
\Q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Q[3]~3_combout\,
	asdata => \Q[3]~reg0_q\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => \Q~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Q[3]~reg0_q\);

-- Location: IOIBUF_X5_Y0_N15
\Q[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(0),
	o => \Q[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\Q[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(1),
	o => \Q[1]~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\Q[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(2),
	o => \Q[2]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\Q[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => Q(3),
	o => \Q[3]~input_o\);

Q(0) <= \Q[0]~output_o\;

Q(1) <= \Q[1]~output_o\;

Q(2) <= \Q[2]~output_o\;

Q(3) <= \Q[3]~output_o\;
END structure;


