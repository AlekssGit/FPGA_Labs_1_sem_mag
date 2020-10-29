-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/29/2020 16:57:43"

-- 
-- Device: Altera EP3C5F256C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	summ_mod_11 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	lamp : OUT std_logic_vector(2 DOWNTO 0);
	lcd_hi : OUT std_logic_vector(6 DOWNTO 0);
	lcd_low : OUT std_logic_vector(6 DOWNTO 0);
	out_cnt : OUT std_logic_vector(3 DOWNTO 0)
	);
END summ_mod_11;

-- Design Ports Information
-- lamp[0]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lamp[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lamp[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_hi[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_hi[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_hi[2]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_hi[3]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_hi[4]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_hi[5]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_hi[6]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_low[0]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_low[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_low[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_low[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_low[4]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_low[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd_low[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cnt[0]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cnt[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cnt[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out_cnt[3]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF summ_mod_11 IS
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
SIGNAL ww_lamp : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_lcd_hi : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lcd_low : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_out_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \counter[0]~2_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \lamp[0]~output_o\ : std_logic;
SIGNAL \lamp[1]~output_o\ : std_logic;
SIGNAL \lamp[2]~output_o\ : std_logic;
SIGNAL \lcd_hi[0]~output_o\ : std_logic;
SIGNAL \lcd_hi[1]~output_o\ : std_logic;
SIGNAL \lcd_hi[2]~output_o\ : std_logic;
SIGNAL \lcd_hi[3]~output_o\ : std_logic;
SIGNAL \lcd_hi[4]~output_o\ : std_logic;
SIGNAL \lcd_hi[5]~output_o\ : std_logic;
SIGNAL \lcd_hi[6]~output_o\ : std_logic;
SIGNAL \lcd_low[0]~output_o\ : std_logic;
SIGNAL \lcd_low[1]~output_o\ : std_logic;
SIGNAL \lcd_low[2]~output_o\ : std_logic;
SIGNAL \lcd_low[3]~output_o\ : std_logic;
SIGNAL \lcd_low[4]~output_o\ : std_logic;
SIGNAL \lcd_low[5]~output_o\ : std_logic;
SIGNAL \lcd_low[6]~output_o\ : std_logic;
SIGNAL \out_cnt[0]~output_o\ : std_logic;
SIGNAL \out_cnt[1]~output_o\ : std_logic;
SIGNAL \out_cnt[2]~output_o\ : std_logic;
SIGNAL \out_cnt[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \counter[0]~3_combout\ : std_logic;
SIGNAL \counter~4_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \counter~5_combout\ : std_logic;
SIGNAL \counter~6_combout\ : std_logic;
SIGNAL \counter~7_combout\ : std_logic;
SIGNAL counter : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
lamp <= ww_lamp;
lcd_hi <= ww_lcd_hi;
lcd_low <= ww_lcd_low;
out_cnt <= ww_out_cnt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X8_Y1_N12
\counter[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~2_combout\ = (!\reset~input_o\ & !counter(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => counter(3),
	combout => \counter[0]~2_combout\);

-- Location: IOIBUF_X9_Y0_N1
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOOBUF_X1_Y0_N2
\lamp[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lamp[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\lamp[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lamp[1]~output_o\);

-- Location: IOOBUF_X23_Y24_N2
\lamp[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lamp[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\lcd_hi[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_hi[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\lcd_hi[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_hi[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\lcd_hi[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_hi[2]~output_o\);

-- Location: IOOBUF_X34_Y20_N16
\lcd_hi[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_hi[3]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\lcd_hi[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_hi[4]~output_o\);

-- Location: IOOBUF_X1_Y24_N9
\lcd_hi[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_hi[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\lcd_hi[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_hi[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\lcd_low[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_low[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\lcd_low[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_low[1]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\lcd_low[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_low[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\lcd_low[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_low[3]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\lcd_low[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_low[4]~output_o\);

-- Location: IOOBUF_X30_Y24_N2
\lcd_low[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_low[5]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\lcd_low[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \lcd_low[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\out_cnt[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(0),
	devoe => ww_devoe,
	o => \out_cnt[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\out_cnt[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(1),
	devoe => ww_devoe,
	o => \out_cnt[1]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\out_cnt[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(2),
	devoe => ww_devoe,
	o => \out_cnt[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\out_cnt[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => counter(3),
	devoe => ww_devoe,
	o => \out_cnt[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: LCCOMB_X8_Y1_N18
\counter[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter[0]~3_combout\ = (!\reset~input_o\ & (!counter(2) & ((!counter(1)) # (!counter(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => counter(2),
	datac => counter(0),
	datad => counter(1),
	combout => \counter[0]~3_combout\);

-- Location: LCCOMB_X8_Y1_N6
\counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~4_combout\ = (\counter[0]~2_combout\ & (counter(0) $ ((counter(1))))) # (!\counter[0]~2_combout\ & (\counter[0]~3_combout\ & (counter(0) $ (counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~2_combout\,
	datab => counter(0),
	datac => counter(1),
	datad => \counter[0]~3_combout\,
	combout => \counter~4_combout\);

-- Location: FF_X8_Y1_N7
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X8_Y1_N28
\LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(1)) # (!counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => counter(0),
	datad => counter(1),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y1_N8
\counter~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~5_combout\ = (\counter[0]~2_combout\ & (\LessThan0~0_combout\ $ ((!counter(2))))) # (!\counter[0]~2_combout\ & (\counter[0]~3_combout\ & (\LessThan0~0_combout\ $ (!counter(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter[0]~2_combout\,
	datab => \LessThan0~0_combout\,
	datac => counter(2),
	datad => \counter[0]~3_combout\,
	combout => \counter~5_combout\);

-- Location: FF_X8_Y1_N9
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X8_Y1_N2
\counter~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~6_combout\ = (!\reset~input_o\ & ((counter(2) & (!counter(3) & !\LessThan0~0_combout\)) # (!counter(2) & (counter(3) & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => counter(2),
	datac => counter(3),
	datad => \LessThan0~0_combout\,
	combout => \counter~6_combout\);

-- Location: FF_X8_Y1_N3
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X8_Y1_N4
\counter~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \counter~7_combout\ = (!counter(0) & ((\counter[0]~3_combout\) # ((!\reset~input_o\ & !counter(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => counter(3),
	datac => counter(0),
	datad => \counter[0]~3_combout\,
	combout => \counter~7_combout\);

-- Location: FF_X8_Y1_N5
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

ww_lamp(0) <= \lamp[0]~output_o\;

ww_lamp(1) <= \lamp[1]~output_o\;

ww_lamp(2) <= \lamp[2]~output_o\;

ww_lcd_hi(0) <= \lcd_hi[0]~output_o\;

ww_lcd_hi(1) <= \lcd_hi[1]~output_o\;

ww_lcd_hi(2) <= \lcd_hi[2]~output_o\;

ww_lcd_hi(3) <= \lcd_hi[3]~output_o\;

ww_lcd_hi(4) <= \lcd_hi[4]~output_o\;

ww_lcd_hi(5) <= \lcd_hi[5]~output_o\;

ww_lcd_hi(6) <= \lcd_hi[6]~output_o\;

ww_lcd_low(0) <= \lcd_low[0]~output_o\;

ww_lcd_low(1) <= \lcd_low[1]~output_o\;

ww_lcd_low(2) <= \lcd_low[2]~output_o\;

ww_lcd_low(3) <= \lcd_low[3]~output_o\;

ww_lcd_low(4) <= \lcd_low[4]~output_o\;

ww_lcd_low(5) <= \lcd_low[5]~output_o\;

ww_lcd_low(6) <= \lcd_low[6]~output_o\;

ww_out_cnt(0) <= \out_cnt[0]~output_o\;

ww_out_cnt(1) <= \out_cnt[1]~output_o\;

ww_out_cnt(2) <= \out_cnt[2]~output_o\;

ww_out_cnt(3) <= \out_cnt[3]~output_o\;
END structure;


