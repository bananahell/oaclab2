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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
-- CREATED		"Thu Nov 12 17:25:27 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY signextend16to32bit IS 
	PORT
	(
		Input16bit :  IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		Output32bit :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END signextend16to32bit;

ARCHITECTURE bdf_type OF signextend16to32bit IS 

SIGNAL	Output32bit_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_14 <= NOT(Input16bit(15));



SYNTHESIZED_WIRE_0 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(29) <= NOT(SYNTHESIZED_WIRE_0);



SYNTHESIZED_WIRE_1 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(28) <= NOT(SYNTHESIZED_WIRE_1);



SYNTHESIZED_WIRE_2 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(27) <= NOT(SYNTHESIZED_WIRE_2);



SYNTHESIZED_WIRE_3 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(26) <= NOT(SYNTHESIZED_WIRE_3);



SYNTHESIZED_WIRE_4 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(25) <= NOT(SYNTHESIZED_WIRE_4);



SYNTHESIZED_WIRE_5 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(24) <= NOT(SYNTHESIZED_WIRE_5);



SYNTHESIZED_WIRE_6 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(23) <= NOT(SYNTHESIZED_WIRE_6);



SYNTHESIZED_WIRE_7 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(22) <= NOT(SYNTHESIZED_WIRE_7);



SYNTHESIZED_WIRE_8 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(21) <= NOT(SYNTHESIZED_WIRE_8);



SYNTHESIZED_WIRE_9 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(20) <= NOT(SYNTHESIZED_WIRE_9);



SYNTHESIZED_WIRE_10 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(19) <= NOT(SYNTHESIZED_WIRE_10);



SYNTHESIZED_WIRE_11 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(18) <= NOT(SYNTHESIZED_WIRE_11);



SYNTHESIZED_WIRE_12 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(17) <= NOT(SYNTHESIZED_WIRE_12);



SYNTHESIZED_WIRE_13 <= NOT(Input16bit(15));



Output32bit_ALTERA_SYNTHESIZED(16) <= NOT(SYNTHESIZED_WIRE_13);



Output32bit_ALTERA_SYNTHESIZED(31) <= NOT(SYNTHESIZED_WIRE_14);



Output32bit_ALTERA_SYNTHESIZED(30) <= NOT(SYNTHESIZED_WIRE_15);



SYNTHESIZED_WIRE_15 <= NOT(Input16bit(15));


Output32bit <= Output32bit_ALTERA_SYNTHESIZED;

Output32bit_ALTERA_SYNTHESIZED(15 DOWNTO 0) <= Input16bit;
END bdf_type;