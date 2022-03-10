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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/26/2021 16:38:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ContadorSinc
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ContadorSinc_vhd_vec_tst IS
END ContadorSinc_vhd_vec_tst;
ARCHITECTURE ContadorSinc_arch OF ContadorSinc_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enp : STD_LOGIC;
SIGNAL load : STD_LOGIC;
SIGNAL P : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT ContadorSinc
	PORT (
	clk : IN STD_LOGIC;
	enp : IN STD_LOGIC;
	load : IN STD_LOGIC;
	P : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Q : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ContadorSinc
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enp => enp,
	load => load,
	P => P,
	Q => Q,
	reset => reset
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500000 ps;
	clk <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 12000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- enp
t_prcs_enp: PROCESS
BEGIN
	enp <= '0';
	WAIT FOR 1000000 ps;
	enp <= '1';
	WAIT FOR 2000000 ps;
	enp <= '0';
	WAIT FOR 2000000 ps;
	enp <= '1';
	WAIT FOR 4000000 ps;
	enp <= '0';
	WAIT FOR 1000000 ps;
	enp <= '1';
WAIT;
END PROCESS t_prcs_enp;

-- load
t_prcs_load: PROCESS
BEGIN
	load <= '0';
	WAIT FOR 2000000 ps;
	load <= '1';
	WAIT FOR 7000000 ps;
	load <= '0';
	WAIT FOR 1000000 ps;
	load <= '1';
WAIT;
END PROCESS t_prcs_load;
-- P[3]
t_prcs_P_3: PROCESS
BEGIN
	P(3) <= '0';
	WAIT FOR 2000000 ps;
	P(3) <= '1';
	WAIT FOR 2112994 ps;
	P(3) <= '0';
	WAIT FOR 4887006 ps;
	P(3) <= '1';
	WAIT FOR 1000000 ps;
	P(3) <= '0';
WAIT;
END PROCESS t_prcs_P_3;
-- P[2]
t_prcs_P_2: PROCESS
BEGIN
	P(2) <= '0';
	WAIT FOR 1000000 ps;
	P(2) <= '1';
	WAIT FOR 1000000 ps;
	P(2) <= '0';
	WAIT FOR 826800 ps;
	P(2) <= '1';
	WAIT FOR 501757 ps;
	P(2) <= '0';
	WAIT FOR 784437 ps;
	P(2) <= '1';
	WAIT FOR 2409847 ps;
	P(2) <= '0';
	WAIT FOR 2477159 ps;
	P(2) <= '1';
	WAIT FOR 1000000 ps;
	P(2) <= '0';
WAIT;
END PROCESS t_prcs_P_2;
-- P[1]
t_prcs_P_1: PROCESS
BEGIN
	P(1) <= '1';
	WAIT FOR 1000000 ps;
	P(1) <= '0';
	WAIT FOR 1000000 ps;
	P(1) <= '1';
	WAIT FOR 5999000 ps;
	P(1) <= '0';
	WAIT FOR 1001000 ps;
	P(1) <= '1';
	WAIT FOR 1000000 ps;
	P(1) <= '0';
WAIT;
END PROCESS t_prcs_P_1;
-- P[0]
t_prcs_P_0: PROCESS
BEGIN
	P(0) <= '1';
	WAIT FOR 2000000 ps;
	P(0) <= '0';
	WAIT FOR 826800 ps;
	P(0) <= '1';
	WAIT FOR 501757 ps;
	P(0) <= '0';
	WAIT FOR 5671443 ps;
	P(0) <= '1';
	WAIT FOR 1000000 ps;
	P(0) <= '0';
WAIT;
END PROCESS t_prcs_P_0;
-- Q[3]
t_prcs_Q_3: PROCESS
BEGIN
	Q(3) <= 'Z';
	WAIT FOR 7999000 ps;
	Q(3) <= '0';
WAIT;
END PROCESS t_prcs_Q_3;
-- Q[2]
t_prcs_Q_2: PROCESS
BEGIN
	Q(2) <= 'Z';
	WAIT FOR 7999000 ps;
	Q(2) <= '0';
WAIT;
END PROCESS t_prcs_Q_2;
-- Q[1]
t_prcs_Q_1: PROCESS
BEGIN
	Q(1) <= 'Z';
	WAIT FOR 7999000 ps;
	Q(1) <= '0';
WAIT;
END PROCESS t_prcs_Q_1;
-- Q[0]
t_prcs_Q_0: PROCESS
BEGIN
	Q(0) <= 'Z';
	WAIT FOR 7999000 ps;
	Q(0) <= '0';
WAIT;
END PROCESS t_prcs_Q_0;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END ContadorSinc_arch;
