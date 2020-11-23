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
-- CREATED		"Mon Nov 23 17:41:03 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY shift2left32bit IS 
	PORT
	(
		Input32 :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		Overflow1 :  OUT  STD_LOGIC;
		Overflow2 :  OUT  STD_LOGIC;
		Result32 :  OUT  STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END shift2left32bit;

ARCHITECTURE bdf_type OF shift2left32bit IS 

COMPONENT shift1left32bit
	PORT(Input0 : IN STD_LOGIC;
		 Input1 : IN STD_LOGIC;
		 Input2 : IN STD_LOGIC;
		 Input3 : IN STD_LOGIC;
		 Input4 : IN STD_LOGIC;
		 Input5 : IN STD_LOGIC;
		 Input6 : IN STD_LOGIC;
		 Input7 : IN STD_LOGIC;
		 Input8 : IN STD_LOGIC;
		 Input9 : IN STD_LOGIC;
		 Input10 : IN STD_LOGIC;
		 Input11 : IN STD_LOGIC;
		 Input12 : IN STD_LOGIC;
		 Input13 : IN STD_LOGIC;
		 Input14 : IN STD_LOGIC;
		 Input15 : IN STD_LOGIC;
		 Input16 : IN STD_LOGIC;
		 Input17 : IN STD_LOGIC;
		 Input18 : IN STD_LOGIC;
		 Input19 : IN STD_LOGIC;
		 Input20 : IN STD_LOGIC;
		 Input21 : IN STD_LOGIC;
		 Input22 : IN STD_LOGIC;
		 Input23 : IN STD_LOGIC;
		 Input24 : IN STD_LOGIC;
		 Input25 : IN STD_LOGIC;
		 Input26 : IN STD_LOGIC;
		 Input27 : IN STD_LOGIC;
		 Input28 : IN STD_LOGIC;
		 Input29 : IN STD_LOGIC;
		 Input30 : IN STD_LOGIC;
		 Input31 : IN STD_LOGIC;
		 Result0 : OUT STD_LOGIC;
		 Result1 : OUT STD_LOGIC;
		 Result2 : OUT STD_LOGIC;
		 Result3 : OUT STD_LOGIC;
		 Result4 : OUT STD_LOGIC;
		 Result5 : OUT STD_LOGIC;
		 Result6 : OUT STD_LOGIC;
		 Result7 : OUT STD_LOGIC;
		 Result8 : OUT STD_LOGIC;
		 Result9 : OUT STD_LOGIC;
		 Result10 : OUT STD_LOGIC;
		 Result11 : OUT STD_LOGIC;
		 Result12 : OUT STD_LOGIC;
		 Result13 : OUT STD_LOGIC;
		 Result14 : OUT STD_LOGIC;
		 Result15 : OUT STD_LOGIC;
		 Result16 : OUT STD_LOGIC;
		 Result17 : OUT STD_LOGIC;
		 Result18 : OUT STD_LOGIC;
		 Result19 : OUT STD_LOGIC;
		 Result20 : OUT STD_LOGIC;
		 Result21 : OUT STD_LOGIC;
		 Result22 : OUT STD_LOGIC;
		 Result23 : OUT STD_LOGIC;
		 Result24 : OUT STD_LOGIC;
		 Result25 : OUT STD_LOGIC;
		 Result26 : OUT STD_LOGIC;
		 Result27 : OUT STD_LOGIC;
		 Result28 : OUT STD_LOGIC;
		 Result29 : OUT STD_LOGIC;
		 Result30 : OUT STD_LOGIC;
		 Result31 : OUT STD_LOGIC;
		 Overflow : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Result_ALTERA_SYNTHESIZED32 :  STD_LOGIC_VECTOR(31 DOWNTO 0);
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
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;


BEGIN 



b2v_inst : shift1left32bit
PORT MAP(Input0 => Input32(0),
		 Input1 => Input32(1),
		 Input2 => Input32(2),
		 Input3 => Input32(3),
		 Input4 => Input32(4),
		 Input5 => Input32(5),
		 Input6 => Input32(6),
		 Input7 => Input32(7),
		 Input8 => Input32(8),
		 Input9 => Input32(9),
		 Input10 => Input32(10),
		 Input11 => Input32(11),
		 Input12 => Input32(12),
		 Input13 => Input32(13),
		 Input14 => Input32(14),
		 Input15 => Input32(15),
		 Input16 => Input32(16),
		 Input17 => Input32(17),
		 Input18 => Input32(18),
		 Input19 => Input32(19),
		 Input20 => Input32(20),
		 Input21 => Input32(21),
		 Input22 => Input32(22),
		 Input23 => Input32(23),
		 Input24 => Input32(24),
		 Input25 => Input32(25),
		 Input26 => Input32(26),
		 Input27 => Input32(27),
		 Input28 => Input32(28),
		 Input29 => Input32(29),
		 Input30 => Input32(30),
		 Input31 => Input32(31),
		 Result0 => SYNTHESIZED_WIRE_0,
		 Result1 => SYNTHESIZED_WIRE_1,
		 Result2 => SYNTHESIZED_WIRE_2,
		 Result3 => SYNTHESIZED_WIRE_3,
		 Result4 => SYNTHESIZED_WIRE_4,
		 Result5 => SYNTHESIZED_WIRE_5,
		 Result6 => SYNTHESIZED_WIRE_6,
		 Result7 => SYNTHESIZED_WIRE_7,
		 Result8 => SYNTHESIZED_WIRE_8,
		 Result9 => SYNTHESIZED_WIRE_9,
		 Result10 => SYNTHESIZED_WIRE_10,
		 Result11 => SYNTHESIZED_WIRE_11,
		 Result12 => SYNTHESIZED_WIRE_12,
		 Result13 => SYNTHESIZED_WIRE_13,
		 Result14 => SYNTHESIZED_WIRE_14,
		 Result15 => SYNTHESIZED_WIRE_15,
		 Result16 => SYNTHESIZED_WIRE_16,
		 Result17 => SYNTHESIZED_WIRE_17,
		 Result18 => SYNTHESIZED_WIRE_18,
		 Result19 => SYNTHESIZED_WIRE_19,
		 Result20 => SYNTHESIZED_WIRE_20,
		 Result21 => SYNTHESIZED_WIRE_21,
		 Result22 => SYNTHESIZED_WIRE_22,
		 Result23 => SYNTHESIZED_WIRE_23,
		 Result24 => SYNTHESIZED_WIRE_24,
		 Result25 => SYNTHESIZED_WIRE_25,
		 Result26 => SYNTHESIZED_WIRE_26,
		 Result27 => SYNTHESIZED_WIRE_27,
		 Result28 => SYNTHESIZED_WIRE_28,
		 Result29 => SYNTHESIZED_WIRE_29,
		 Result30 => SYNTHESIZED_WIRE_30,
		 Result31 => SYNTHESIZED_WIRE_31,
		 Overflow => Overflow1);


b2v_inst2 : shift1left32bit
PORT MAP(Input0 => SYNTHESIZED_WIRE_0,
		 Input1 => SYNTHESIZED_WIRE_1,
		 Input2 => SYNTHESIZED_WIRE_2,
		 Input3 => SYNTHESIZED_WIRE_3,
		 Input4 => SYNTHESIZED_WIRE_4,
		 Input5 => SYNTHESIZED_WIRE_5,
		 Input6 => SYNTHESIZED_WIRE_6,
		 Input7 => SYNTHESIZED_WIRE_7,
		 Input8 => SYNTHESIZED_WIRE_8,
		 Input9 => SYNTHESIZED_WIRE_9,
		 Input10 => SYNTHESIZED_WIRE_10,
		 Input11 => SYNTHESIZED_WIRE_11,
		 Input12 => SYNTHESIZED_WIRE_12,
		 Input13 => SYNTHESIZED_WIRE_13,
		 Input14 => SYNTHESIZED_WIRE_14,
		 Input15 => SYNTHESIZED_WIRE_15,
		 Input16 => SYNTHESIZED_WIRE_16,
		 Input17 => SYNTHESIZED_WIRE_17,
		 Input18 => SYNTHESIZED_WIRE_18,
		 Input19 => SYNTHESIZED_WIRE_19,
		 Input20 => SYNTHESIZED_WIRE_20,
		 Input21 => SYNTHESIZED_WIRE_21,
		 Input22 => SYNTHESIZED_WIRE_22,
		 Input23 => SYNTHESIZED_WIRE_23,
		 Input24 => SYNTHESIZED_WIRE_24,
		 Input25 => SYNTHESIZED_WIRE_25,
		 Input26 => SYNTHESIZED_WIRE_26,
		 Input27 => SYNTHESIZED_WIRE_27,
		 Input28 => SYNTHESIZED_WIRE_28,
		 Input29 => SYNTHESIZED_WIRE_29,
		 Input30 => SYNTHESIZED_WIRE_30,
		 Input31 => SYNTHESIZED_WIRE_31,
		 Result0 => Result_ALTERA_SYNTHESIZED32(0),
		 Result1 => Result_ALTERA_SYNTHESIZED32(1),
		 Result2 => Result_ALTERA_SYNTHESIZED32(2),
		 Result3 => Result_ALTERA_SYNTHESIZED32(3),
		 Result4 => Result_ALTERA_SYNTHESIZED32(4),
		 Result5 => Result_ALTERA_SYNTHESIZED32(5),
		 Result6 => Result_ALTERA_SYNTHESIZED32(6),
		 Result7 => Result_ALTERA_SYNTHESIZED32(7),
		 Result8 => Result_ALTERA_SYNTHESIZED32(8),
		 Result9 => Result_ALTERA_SYNTHESIZED32(9),
		 Result10 => Result_ALTERA_SYNTHESIZED32(10),
		 Result11 => Result_ALTERA_SYNTHESIZED32(11),
		 Result12 => Result_ALTERA_SYNTHESIZED32(12),
		 Result13 => Result_ALTERA_SYNTHESIZED32(13),
		 Result14 => Result_ALTERA_SYNTHESIZED32(14),
		 Result15 => Result_ALTERA_SYNTHESIZED32(15),
		 Result16 => Result_ALTERA_SYNTHESIZED32(16),
		 Result17 => Result_ALTERA_SYNTHESIZED32(17),
		 Result18 => Result_ALTERA_SYNTHESIZED32(18),
		 Result19 => Result_ALTERA_SYNTHESIZED32(19),
		 Result20 => Result_ALTERA_SYNTHESIZED32(20),
		 Result21 => Result_ALTERA_SYNTHESIZED32(21),
		 Result22 => Result_ALTERA_SYNTHESIZED32(22),
		 Result23 => Result_ALTERA_SYNTHESIZED32(23),
		 Result24 => Result_ALTERA_SYNTHESIZED32(24),
		 Result25 => Result_ALTERA_SYNTHESIZED32(25),
		 Result26 => Result_ALTERA_SYNTHESIZED32(26),
		 Result27 => Result_ALTERA_SYNTHESIZED32(27),
		 Result28 => Result_ALTERA_SYNTHESIZED32(28),
		 Result29 => Result_ALTERA_SYNTHESIZED32(29),
		 Result30 => Result_ALTERA_SYNTHESIZED32(30),
		 Result31 => Result_ALTERA_SYNTHESIZED32(31),
		 Overflow => Overflow2);

Result32 <= Result_ALTERA_SYNTHESIZED32;

END bdf_type;