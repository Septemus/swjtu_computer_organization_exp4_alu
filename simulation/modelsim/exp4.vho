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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "04/27/2023 09:09:48"

-- 
-- Device: Altera EP3C40F780C8 Package FBGA780
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

ENTITY 	exp4 IS
    PORT (
	clk : IN std_logic;
	S : IN std_logic_vector(2 DOWNTO 0);
	cin : IN std_logic;
	KEY_R : IN std_logic_vector(3 DOWNTO 0);
	KEY_C : OUT std_logic_vector(3 DOWNTO 0);
	ans : OUT std_logic_vector(15 DOWNTO 0);
	N : OUT std_logic_vector(31 DOWNTO 0);
	codeout : OUT std_logic_vector(7 DOWNTO 0);
	sel : OUT std_logic_vector(2 DOWNTO 0);
	X : OUT std_logic_vector(7 DOWNTO 0);
	Y : OUT std_logic_vector(7 DOWNTO 0)
	);
END exp4;

-- Design Ports Information
-- KEY_C[0]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_C[1]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_C[2]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_C[3]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[0]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[2]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[4]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[5]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[6]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[7]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[8]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[9]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[10]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[11]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[12]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[13]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[14]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ans[15]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[3]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[4]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[6]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[7]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[8]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[9]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[10]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[11]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[12]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[13]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[14]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[15]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[16]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[17]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[18]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[19]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[20]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[21]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[22]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[23]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[24]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[25]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[26]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[27]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[28]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[29]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[30]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N[31]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[1]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[6]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- codeout[7]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cin	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_R[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_R[2]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_R[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_R[3]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exp4 IS
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
SIGNAL ww_S : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_cin : std_logic;
SIGNAL ww_KEY_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ans : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_N : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_codeout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY_C[0]~output_o\ : std_logic;
SIGNAL \KEY_C[1]~output_o\ : std_logic;
SIGNAL \KEY_C[2]~output_o\ : std_logic;
SIGNAL \KEY_C[3]~output_o\ : std_logic;
SIGNAL \ans[0]~output_o\ : std_logic;
SIGNAL \ans[1]~output_o\ : std_logic;
SIGNAL \ans[2]~output_o\ : std_logic;
SIGNAL \ans[3]~output_o\ : std_logic;
SIGNAL \ans[4]~output_o\ : std_logic;
SIGNAL \ans[5]~output_o\ : std_logic;
SIGNAL \ans[6]~output_o\ : std_logic;
SIGNAL \ans[7]~output_o\ : std_logic;
SIGNAL \ans[8]~output_o\ : std_logic;
SIGNAL \ans[9]~output_o\ : std_logic;
SIGNAL \ans[10]~output_o\ : std_logic;
SIGNAL \ans[11]~output_o\ : std_logic;
SIGNAL \ans[12]~output_o\ : std_logic;
SIGNAL \ans[13]~output_o\ : std_logic;
SIGNAL \ans[14]~output_o\ : std_logic;
SIGNAL \ans[15]~output_o\ : std_logic;
SIGNAL \N[0]~output_o\ : std_logic;
SIGNAL \N[1]~output_o\ : std_logic;
SIGNAL \N[2]~output_o\ : std_logic;
SIGNAL \N[3]~output_o\ : std_logic;
SIGNAL \N[4]~output_o\ : std_logic;
SIGNAL \N[5]~output_o\ : std_logic;
SIGNAL \N[6]~output_o\ : std_logic;
SIGNAL \N[7]~output_o\ : std_logic;
SIGNAL \N[8]~output_o\ : std_logic;
SIGNAL \N[9]~output_o\ : std_logic;
SIGNAL \N[10]~output_o\ : std_logic;
SIGNAL \N[11]~output_o\ : std_logic;
SIGNAL \N[12]~output_o\ : std_logic;
SIGNAL \N[13]~output_o\ : std_logic;
SIGNAL \N[14]~output_o\ : std_logic;
SIGNAL \N[15]~output_o\ : std_logic;
SIGNAL \N[16]~output_o\ : std_logic;
SIGNAL \N[17]~output_o\ : std_logic;
SIGNAL \N[18]~output_o\ : std_logic;
SIGNAL \N[19]~output_o\ : std_logic;
SIGNAL \N[20]~output_o\ : std_logic;
SIGNAL \N[21]~output_o\ : std_logic;
SIGNAL \N[22]~output_o\ : std_logic;
SIGNAL \N[23]~output_o\ : std_logic;
SIGNAL \N[24]~output_o\ : std_logic;
SIGNAL \N[25]~output_o\ : std_logic;
SIGNAL \N[26]~output_o\ : std_logic;
SIGNAL \N[27]~output_o\ : std_logic;
SIGNAL \N[28]~output_o\ : std_logic;
SIGNAL \N[29]~output_o\ : std_logic;
SIGNAL \N[30]~output_o\ : std_logic;
SIGNAL \N[31]~output_o\ : std_logic;
SIGNAL \codeout[0]~output_o\ : std_logic;
SIGNAL \codeout[1]~output_o\ : std_logic;
SIGNAL \codeout[2]~output_o\ : std_logic;
SIGNAL \codeout[3]~output_o\ : std_logic;
SIGNAL \codeout[4]~output_o\ : std_logic;
SIGNAL \codeout[5]~output_o\ : std_logic;
SIGNAL \codeout[6]~output_o\ : std_logic;
SIGNAL \codeout[7]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \sel[2]~output_o\ : std_logic;
SIGNAL \X[0]~output_o\ : std_logic;
SIGNAL \X[1]~output_o\ : std_logic;
SIGNAL \X[2]~output_o\ : std_logic;
SIGNAL \X[3]~output_o\ : std_logic;
SIGNAL \X[4]~output_o\ : std_logic;
SIGNAL \X[5]~output_o\ : std_logic;
SIGNAL \X[6]~output_o\ : std_logic;
SIGNAL \X[7]~output_o\ : std_logic;
SIGNAL \Y[0]~output_o\ : std_logic;
SIGNAL \Y[1]~output_o\ : std_logic;
SIGNAL \Y[2]~output_o\ : std_logic;
SIGNAL \Y[3]~output_o\ : std_logic;
SIGNAL \Y[4]~output_o\ : std_logic;
SIGNAL \Y[5]~output_o\ : std_logic;
SIGNAL \Y[6]~output_o\ : std_logic;
SIGNAL \Y[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \sd|sel[0]~2_combout\ : std_logic;
SIGNAL \sd|sel[1]~0_combout\ : std_logic;
SIGNAL \km|Decoder0~0_combout\ : std_logic;
SIGNAL \km|Decoder0~1_combout\ : std_logic;
SIGNAL \km|Decoder0~2_combout\ : std_logic;
SIGNAL \km|Decoder0~3_combout\ : std_logic;
SIGNAL \KEY_R[2]~input_o\ : std_logic;
SIGNAL \KEY_R[1]~input_o\ : std_logic;
SIGNAL \KEY_R[3]~input_o\ : std_logic;
SIGNAL \KEY_R[0]~input_o\ : std_logic;
SIGNAL \km|Equal0~0_combout\ : std_logic;
SIGNAL \km|num~2_combout\ : std_logic;
SIGNAL \km|num~3_combout\ : std_logic;
SIGNAL \km|num~4_combout\ : std_logic;
SIGNAL \km|num~15_combout\ : std_logic;
SIGNAL \km|num~21_combout\ : std_logic;
SIGNAL \km|num~17_combout\ : std_logic;
SIGNAL \km|num~16_combout\ : std_logic;
SIGNAL \km|num~18_combout\ : std_logic;
SIGNAL \km|num~19_combout\ : std_logic;
SIGNAL \km|num~20_combout\ : std_logic;
SIGNAL \km|num~12_combout\ : std_logic;
SIGNAL \km|num~13_combout\ : std_logic;
SIGNAL \km|num~14_combout\ : std_logic;
SIGNAL \km|num~5_combout\ : std_logic;
SIGNAL \km|num~6_combout\ : std_logic;
SIGNAL \km|num~7_combout\ : std_logic;
SIGNAL \km|num~8_combout\ : std_logic;
SIGNAL \km|Equal1~0_combout\ : std_logic;
SIGNAL \km|num~10_combout\ : std_logic;
SIGNAL \km|num~9_combout\ : std_logic;
SIGNAL \km|num~11_combout\ : std_logic;
SIGNAL \km|Add1~24_combout\ : std_logic;
SIGNAL \km|Equal1~1_combout\ : std_logic;
SIGNAL \km|Add1~47_combout\ : std_logic;
SIGNAL \km|Add1~25\ : std_logic;
SIGNAL \km|Add1~26_combout\ : std_logic;
SIGNAL \km|Add1~48_combout\ : std_logic;
SIGNAL \km|count_num[8]~0_combout\ : std_logic;
SIGNAL \km|Add1~27\ : std_logic;
SIGNAL \km|Add1~28_combout\ : std_logic;
SIGNAL \km|Add1~49_combout\ : std_logic;
SIGNAL \km|Add1~29\ : std_logic;
SIGNAL \km|Add1~30_combout\ : std_logic;
SIGNAL \km|Add1~50_combout\ : std_logic;
SIGNAL \km|Add1~31\ : std_logic;
SIGNAL \km|Add1~32_combout\ : std_logic;
SIGNAL \km|Add1~46_combout\ : std_logic;
SIGNAL \km|Add1~33\ : std_logic;
SIGNAL \km|Add1~34_combout\ : std_logic;
SIGNAL \km|Add1~45_combout\ : std_logic;
SIGNAL \km|Add1~35\ : std_logic;
SIGNAL \km|Add1~36_combout\ : std_logic;
SIGNAL \km|Add1~44_combout\ : std_logic;
SIGNAL \km|Add1~37\ : std_logic;
SIGNAL \km|Add1~38_combout\ : std_logic;
SIGNAL \km|Add1~43_combout\ : std_logic;
SIGNAL \km|Add1~39\ : std_logic;
SIGNAL \km|Add1~40_combout\ : std_logic;
SIGNAL \km|Add1~42_combout\ : std_logic;
SIGNAL \km|Add1~41\ : std_logic;
SIGNAL \km|Add1~51_combout\ : std_logic;
SIGNAL \km|Add1~53_combout\ : std_logic;
SIGNAL \km|Add1~52\ : std_logic;
SIGNAL \km|Add1~54_combout\ : std_logic;
SIGNAL \km|Add1~56_combout\ : std_logic;
SIGNAL \km|Add1~55\ : std_logic;
SIGNAL \km|Add1~57_combout\ : std_logic;
SIGNAL \km|Add1~59_combout\ : std_logic;
SIGNAL \km|Add1~58\ : std_logic;
SIGNAL \km|Add1~60_combout\ : std_logic;
SIGNAL \km|Add1~62_combout\ : std_logic;
SIGNAL \km|Add1~61\ : std_logic;
SIGNAL \km|Add1~63_combout\ : std_logic;
SIGNAL \km|Add1~65_combout\ : std_logic;
SIGNAL \km|Add1~64\ : std_logic;
SIGNAL \km|Add1~66_combout\ : std_logic;
SIGNAL \km|Add1~68_combout\ : std_logic;
SIGNAL \km|Add1~67\ : std_logic;
SIGNAL \km|Add1~69_combout\ : std_logic;
SIGNAL \km|Add1~71_combout\ : std_logic;
SIGNAL \km|Add1~70\ : std_logic;
SIGNAL \km|Add1~72_combout\ : std_logic;
SIGNAL \km|Add1~74_combout\ : std_logic;
SIGNAL \km|Equal2~7_combout\ : std_logic;
SIGNAL \km|Equal2~0_combout\ : std_logic;
SIGNAL \km|Equal2~1_combout\ : std_logic;
SIGNAL \km|Equal2~8_combout\ : std_logic;
SIGNAL \km|Equal2~9_combout\ : std_logic;
SIGNAL \km|Equal2~10_combout\ : std_logic;
SIGNAL \km|Add1~73\ : std_logic;
SIGNAL \km|Add1~75_combout\ : std_logic;
SIGNAL \km|Add1~77_combout\ : std_logic;
SIGNAL \km|Add1~76\ : std_logic;
SIGNAL \km|Add1~78_combout\ : std_logic;
SIGNAL \km|Add1~80_combout\ : std_logic;
SIGNAL \km|Add1~79\ : std_logic;
SIGNAL \km|Add1~81_combout\ : std_logic;
SIGNAL \km|Add1~83_combout\ : std_logic;
SIGNAL \km|Add1~82\ : std_logic;
SIGNAL \km|Add1~84_combout\ : std_logic;
SIGNAL \km|Add1~108_combout\ : std_logic;
SIGNAL \km|Equal2~2_combout\ : std_logic;
SIGNAL \km|Add1~85\ : std_logic;
SIGNAL \km|Add1~86_combout\ : std_logic;
SIGNAL \km|Add1~109_combout\ : std_logic;
SIGNAL \km|Add1~87\ : std_logic;
SIGNAL \km|Add1~88_combout\ : std_logic;
SIGNAL \km|Add1~110_combout\ : std_logic;
SIGNAL \km|Add1~89\ : std_logic;
SIGNAL \km|Add1~90_combout\ : std_logic;
SIGNAL \km|Add1~111_combout\ : std_logic;
SIGNAL \km|Add1~91\ : std_logic;
SIGNAL \km|Add1~92_combout\ : std_logic;
SIGNAL \km|Add1~112_combout\ : std_logic;
SIGNAL \km|Equal2~3_combout\ : std_logic;
SIGNAL \km|Add1~93\ : std_logic;
SIGNAL \km|Add1~94_combout\ : std_logic;
SIGNAL \km|Add1~113_combout\ : std_logic;
SIGNAL \km|Add1~95\ : std_logic;
SIGNAL \km|Add1~96_combout\ : std_logic;
SIGNAL \km|Add1~114_combout\ : std_logic;
SIGNAL \km|Add1~97\ : std_logic;
SIGNAL \km|Add1~98_combout\ : std_logic;
SIGNAL \km|Add1~115_combout\ : std_logic;
SIGNAL \km|Add1~99\ : std_logic;
SIGNAL \km|Add1~100_combout\ : std_logic;
SIGNAL \km|Add1~116_combout\ : std_logic;
SIGNAL \km|Add1~101\ : std_logic;
SIGNAL \km|Add1~102_combout\ : std_logic;
SIGNAL \km|Add1~117_combout\ : std_logic;
SIGNAL \km|Add1~103\ : std_logic;
SIGNAL \km|Add1~104_combout\ : std_logic;
SIGNAL \km|Add1~118_combout\ : std_logic;
SIGNAL \km|Add1~105\ : std_logic;
SIGNAL \km|Add1~106_combout\ : std_logic;
SIGNAL \km|Add1~119_combout\ : std_logic;
SIGNAL \km|Equal2~5_combout\ : std_logic;
SIGNAL \km|Equal2~4_combout\ : std_logic;
SIGNAL \km|Equal2~6_combout\ : std_logic;
SIGNAL \km|LessThan0~0_combout\ : std_logic;
SIGNAL \km|LessThan0~1_combout\ : std_logic;
SIGNAL \km|LessThan0~2_combout\ : std_logic;
SIGNAL \km|LessThan0~3_combout\ : std_logic;
SIGNAL \km|out[0]~0_combout\ : std_logic;
SIGNAL \km|out[9]~feeder_combout\ : std_logic;
SIGNAL \S[2]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \cin~input_o\ : std_logic;
SIGNAL \Add0~1_cout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \ans[0]~reg0_q\ : std_logic;
SIGNAL \ans~6_combout\ : std_logic;
SIGNAL \ans~7_combout\ : std_logic;
SIGNAL \ans[1]~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ans[1]~8_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \ans~9_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \km|out[6]~feeder_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \ans[1]~10_combout\ : std_logic;
SIGNAL \ans[1]~11_combout\ : std_logic;
SIGNAL \ans[1]~reg0_q\ : std_logic;
SIGNAL \mw|Y[2]~feeder_combout\ : std_logic;
SIGNAL \ans~12_combout\ : std_logic;
SIGNAL \ans~13_combout\ : std_logic;
SIGNAL \ans[2]~1_combout\ : std_logic;
SIGNAL \ans~14_combout\ : std_logic;
SIGNAL \km|out[3]~feeder_combout\ : std_logic;
SIGNAL \km|out[7]~feeder_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \ans[2]~reg0_q\ : std_logic;
SIGNAL \mw|Y[3]~feeder_combout\ : std_logic;
SIGNAL \ans~16_combout\ : std_logic;
SIGNAL \ans~15_combout\ : std_logic;
SIGNAL \ans[3]~2_combout\ : std_logic;
SIGNAL \ans~17_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \ans[3]~reg0_q\ : std_logic;
SIGNAL \ans~19_combout\ : std_logic;
SIGNAL \ans~18_combout\ : std_logic;
SIGNAL \ans[4]~3_combout\ : std_logic;
SIGNAL \ans~20_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \ans[4]~reg0_q\ : std_logic;
SIGNAL \ans~22_combout\ : std_logic;
SIGNAL \ans~21_combout\ : std_logic;
SIGNAL \ans[5]~4_combout\ : std_logic;
SIGNAL \ans~23_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \ans[5]~reg0_q\ : std_logic;
SIGNAL \ans~24_combout\ : std_logic;
SIGNAL \ans~25_combout\ : std_logic;
SIGNAL \ans[6]~5_combout\ : std_logic;
SIGNAL \ans~26_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \ans[6]~reg0_q\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \ans[7]~reg0_q\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \ans~27_combout\ : std_logic;
SIGNAL \ans[8]~reg0_q\ : std_logic;
SIGNAL \sd|sel[2]~1_combout\ : std_logic;
SIGNAL \sd|num[3]~0_combout\ : std_logic;
SIGNAL \sd|num[3]~2_combout\ : std_logic;
SIGNAL \sd|Mux2~0_combout\ : std_logic;
SIGNAL \sd|num[3]~1_combout\ : std_logic;
SIGNAL \sd|Mux2~1_combout\ : std_logic;
SIGNAL \sd|Mux2~2_combout\ : std_logic;
SIGNAL \sd|Mux2~3_combout\ : std_logic;
SIGNAL \sd|Mux2~4_combout\ : std_logic;
SIGNAL \sd|Mux1~3_combout\ : std_logic;
SIGNAL \sd|Mux1~0_combout\ : std_logic;
SIGNAL \sd|Mux1~1_combout\ : std_logic;
SIGNAL \sd|Mux1~2_combout\ : std_logic;
SIGNAL \sd|Mux1~4_combout\ : std_logic;
SIGNAL \sd|Mux0~3_combout\ : std_logic;
SIGNAL \sd|Mux0~0_combout\ : std_logic;
SIGNAL \sd|Mux0~1_combout\ : std_logic;
SIGNAL \sd|Mux0~2_combout\ : std_logic;
SIGNAL \sd|Mux0~4_combout\ : std_logic;
SIGNAL \sd|Mux3~3_combout\ : std_logic;
SIGNAL \sd|Mux3~2_combout\ : std_logic;
SIGNAL \sd|Mux3~0_combout\ : std_logic;
SIGNAL \sd|Mux3~1_combout\ : std_logic;
SIGNAL \sd|Mux3~4_combout\ : std_logic;
SIGNAL \sd|WideOr6~0_combout\ : std_logic;
SIGNAL \sd|WideOr5~0_combout\ : std_logic;
SIGNAL \sd|WideOr4~0_combout\ : std_logic;
SIGNAL \sd|WideOr3~0_combout\ : std_logic;
SIGNAL \sd|WideOr2~0_combout\ : std_logic;
SIGNAL \sd|WideOr1~0_combout\ : std_logic;
SIGNAL \sd|WideOr0~0_combout\ : std_logic;
SIGNAL \km|out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \km|num\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \km|count_num\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \km|KEY_C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mw|Y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \mw|X\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sd|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sd|num\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sd|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \sd|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \sd|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \sd|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \sd|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \sd|ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_S <= S;
ww_cin <= cin;
ww_KEY_R <= KEY_R;
KEY_C <= ww_KEY_C;
ans <= ww_ans;
N <= ww_N;
codeout <= ww_codeout;
sel <= ww_sel;
X <= ww_X;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\sd|ALT_INV_WideOr1~0_combout\ <= NOT \sd|WideOr1~0_combout\;
\sd|ALT_INV_WideOr2~0_combout\ <= NOT \sd|WideOr2~0_combout\;
\sd|ALT_INV_WideOr3~0_combout\ <= NOT \sd|WideOr3~0_combout\;
\sd|ALT_INV_WideOr4~0_combout\ <= NOT \sd|WideOr4~0_combout\;
\sd|ALT_INV_WideOr5~0_combout\ <= NOT \sd|WideOr5~0_combout\;
\sd|ALT_INV_WideOr6~0_combout\ <= NOT \sd|WideOr6~0_combout\;

-- Location: IOOBUF_X32_Y0_N2
\KEY_C[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \km|KEY_C\(0),
	devoe => ww_devoe,
	o => \KEY_C[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\KEY_C[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \km|KEY_C\(1),
	devoe => ww_devoe,
	o => \KEY_C[1]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\KEY_C[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \km|KEY_C\(2),
	devoe => ww_devoe,
	o => \KEY_C[2]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\KEY_C[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \km|KEY_C\(3),
	devoe => ww_devoe,
	o => \KEY_C[3]~output_o\);

-- Location: IOOBUF_X0_Y40_N23
\ans[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[0]~output_o\);

-- Location: IOOBUF_X1_Y43_N16
\ans[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[1]~output_o\);

-- Location: IOOBUF_X0_Y39_N16
\ans[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[2]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\ans[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[3]~output_o\);

-- Location: IOOBUF_X5_Y43_N23
\ans[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[4]~output_o\);

-- Location: IOOBUF_X14_Y43_N16
\ans[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[5]~output_o\);

-- Location: IOOBUF_X0_Y38_N16
\ans[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[6]~output_o\);

-- Location: IOOBUF_X9_Y43_N9
\ans[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[7]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[7]~output_o\);

-- Location: IOOBUF_X3_Y43_N23
\ans[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[8]~reg0_q\,
	devoe => ww_devoe,
	o => \ans[8]~output_o\);

-- Location: IOOBUF_X20_Y43_N16
\ans[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ans[9]~output_o\);

-- Location: IOOBUF_X22_Y43_N2
\ans[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ans[10]~output_o\);

-- Location: IOOBUF_X65_Y43_N30
\ans[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ans[11]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\ans[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ans[12]~output_o\);

-- Location: IOOBUF_X16_Y43_N16
\ans[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ans[13]~output_o\);

-- Location: IOOBUF_X20_Y43_N9
\ans[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ans[14]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\ans[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ans[15]~output_o\);

-- Location: IOOBUF_X0_Y40_N2
\N[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[0]~reg0_q\,
	devoe => ww_devoe,
	o => \N[0]~output_o\);

-- Location: IOOBUF_X3_Y43_N30
\N[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[1]~reg0_q\,
	devoe => ww_devoe,
	o => \N[1]~output_o\);

-- Location: IOOBUF_X0_Y39_N2
\N[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[2]~reg0_q\,
	devoe => ww_devoe,
	o => \N[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\N[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[3]~reg0_q\,
	devoe => ww_devoe,
	o => \N[3]~output_o\);

-- Location: IOOBUF_X5_Y43_N2
\N[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[4]~reg0_q\,
	devoe => ww_devoe,
	o => \N[4]~output_o\);

-- Location: IOOBUF_X14_Y43_N23
\N[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[5]~reg0_q\,
	devoe => ww_devoe,
	o => \N[5]~output_o\);

-- Location: IOOBUF_X0_Y38_N23
\N[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[6]~reg0_q\,
	devoe => ww_devoe,
	o => \N[6]~output_o\);

-- Location: IOOBUF_X9_Y43_N2
\N[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[7]~reg0_q\,
	devoe => ww_devoe,
	o => \N[7]~output_o\);

-- Location: IOOBUF_X3_Y43_N2
\N[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ans[8]~reg0_q\,
	devoe => ww_devoe,
	o => \N[8]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\N[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[9]~output_o\);

-- Location: IOOBUF_X50_Y43_N16
\N[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[10]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\N[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[11]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\N[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[12]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\N[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[13]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\N[14]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[14]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\N[15]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \N[15]~output_o\);

-- Location: IOOBUF_X7_Y43_N23
\N[16]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(0),
	devoe => ww_devoe,
	o => \N[16]~output_o\);

-- Location: IOOBUF_X14_Y43_N9
\N[17]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(1),
	devoe => ww_devoe,
	o => \N[17]~output_o\);

-- Location: IOOBUF_X11_Y43_N9
\N[18]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(2),
	devoe => ww_devoe,
	o => \N[18]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\N[19]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(3),
	devoe => ww_devoe,
	o => \N[19]~output_o\);

-- Location: IOOBUF_X0_Y39_N23
\N[20]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(4),
	devoe => ww_devoe,
	o => \N[20]~output_o\);

-- Location: IOOBUF_X3_Y43_N16
\N[21]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(5),
	devoe => ww_devoe,
	o => \N[21]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\N[22]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(6),
	devoe => ww_devoe,
	o => \N[22]~output_o\);

-- Location: IOOBUF_X5_Y43_N30
\N[23]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(7),
	devoe => ww_devoe,
	o => \N[23]~output_o\);

-- Location: IOOBUF_X9_Y43_N16
\N[24]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(0),
	devoe => ww_devoe,
	o => \N[24]~output_o\);

-- Location: IOOBUF_X9_Y43_N30
\N[25]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(1),
	devoe => ww_devoe,
	o => \N[25]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\N[26]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(2),
	devoe => ww_devoe,
	o => \N[26]~output_o\);

-- Location: IOOBUF_X0_Y40_N9
\N[27]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(3),
	devoe => ww_devoe,
	o => \N[27]~output_o\);

-- Location: IOOBUF_X0_Y38_N2
\N[28]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(4),
	devoe => ww_devoe,
	o => \N[28]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\N[29]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(5),
	devoe => ww_devoe,
	o => \N[29]~output_o\);

-- Location: IOOBUF_X7_Y43_N9
\N[30]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(6),
	devoe => ww_devoe,
	o => \N[30]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\N[31]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(7),
	devoe => ww_devoe,
	o => \N[31]~output_o\);

-- Location: IOOBUF_X43_Y43_N30
\codeout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \codeout[0]~output_o\);

-- Location: IOOBUF_X50_Y43_N23
\codeout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \codeout[1]~output_o\);

-- Location: IOOBUF_X54_Y43_N16
\codeout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \codeout[2]~output_o\);

-- Location: IOOBUF_X48_Y43_N16
\codeout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \codeout[3]~output_o\);

-- Location: IOOBUF_X41_Y43_N9
\codeout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \codeout[4]~output_o\);

-- Location: IOOBUF_X29_Y43_N23
\codeout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \codeout[5]~output_o\);

-- Location: IOOBUF_X11_Y43_N16
\codeout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \codeout[6]~output_o\);

-- Location: IOOBUF_X67_Y35_N2
\codeout[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \codeout[7]~output_o\);

-- Location: IOOBUF_X56_Y43_N30
\sel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|sel\(0),
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

-- Location: IOOBUF_X65_Y43_N16
\sel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|sel\(1),
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

-- Location: IOOBUF_X5_Y43_N16
\sel[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sd|sel\(2),
	devoe => ww_devoe,
	o => \sel[2]~output_o\);

-- Location: IOOBUF_X11_Y43_N30
\X[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(0),
	devoe => ww_devoe,
	o => \X[0]~output_o\);

-- Location: IOOBUF_X9_Y43_N23
\X[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(1),
	devoe => ww_devoe,
	o => \X[1]~output_o\);

-- Location: IOOBUF_X0_Y36_N16
\X[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(2),
	devoe => ww_devoe,
	o => \X[2]~output_o\);

-- Location: IOOBUF_X0_Y40_N16
\X[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(3),
	devoe => ww_devoe,
	o => \X[3]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\X[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(4),
	devoe => ww_devoe,
	o => \X[4]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\X[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(5),
	devoe => ww_devoe,
	o => \X[5]~output_o\);

-- Location: IOOBUF_X7_Y43_N16
\X[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(6),
	devoe => ww_devoe,
	o => \X[6]~output_o\);

-- Location: IOOBUF_X0_Y38_N9
\X[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|X\(7),
	devoe => ww_devoe,
	o => \X[7]~output_o\);

-- Location: IOOBUF_X7_Y43_N30
\Y[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(0),
	devoe => ww_devoe,
	o => \Y[0]~output_o\);

-- Location: IOOBUF_X14_Y43_N30
\Y[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(1),
	devoe => ww_devoe,
	o => \Y[1]~output_o\);

-- Location: IOOBUF_X11_Y43_N2
\Y[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(2),
	devoe => ww_devoe,
	o => \Y[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Y[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(3),
	devoe => ww_devoe,
	o => \Y[3]~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\Y[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(4),
	devoe => ww_devoe,
	o => \Y[4]~output_o\);

-- Location: IOOBUF_X3_Y43_N9
\Y[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(5),
	devoe => ww_devoe,
	o => \Y[5]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\Y[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(6),
	devoe => ww_devoe,
	o => \Y[6]~output_o\);

-- Location: IOOBUF_X5_Y43_N9
\Y[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mw|Y\(7),
	devoe => ww_devoe,
	o => \Y[7]~output_o\);

-- Location: IOIBUF_X34_Y43_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G14
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

-- Location: LCCOMB_X12_Y38_N2
\sd|sel[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|sel[0]~2_combout\ = !\sd|sel\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd|sel\(0),
	combout => \sd|sel[0]~2_combout\);

-- Location: FF_X12_Y38_N3
\sd|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sd|sel[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd|sel\(0));

-- Location: LCCOMB_X12_Y38_N24
\sd|sel[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|sel[1]~0_combout\ = \sd|sel\(1) $ (\sd|sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd|sel\(1),
	datad => \sd|sel\(0),
	combout => \sd|sel[1]~0_combout\);

-- Location: FF_X12_Y38_N25
\sd|sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sd|sel[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd|sel\(1));

-- Location: LCCOMB_X19_Y36_N12
\km|Decoder0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Decoder0~0_combout\ = (!\sd|sel\(0)) # (!\sd|sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd|sel\(1),
	datad => \sd|sel\(0),
	combout => \km|Decoder0~0_combout\);

-- Location: FF_X19_Y36_N13
\km|KEY_C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|KEY_C\(0));

-- Location: LCCOMB_X19_Y36_N2
\km|Decoder0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Decoder0~1_combout\ = (\sd|sel\(1)) # (\sd|sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd|sel\(1),
	datad => \sd|sel\(0),
	combout => \km|Decoder0~1_combout\);

-- Location: FF_X19_Y36_N3
\km|KEY_C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|KEY_C\(1));

-- Location: LCCOMB_X19_Y36_N4
\km|Decoder0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Decoder0~2_combout\ = (\sd|sel\(1)) # (!\sd|sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd|sel\(1),
	datad => \sd|sel\(0),
	combout => \km|Decoder0~2_combout\);

-- Location: FF_X19_Y36_N5
\km|KEY_C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|KEY_C\(2));

-- Location: LCCOMB_X19_Y36_N26
\km|Decoder0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Decoder0~3_combout\ = (\sd|sel\(0)) # (!\sd|sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd|sel\(1),
	datad => \sd|sel\(0),
	combout => \km|Decoder0~3_combout\);

-- Location: FF_X19_Y36_N27
\km|KEY_C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|KEY_C\(3));

-- Location: IOIBUF_X27_Y0_N15
\KEY_R[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_R(2),
	o => \KEY_R[2]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\KEY_R[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_R(1),
	o => \KEY_R[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N8
\KEY_R[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_R(3),
	o => \KEY_R[3]~input_o\);

-- Location: IOIBUF_X1_Y0_N22
\KEY_R[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY_R(0),
	o => \KEY_R[0]~input_o\);

-- Location: LCCOMB_X19_Y36_N20
\km|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal0~0_combout\ = (\KEY_R[2]~input_o\ & (\KEY_R[1]~input_o\ & (\KEY_R[3]~input_o\ & \KEY_R[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_R[2]~input_o\,
	datab => \KEY_R[1]~input_o\,
	datac => \KEY_R[3]~input_o\,
	datad => \KEY_R[0]~input_o\,
	combout => \km|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y36_N30
\km|num~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~2_combout\ = (\KEY_R[2]~input_o\ & ((\KEY_R[1]~input_o\ & (\KEY_R[3]~input_o\ $ (!\KEY_R[0]~input_o\))) # (!\KEY_R[1]~input_o\ & ((!\KEY_R[0]~input_o\) # (!\KEY_R[3]~input_o\))))) # (!\KEY_R[2]~input_o\ & (((!\KEY_R[0]~input_o\) # 
-- (!\KEY_R[3]~input_o\)) # (!\KEY_R[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_R[2]~input_o\,
	datab => \KEY_R[1]~input_o\,
	datac => \KEY_R[3]~input_o\,
	datad => \KEY_R[0]~input_o\,
	combout => \km|num~2_combout\);

-- Location: LCCOMB_X19_Y36_N24
\km|num~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~3_combout\ = (\km|KEY_C\(3) & ((\km|KEY_C\(1) & (\km|KEY_C\(2) $ (!\km|KEY_C\(0)))) # (!\km|KEY_C\(1) & ((!\km|KEY_C\(0)) # (!\km|KEY_C\(2)))))) # (!\km|KEY_C\(3) & (((!\km|KEY_C\(0)) # (!\km|KEY_C\(2))) # (!\km|KEY_C\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|KEY_C\(3),
	datab => \km|KEY_C\(1),
	datac => \km|KEY_C\(2),
	datad => \km|KEY_C\(0),
	combout => \km|num~3_combout\);

-- Location: LCCOMB_X19_Y36_N22
\km|num~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~4_combout\ = (\km|num~2_combout\) # (\km|num~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \km|num~2_combout\,
	datad => \km|num~3_combout\,
	combout => \km|num~4_combout\);

-- Location: FF_X18_Y36_N7
\km|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|num~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|num\(1));

-- Location: LCCOMB_X19_Y36_N8
\km|num~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~15_combout\ = (\km|KEY_C\(2) & (((\KEY_R[1]~input_o\ & !\km|KEY_C\(1))) # (!\KEY_R[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_R[2]~input_o\,
	datab => \KEY_R[1]~input_o\,
	datac => \km|KEY_C\(2),
	datad => \km|KEY_C\(1),
	combout => \km|num~15_combout\);

-- Location: LCCOMB_X19_Y36_N6
\km|num~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~21_combout\ = (\KEY_R[3]~input_o\ & ((\km|KEY_C\(3) & ((\km|num~15_combout\))) # (!\km|KEY_C\(3) & (\KEY_R[2]~input_o\)))) # (!\KEY_R[3]~input_o\ & (((\km|KEY_C\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_R[2]~input_o\,
	datab => \km|num~15_combout\,
	datac => \KEY_R[3]~input_o\,
	datad => \km|KEY_C\(3),
	combout => \km|num~21_combout\);

-- Location: LCCOMB_X18_Y36_N6
\km|num~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~17_combout\ = (!\km|Equal0~0_combout\ & ((\km|num~4_combout\ & (\km|num\(1))) # (!\km|num~4_combout\ & ((\km|num~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal0~0_combout\,
	datab => \km|num~4_combout\,
	datac => \km|num\(1),
	datad => \km|num~21_combout\,
	combout => \km|num~17_combout\);

-- Location: FF_X18_Y36_N21
\km|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|num~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|num\(3));

-- Location: LCCOMB_X18_Y36_N30
\km|num~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~16_combout\ = (\KEY_R[2]~input_o\ & \KEY_R[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY_R[2]~input_o\,
	datad => \KEY_R[3]~input_o\,
	combout => \km|num~16_combout\);

-- Location: LCCOMB_X18_Y36_N14
\km|num~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~18_combout\ = (\km|num~16_combout\ & ((\KEY_R[1]~input_o\ & ((\km|KEY_C\(2)) # (!\km|KEY_C\(3)))) # (!\KEY_R[1]~input_o\ & (\km|KEY_C\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_R[1]~input_o\,
	datab => \km|num~16_combout\,
	datac => \km|KEY_C\(3),
	datad => \km|KEY_C\(2),
	combout => \km|num~18_combout\);

-- Location: LCCOMB_X18_Y36_N24
\km|num~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~19_combout\ = (\km|num~18_combout\) # ((\km|KEY_C\(2) & (\km|KEY_C\(3) & \km|KEY_C\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|KEY_C\(2),
	datab => \km|num~18_combout\,
	datac => \km|KEY_C\(3),
	datad => \km|KEY_C\(1),
	combout => \km|num~19_combout\);

-- Location: LCCOMB_X18_Y36_N20
\km|num~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~20_combout\ = (!\km|Equal0~0_combout\ & ((\km|num~4_combout\ & (\km|num\(3))) # (!\km|num~4_combout\ & ((\km|num~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal0~0_combout\,
	datab => \km|num~4_combout\,
	datac => \km|num\(3),
	datad => \km|num~19_combout\,
	combout => \km|num~20_combout\);

-- Location: FF_X18_Y36_N23
\km|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|num~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|num\(2));

-- Location: LCCOMB_X18_Y36_N16
\km|num~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~12_combout\ = (\km|KEY_C\(1) & (\KEY_R[2]~input_o\ $ (((\km|KEY_C\(2)))))) # (!\km|KEY_C\(1) & (\KEY_R[2]~input_o\ & ((!\km|KEY_C\(2)) # (!\KEY_R[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|KEY_C\(1),
	datab => \KEY_R[2]~input_o\,
	datac => \KEY_R[1]~input_o\,
	datad => \km|KEY_C\(2),
	combout => \km|num~12_combout\);

-- Location: LCCOMB_X18_Y36_N10
\km|num~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~13_combout\ = (\KEY_R[3]~input_o\ & ((!\km|num~12_combout\) # (!\km|KEY_C\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|KEY_C\(3),
	datab => \KEY_R[3]~input_o\,
	datad => \km|num~12_combout\,
	combout => \km|num~13_combout\);

-- Location: LCCOMB_X18_Y36_N22
\km|num~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~14_combout\ = (!\km|Equal0~0_combout\ & ((\km|num~4_combout\ & (\km|num\(2))) # (!\km|num~4_combout\ & ((\km|num~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal0~0_combout\,
	datab => \km|num~4_combout\,
	datac => \km|num\(2),
	datad => \km|num~13_combout\,
	combout => \km|num~14_combout\);

-- Location: FF_X19_Y36_N17
\km|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|num~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|num\(0));

-- Location: LCCOMB_X19_Y36_N10
\km|num~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~5_combout\ = (\KEY_R[3]~input_o\ & ((\KEY_R[1]~input_o\) # (!\KEY_R[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_R[3]~input_o\,
	datab => \KEY_R[1]~input_o\,
	datac => \KEY_R[2]~input_o\,
	combout => \km|num~5_combout\);

-- Location: LCCOMB_X19_Y36_N0
\km|num~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~6_combout\ = (\km|KEY_C\(2) & (!\km|KEY_C\(1) & ((!\km|num~5_combout\) # (!\KEY_R[2]~input_o\)))) # (!\km|KEY_C\(2) & (\KEY_R[2]~input_o\ & (\km|num~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_R[2]~input_o\,
	datab => \km|num~5_combout\,
	datac => \km|KEY_C\(2),
	datad => \km|KEY_C\(1),
	combout => \km|num~6_combout\);

-- Location: LCCOMB_X19_Y36_N18
\km|num~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~7_combout\ = \km|num~5_combout\ $ (((\km|KEY_C\(3) & !\km|num~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|num~5_combout\,
	datac => \km|KEY_C\(3),
	datad => \km|num~6_combout\,
	combout => \km|num~7_combout\);

-- Location: LCCOMB_X19_Y36_N16
\km|num~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~8_combout\ = (!\km|Equal0~0_combout\ & ((\km|num~4_combout\ & (\km|num\(0))) # (!\km|num~4_combout\ & ((!\km|num~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~4_combout\,
	datab => \km|Equal0~0_combout\,
	datac => \km|num\(0),
	datad => \km|num~7_combout\,
	combout => \km|num~8_combout\);

-- Location: LCCOMB_X18_Y36_N26
\km|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal1~0_combout\ = (!\km|num~17_combout\ & (!\km|num~20_combout\ & (!\km|num~14_combout\ & !\km|num~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~17_combout\,
	datab => \km|num~20_combout\,
	datac => \km|num~14_combout\,
	datad => \km|num~8_combout\,
	combout => \km|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y36_N14
\km|num~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~10_combout\ = (\KEY_R[2]~input_o\ & ((\KEY_R[1]~input_o\ & (\KEY_R[3]~input_o\ $ (\KEY_R[0]~input_o\))) # (!\KEY_R[1]~input_o\ & (\KEY_R[3]~input_o\ & \KEY_R[0]~input_o\)))) # (!\KEY_R[2]~input_o\ & (\KEY_R[1]~input_o\ & (\KEY_R[3]~input_o\ & 
-- \KEY_R[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY_R[2]~input_o\,
	datab => \KEY_R[1]~input_o\,
	datac => \KEY_R[3]~input_o\,
	datad => \KEY_R[0]~input_o\,
	combout => \km|num~10_combout\);

-- Location: FF_X18_Y36_N13
\km|num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|num~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|num\(4));

-- Location: LCCOMB_X19_Y36_N28
\km|num~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~9_combout\ = (\km|KEY_C\(3) & ((\km|KEY_C\(1) & (\km|KEY_C\(2) $ (\km|KEY_C\(0)))) # (!\km|KEY_C\(1) & (\km|KEY_C\(2) & \km|KEY_C\(0))))) # (!\km|KEY_C\(3) & (\km|KEY_C\(1) & (\km|KEY_C\(2) & \km|KEY_C\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|KEY_C\(3),
	datab => \km|KEY_C\(1),
	datac => \km|KEY_C\(2),
	datad => \km|KEY_C\(0),
	combout => \km|num~9_combout\);

-- Location: LCCOMB_X18_Y36_N12
\km|num~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|num~11_combout\ = (!\km|Equal0~0_combout\ & ((\km|num\(4)) # ((\km|num~10_combout\ & \km|num~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal0~0_combout\,
	datab => \km|num~10_combout\,
	datac => \km|num\(4),
	datad => \km|num~9_combout\,
	combout => \km|num~11_combout\);

-- Location: LCCOMB_X16_Y36_N0
\km|Add1~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~24_combout\ = (((\km|Equal2~10_combout\) # (!\km|count_num\(0))))
-- \km|Add1~25\ = CARRY((\km|Equal2~10_combout\) # (!\km|count_num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(0),
	datab => \km|Equal2~10_combout\,
	datad => VCC,
	combout => \km|Add1~24_combout\,
	cout => \km|Add1~25\);

-- Location: LCCOMB_X18_Y36_N8
\km|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal1~1_combout\ = (\km|Equal1~0_combout\ & !\km|num~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal1~0_combout\,
	datab => \km|num~11_combout\,
	combout => \km|Equal1~1_combout\);

-- Location: LCCOMB_X15_Y36_N8
\km|Add1~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~47_combout\ = (\km|Equal1~1_combout\ & (!\km|Add1~24_combout\)) # (!\km|Equal1~1_combout\ & (((!\km|LessThan0~3_combout\ & \km|count_num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Add1~24_combout\,
	datab => \km|LessThan0~3_combout\,
	datac => \km|count_num\(0),
	datad => \km|Equal1~1_combout\,
	combout => \km|Add1~47_combout\);

-- Location: FF_X15_Y36_N9
\km|count_num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(0));

-- Location: LCCOMB_X16_Y36_N2
\km|Add1~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~26_combout\ = (\km|count_num\(1) & (!\km|Add1~25\)) # (!\km|count_num\(1) & ((\km|Add1~25\) # (GND)))
-- \km|Add1~27\ = CARRY((!\km|Add1~25\) # (!\km|count_num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(1),
	datad => VCC,
	cin => \km|Add1~25\,
	combout => \km|Add1~26_combout\,
	cout => \km|Add1~27\);

-- Location: LCCOMB_X14_Y36_N10
\km|Add1~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~48_combout\ = (!\km|num~11_combout\ & (\km|Add1~26_combout\ & \km|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|num~11_combout\,
	datac => \km|Add1~26_combout\,
	datad => \km|Equal1~0_combout\,
	combout => \km|Add1~48_combout\);

-- Location: LCCOMB_X17_Y36_N22
\km|count_num[8]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|count_num[8]~0_combout\ = (\km|LessThan0~3_combout\) # ((!\km|num~11_combout\ & \km|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|num~11_combout\,
	datac => \km|LessThan0~3_combout\,
	datad => \km|Equal1~0_combout\,
	combout => \km|count_num[8]~0_combout\);

-- Location: FF_X15_Y36_N31
\km|count_num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|Add1~48_combout\,
	sload => VCC,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(1));

-- Location: LCCOMB_X16_Y36_N4
\km|Add1~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~28_combout\ = (\km|count_num\(2) & (\km|Add1~27\ $ (GND))) # (!\km|count_num\(2) & (!\km|Add1~27\ & VCC))
-- \km|Add1~29\ = CARRY((\km|count_num\(2) & !\km|Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(2),
	datad => VCC,
	cin => \km|Add1~27\,
	combout => \km|Add1~28_combout\,
	cout => \km|Add1~29\);

-- Location: LCCOMB_X15_Y36_N24
\km|Add1~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~49_combout\ = (!\km|num~11_combout\ & (\km|Equal1~0_combout\ & \km|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~11_combout\,
	datab => \km|Equal1~0_combout\,
	datad => \km|Add1~28_combout\,
	combout => \km|Add1~49_combout\);

-- Location: FF_X15_Y36_N25
\km|count_num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~49_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(2));

-- Location: LCCOMB_X16_Y36_N6
\km|Add1~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~30_combout\ = (\km|count_num\(3) & (!\km|Add1~29\)) # (!\km|count_num\(3) & ((\km|Add1~29\) # (GND)))
-- \km|Add1~31\ = CARRY((!\km|Add1~29\) # (!\km|count_num\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(3),
	datad => VCC,
	cin => \km|Add1~29\,
	combout => \km|Add1~30_combout\,
	cout => \km|Add1~31\);

-- Location: LCCOMB_X15_Y36_N10
\km|Add1~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~50_combout\ = (!\km|num~11_combout\ & (\km|Equal1~0_combout\ & \km|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~11_combout\,
	datab => \km|Equal1~0_combout\,
	datad => \km|Add1~30_combout\,
	combout => \km|Add1~50_combout\);

-- Location: FF_X15_Y36_N11
\km|count_num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~50_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(3));

-- Location: LCCOMB_X16_Y36_N8
\km|Add1~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~32_combout\ = (\km|count_num\(4) & (\km|Add1~31\ $ (GND))) # (!\km|count_num\(4) & (!\km|Add1~31\ & VCC))
-- \km|Add1~33\ = CARRY((\km|count_num\(4) & !\km|Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(4),
	datad => VCC,
	cin => \km|Add1~31\,
	combout => \km|Add1~32_combout\,
	cout => \km|Add1~33\);

-- Location: LCCOMB_X14_Y36_N4
\km|Add1~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~46_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~32_combout\,
	combout => \km|Add1~46_combout\);

-- Location: FF_X14_Y36_N5
\km|count_num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~46_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(4));

-- Location: LCCOMB_X16_Y36_N10
\km|Add1~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~34_combout\ = (\km|count_num\(5) & (((!\km|Add1~33\)))) # (!\km|count_num\(5) & ((\km|Equal2~10_combout\ & (!\km|Add1~33\)) # (!\km|Equal2~10_combout\ & ((\km|Add1~33\) # (GND)))))
-- \km|Add1~35\ = CARRY(((!\km|count_num\(5) & !\km|Equal2~10_combout\)) # (!\km|Add1~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(5),
	datab => \km|Equal2~10_combout\,
	datad => VCC,
	cin => \km|Add1~33\,
	combout => \km|Add1~34_combout\,
	cout => \km|Add1~35\);

-- Location: LCCOMB_X14_Y36_N2
\km|Add1~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~45_combout\ = (!\km|num~11_combout\ & (\km|Add1~34_combout\ & \km|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|num~11_combout\,
	datac => \km|Add1~34_combout\,
	datad => \km|Equal1~0_combout\,
	combout => \km|Add1~45_combout\);

-- Location: FF_X14_Y36_N3
\km|count_num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~45_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(5));

-- Location: LCCOMB_X16_Y36_N12
\km|Add1~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~36_combout\ = (\km|count_num\(6) & (\km|Add1~35\ $ (GND))) # (!\km|count_num\(6) & (!\km|Add1~35\ & VCC))
-- \km|Add1~37\ = CARRY((\km|count_num\(6) & !\km|Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(6),
	datad => VCC,
	cin => \km|Add1~35\,
	combout => \km|Add1~36_combout\,
	cout => \km|Add1~37\);

-- Location: LCCOMB_X14_Y36_N8
\km|Add1~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~44_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~36_combout\,
	combout => \km|Add1~44_combout\);

-- Location: FF_X14_Y36_N9
\km|count_num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~44_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(6));

-- Location: LCCOMB_X16_Y36_N14
\km|Add1~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~38_combout\ = (\km|count_num\(7) & (((!\km|Add1~37\)))) # (!\km|count_num\(7) & ((\km|Equal2~10_combout\ & (!\km|Add1~37\)) # (!\km|Equal2~10_combout\ & ((\km|Add1~37\) # (GND)))))
-- \km|Add1~39\ = CARRY(((!\km|count_num\(7) & !\km|Equal2~10_combout\)) # (!\km|Add1~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(7),
	datab => \km|Equal2~10_combout\,
	datad => VCC,
	cin => \km|Add1~37\,
	combout => \km|Add1~38_combout\,
	cout => \km|Add1~39\);

-- Location: LCCOMB_X14_Y36_N22
\km|Add1~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~43_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~38_combout\,
	combout => \km|Add1~43_combout\);

-- Location: FF_X14_Y36_N23
\km|count_num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~43_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(7));

-- Location: LCCOMB_X16_Y36_N16
\km|Add1~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~40_combout\ = (\km|count_num\(8) & (\km|Add1~39\ $ (GND))) # (!\km|count_num\(8) & (!\km|Add1~39\ & VCC))
-- \km|Add1~41\ = CARRY((\km|count_num\(8) & !\km|Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(8),
	datad => VCC,
	cin => \km|Add1~39\,
	combout => \km|Add1~40_combout\,
	cout => \km|Add1~41\);

-- Location: LCCOMB_X14_Y36_N28
\km|Add1~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~42_combout\ = (!\km|num~11_combout\ & (\km|Add1~40_combout\ & \km|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|num~11_combout\,
	datac => \km|Add1~40_combout\,
	datad => \km|Equal1~0_combout\,
	combout => \km|Add1~42_combout\);

-- Location: FF_X14_Y36_N29
\km|count_num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~42_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(8));

-- Location: LCCOMB_X16_Y36_N18
\km|Add1~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~51_combout\ = (\km|count_num\(9) & (((!\km|Add1~41\)))) # (!\km|count_num\(9) & ((\km|Equal2~10_combout\ & (!\km|Add1~41\)) # (!\km|Equal2~10_combout\ & ((\km|Add1~41\) # (GND)))))
-- \km|Add1~52\ = CARRY(((!\km|count_num\(9) & !\km|Equal2~10_combout\)) # (!\km|Add1~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(9),
	datab => \km|Equal2~10_combout\,
	datad => VCC,
	cin => \km|Add1~41\,
	combout => \km|Add1~51_combout\,
	cout => \km|Add1~52\);

-- Location: LCCOMB_X17_Y36_N4
\km|Add1~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~53_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~51_combout\,
	combout => \km|Add1~53_combout\);

-- Location: FF_X17_Y36_N5
\km|count_num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~53_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(9));

-- Location: LCCOMB_X16_Y36_N20
\km|Add1~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~54_combout\ = (\km|Add1~52\ & (((\km|count_num\(10)) # (\km|Equal2~10_combout\)))) # (!\km|Add1~52\ & ((((\km|count_num\(10)) # (\km|Equal2~10_combout\)))))
-- \km|Add1~55\ = CARRY((!\km|Add1~52\ & ((\km|count_num\(10)) # (\km|Equal2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(10),
	datab => \km|Equal2~10_combout\,
	datad => VCC,
	cin => \km|Add1~52\,
	combout => \km|Add1~54_combout\,
	cout => \km|Add1~55\);

-- Location: LCCOMB_X17_Y36_N6
\km|Add1~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~56_combout\ = (\km|Add1~54_combout\ & (!\km|num~11_combout\ & \km|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Add1~54_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Equal1~0_combout\,
	combout => \km|Add1~56_combout\);

-- Location: FF_X17_Y36_N7
\km|count_num[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~56_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(10));

-- Location: LCCOMB_X16_Y36_N22
\km|Add1~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~57_combout\ = (\km|count_num\(11) & (!\km|Add1~55\)) # (!\km|count_num\(11) & ((\km|Add1~55\) # (GND)))
-- \km|Add1~58\ = CARRY((!\km|Add1~55\) # (!\km|count_num\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(11),
	datad => VCC,
	cin => \km|Add1~55\,
	combout => \km|Add1~57_combout\,
	cout => \km|Add1~58\);

-- Location: LCCOMB_X17_Y36_N0
\km|Add1~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~59_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~57_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~57_combout\,
	combout => \km|Add1~59_combout\);

-- Location: FF_X17_Y36_N1
\km|count_num[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~59_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(11));

-- Location: LCCOMB_X16_Y36_N24
\km|Add1~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~60_combout\ = (\km|count_num\(12) & (\km|Add1~58\ $ (GND))) # (!\km|count_num\(12) & (!\km|Add1~58\ & VCC))
-- \km|Add1~61\ = CARRY((\km|count_num\(12) & !\km|Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(12),
	datad => VCC,
	cin => \km|Add1~58\,
	combout => \km|Add1~60_combout\,
	cout => \km|Add1~61\);

-- Location: LCCOMB_X17_Y36_N26
\km|Add1~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~62_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~60_combout\,
	combout => \km|Add1~62_combout\);

-- Location: FF_X17_Y36_N27
\km|count_num[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~62_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(12));

-- Location: LCCOMB_X16_Y36_N26
\km|Add1~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~63_combout\ = (\km|count_num\(13) & (!\km|Add1~61\)) # (!\km|count_num\(13) & ((\km|Add1~61\) # (GND)))
-- \km|Add1~64\ = CARRY((!\km|Add1~61\) # (!\km|count_num\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(13),
	datad => VCC,
	cin => \km|Add1~61\,
	combout => \km|Add1~63_combout\,
	cout => \km|Add1~64\);

-- Location: LCCOMB_X17_Y36_N12
\km|Add1~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~65_combout\ = (\km|Add1~63_combout\ & (\km|Equal1~0_combout\ & !\km|num~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Add1~63_combout\,
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	combout => \km|Add1~65_combout\);

-- Location: FF_X17_Y36_N13
\km|count_num[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~65_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(13));

-- Location: LCCOMB_X16_Y36_N28
\km|Add1~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~66_combout\ = (\km|count_num\(14) & (\km|Add1~64\ $ (GND))) # (!\km|count_num\(14) & (!\km|Add1~64\ & VCC))
-- \km|Add1~67\ = CARRY((\km|count_num\(14) & !\km|Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(14),
	datad => VCC,
	cin => \km|Add1~64\,
	combout => \km|Add1~66_combout\,
	cout => \km|Add1~67\);

-- Location: LCCOMB_X17_Y36_N10
\km|Add1~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~68_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~66_combout\,
	combout => \km|Add1~68_combout\);

-- Location: FF_X17_Y36_N11
\km|count_num[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~68_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(14));

-- Location: LCCOMB_X16_Y36_N30
\km|Add1~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~69_combout\ = (\km|count_num\(15) & (((!\km|Add1~67\)))) # (!\km|count_num\(15) & ((\km|Equal2~10_combout\ & (!\km|Add1~67\)) # (!\km|Equal2~10_combout\ & ((\km|Add1~67\) # (GND)))))
-- \km|Add1~70\ = CARRY(((!\km|count_num\(15) & !\km|Equal2~10_combout\)) # (!\km|Add1~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(15),
	datab => \km|Equal2~10_combout\,
	datad => VCC,
	cin => \km|Add1~67\,
	combout => \km|Add1~69_combout\,
	cout => \km|Add1~70\);

-- Location: LCCOMB_X17_Y36_N28
\km|Add1~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~71_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~69_combout\,
	combout => \km|Add1~71_combout\);

-- Location: FF_X17_Y36_N29
\km|count_num[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~71_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(15));

-- Location: LCCOMB_X16_Y35_N0
\km|Add1~72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~72_combout\ = (\km|Add1~70\ & (((\km|Equal2~10_combout\) # (\km|count_num\(16))))) # (!\km|Add1~70\ & ((((\km|Equal2~10_combout\) # (\km|count_num\(16))))))
-- \km|Add1~73\ = CARRY((!\km|Add1~70\ & ((\km|Equal2~10_combout\) # (\km|count_num\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal2~10_combout\,
	datab => \km|count_num\(16),
	datad => VCC,
	cin => \km|Add1~70\,
	combout => \km|Add1~72_combout\,
	cout => \km|Add1~73\);

-- Location: LCCOMB_X17_Y36_N30
\km|Add1~74\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~74_combout\ = (\km|Add1~72_combout\ & (\km|Equal1~0_combout\ & !\km|num~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Add1~72_combout\,
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	combout => \km|Add1~74_combout\);

-- Location: FF_X17_Y36_N31
\km|count_num[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~74_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(16));

-- Location: LCCOMB_X17_Y36_N20
\km|Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~7_combout\ = (!\km|count_num\(10) & (!\km|count_num\(9) & (!\km|count_num\(16) & !\km|count_num\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(10),
	datab => \km|count_num\(9),
	datac => \km|count_num\(16),
	datad => \km|count_num\(15),
	combout => \km|Equal2~7_combout\);

-- Location: LCCOMB_X15_Y36_N30
\km|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~0_combout\ = (!\km|count_num\(3) & (!\km|count_num\(2) & (!\km|count_num\(1) & \km|count_num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(3),
	datab => \km|count_num\(2),
	datac => \km|count_num\(1),
	datad => \km|count_num\(0),
	combout => \km|Equal2~0_combout\);

-- Location: LCCOMB_X17_Y36_N8
\km|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~1_combout\ = (!\km|count_num\(13) & (!\km|count_num\(11) & (!\km|count_num\(12) & !\km|count_num\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(13),
	datab => \km|count_num\(11),
	datac => \km|count_num\(12),
	datad => \km|count_num\(14),
	combout => \km|Equal2~1_combout\);

-- Location: LCCOMB_X14_Y36_N20
\km|Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~8_combout\ = (!\km|count_num\(7) & (!\km|count_num\(5) & (!\km|count_num\(6) & !\km|count_num\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(7),
	datab => \km|count_num\(5),
	datac => \km|count_num\(6),
	datad => \km|count_num\(8),
	combout => \km|Equal2~8_combout\);

-- Location: LCCOMB_X15_Y36_N16
\km|Equal2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~9_combout\ = (\km|Equal2~0_combout\ & (!\km|count_num\(4) & (\km|Equal2~1_combout\ & \km|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal2~0_combout\,
	datab => \km|count_num\(4),
	datac => \km|Equal2~1_combout\,
	datad => \km|Equal2~8_combout\,
	combout => \km|Equal2~9_combout\);

-- Location: LCCOMB_X15_Y36_N6
\km|Equal2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~10_combout\ = (\km|Equal2~7_combout\ & (\km|Equal2~6_combout\ & \km|Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal2~7_combout\,
	datac => \km|Equal2~6_combout\,
	datad => \km|Equal2~9_combout\,
	combout => \km|Equal2~10_combout\);

-- Location: LCCOMB_X16_Y35_N2
\km|Add1~75\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~75_combout\ = (\km|count_num\(17) & (!\km|Add1~73\)) # (!\km|count_num\(17) & ((\km|Add1~73\) # (GND)))
-- \km|Add1~76\ = CARRY((!\km|Add1~73\) # (!\km|count_num\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(17),
	datad => VCC,
	cin => \km|Add1~73\,
	combout => \km|Add1~75_combout\,
	cout => \km|Add1~76\);

-- Location: LCCOMB_X14_Y36_N30
\km|Add1~77\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~77_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~75_combout\,
	combout => \km|Add1~77_combout\);

-- Location: FF_X14_Y36_N31
\km|count_num[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~77_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(17));

-- Location: LCCOMB_X16_Y35_N4
\km|Add1~78\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~78_combout\ = (\km|count_num\(18) & (\km|Add1~76\ $ (GND))) # (!\km|count_num\(18) & (!\km|Add1~76\ & VCC))
-- \km|Add1~79\ = CARRY((\km|count_num\(18) & !\km|Add1~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(18),
	datad => VCC,
	cin => \km|Add1~76\,
	combout => \km|Add1~78_combout\,
	cout => \km|Add1~79\);

-- Location: LCCOMB_X14_Y36_N12
\km|Add1~80\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~80_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~78_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~78_combout\,
	combout => \km|Add1~80_combout\);

-- Location: FF_X14_Y36_N13
\km|count_num[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~80_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(18));

-- Location: LCCOMB_X16_Y35_N6
\km|Add1~81\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~81_combout\ = (\km|count_num\(19) & (!\km|Add1~79\)) # (!\km|count_num\(19) & ((\km|Add1~79\) # (GND)))
-- \km|Add1~82\ = CARRY((!\km|Add1~79\) # (!\km|count_num\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(19),
	datad => VCC,
	cin => \km|Add1~79\,
	combout => \km|Add1~81_combout\,
	cout => \km|Add1~82\);

-- Location: LCCOMB_X17_Y36_N24
\km|Add1~83\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~83_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~81_combout\,
	combout => \km|Add1~83_combout\);

-- Location: FF_X17_Y36_N25
\km|count_num[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~83_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(19));

-- Location: LCCOMB_X16_Y35_N8
\km|Add1~84\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~84_combout\ = (\km|count_num\(20) & (\km|Add1~82\ $ (GND))) # (!\km|count_num\(20) & (!\km|Add1~82\ & VCC))
-- \km|Add1~85\ = CARRY((\km|count_num\(20) & !\km|Add1~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(20),
	datad => VCC,
	cin => \km|Add1~82\,
	combout => \km|Add1~84_combout\,
	cout => \km|Add1~85\);

-- Location: LCCOMB_X14_Y36_N6
\km|Add1~108\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~108_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~84_combout\,
	combout => \km|Add1~108_combout\);

-- Location: FF_X14_Y36_N7
\km|count_num[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~108_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(20));

-- Location: LCCOMB_X15_Y36_N12
\km|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~2_combout\ = (!\km|count_num\(18) & (!\km|count_num\(20) & (!\km|count_num\(19) & !\km|count_num\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(18),
	datab => \km|count_num\(20),
	datac => \km|count_num\(19),
	datad => \km|count_num\(17),
	combout => \km|Equal2~2_combout\);

-- Location: LCCOMB_X16_Y35_N10
\km|Add1~86\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~86_combout\ = (\km|count_num\(21) & (!\km|Add1~85\)) # (!\km|count_num\(21) & ((\km|Add1~85\) # (GND)))
-- \km|Add1~87\ = CARRY((!\km|Add1~85\) # (!\km|count_num\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(21),
	datad => VCC,
	cin => \km|Add1~85\,
	combout => \km|Add1~86_combout\,
	cout => \km|Add1~87\);

-- Location: LCCOMB_X14_Y36_N24
\km|Add1~109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~109_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~86_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~86_combout\,
	combout => \km|Add1~109_combout\);

-- Location: FF_X14_Y36_N25
\km|count_num[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~109_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(21));

-- Location: LCCOMB_X16_Y35_N12
\km|Add1~88\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~88_combout\ = (\km|count_num\(22) & (\km|Add1~87\ $ (GND))) # (!\km|count_num\(22) & (!\km|Add1~87\ & VCC))
-- \km|Add1~89\ = CARRY((\km|count_num\(22) & !\km|Add1~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(22),
	datad => VCC,
	cin => \km|Add1~87\,
	combout => \km|Add1~88_combout\,
	cout => \km|Add1~89\);

-- Location: LCCOMB_X14_Y36_N14
\km|Add1~110\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~110_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~88_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~88_combout\,
	combout => \km|Add1~110_combout\);

-- Location: FF_X14_Y36_N15
\km|count_num[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~110_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(22));

-- Location: LCCOMB_X16_Y35_N14
\km|Add1~90\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~90_combout\ = (\km|count_num\(23) & (!\km|Add1~89\)) # (!\km|count_num\(23) & ((\km|Add1~89\) # (GND)))
-- \km|Add1~91\ = CARRY((!\km|Add1~89\) # (!\km|count_num\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(23),
	datad => VCC,
	cin => \km|Add1~89\,
	combout => \km|Add1~90_combout\,
	cout => \km|Add1~91\);

-- Location: LCCOMB_X14_Y36_N16
\km|Add1~111\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~111_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~90_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~90_combout\,
	combout => \km|Add1~111_combout\);

-- Location: FF_X14_Y36_N17
\km|count_num[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~111_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(23));

-- Location: LCCOMB_X16_Y35_N16
\km|Add1~92\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~92_combout\ = (\km|count_num\(24) & (\km|Add1~91\ $ (GND))) # (!\km|count_num\(24) & (!\km|Add1~91\ & VCC))
-- \km|Add1~93\ = CARRY((\km|count_num\(24) & !\km|Add1~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(24),
	datad => VCC,
	cin => \km|Add1~91\,
	combout => \km|Add1~92_combout\,
	cout => \km|Add1~93\);

-- Location: LCCOMB_X15_Y36_N2
\km|Add1~112\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~112_combout\ = (!\km|num~11_combout\ & (\km|Equal1~0_combout\ & \km|Add1~92_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~11_combout\,
	datab => \km|Equal1~0_combout\,
	datad => \km|Add1~92_combout\,
	combout => \km|Add1~112_combout\);

-- Location: FF_X15_Y36_N3
\km|count_num[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~112_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(24));

-- Location: LCCOMB_X15_Y36_N28
\km|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~3_combout\ = (!\km|count_num\(23) & (!\km|count_num\(24) & (!\km|count_num\(21) & !\km|count_num\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(23),
	datab => \km|count_num\(24),
	datac => \km|count_num\(21),
	datad => \km|count_num\(22),
	combout => \km|Equal2~3_combout\);

-- Location: LCCOMB_X16_Y35_N18
\km|Add1~94\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~94_combout\ = (\km|count_num\(25) & (!\km|Add1~93\)) # (!\km|count_num\(25) & ((\km|Add1~93\) # (GND)))
-- \km|Add1~95\ = CARRY((!\km|Add1~93\) # (!\km|count_num\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(25),
	datad => VCC,
	cin => \km|Add1~93\,
	combout => \km|Add1~94_combout\,
	cout => \km|Add1~95\);

-- Location: LCCOMB_X15_Y36_N26
\km|Add1~113\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~113_combout\ = (!\km|num~11_combout\ & (\km|Equal1~0_combout\ & \km|Add1~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~11_combout\,
	datab => \km|Equal1~0_combout\,
	datad => \km|Add1~94_combout\,
	combout => \km|Add1~113_combout\);

-- Location: FF_X15_Y36_N27
\km|count_num[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~113_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(25));

-- Location: LCCOMB_X16_Y35_N20
\km|Add1~96\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~96_combout\ = (\km|count_num\(26) & (\km|Add1~95\ $ (GND))) # (!\km|count_num\(26) & (!\km|Add1~95\ & VCC))
-- \km|Add1~97\ = CARRY((\km|count_num\(26) & !\km|Add1~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(26),
	datad => VCC,
	cin => \km|Add1~95\,
	combout => \km|Add1~96_combout\,
	cout => \km|Add1~97\);

-- Location: LCCOMB_X17_Y36_N18
\km|Add1~114\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~114_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~96_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~96_combout\,
	combout => \km|Add1~114_combout\);

-- Location: FF_X17_Y36_N19
\km|count_num[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~114_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(26));

-- Location: LCCOMB_X16_Y35_N22
\km|Add1~98\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~98_combout\ = (\km|count_num\(27) & (!\km|Add1~97\)) # (!\km|count_num\(27) & ((\km|Add1~97\) # (GND)))
-- \km|Add1~99\ = CARRY((!\km|Add1~97\) # (!\km|count_num\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(27),
	datad => VCC,
	cin => \km|Add1~97\,
	combout => \km|Add1~98_combout\,
	cout => \km|Add1~99\);

-- Location: LCCOMB_X15_Y36_N0
\km|Add1~115\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~115_combout\ = (!\km|num~11_combout\ & (\km|Add1~98_combout\ & \km|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~11_combout\,
	datac => \km|Add1~98_combout\,
	datad => \km|Equal1~0_combout\,
	combout => \km|Add1~115_combout\);

-- Location: FF_X15_Y36_N1
\km|count_num[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~115_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(27));

-- Location: LCCOMB_X16_Y35_N24
\km|Add1~100\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~100_combout\ = (\km|count_num\(28) & (\km|Add1~99\ $ (GND))) # (!\km|count_num\(28) & (!\km|Add1~99\ & VCC))
-- \km|Add1~101\ = CARRY((\km|count_num\(28) & !\km|Add1~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(28),
	datad => VCC,
	cin => \km|Add1~99\,
	combout => \km|Add1~100_combout\,
	cout => \km|Add1~101\);

-- Location: LCCOMB_X14_Y36_N26
\km|Add1~116\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~116_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~100_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~100_combout\,
	combout => \km|Add1~116_combout\);

-- Location: FF_X14_Y36_N27
\km|count_num[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~116_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(28));

-- Location: LCCOMB_X16_Y35_N26
\km|Add1~102\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~102_combout\ = (\km|count_num\(29) & (!\km|Add1~101\)) # (!\km|count_num\(29) & ((\km|Add1~101\) # (GND)))
-- \km|Add1~103\ = CARRY((!\km|Add1~101\) # (!\km|count_num\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(29),
	datad => VCC,
	cin => \km|Add1~101\,
	combout => \km|Add1~102_combout\,
	cout => \km|Add1~103\);

-- Location: LCCOMB_X15_Y36_N20
\km|Add1~117\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~117_combout\ = (!\km|num~11_combout\ & (\km|Add1~102_combout\ & \km|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~11_combout\,
	datac => \km|Add1~102_combout\,
	datad => \km|Equal1~0_combout\,
	combout => \km|Add1~117_combout\);

-- Location: FF_X15_Y36_N21
\km|count_num[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~117_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(29));

-- Location: LCCOMB_X16_Y35_N28
\km|Add1~104\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~104_combout\ = (\km|count_num\(30) & (\km|Add1~103\ $ (GND))) # (!\km|count_num\(30) & (!\km|Add1~103\ & VCC))
-- \km|Add1~105\ = CARRY((\km|count_num\(30) & !\km|Add1~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(30),
	datad => VCC,
	cin => \km|Add1~103\,
	combout => \km|Add1~104_combout\,
	cout => \km|Add1~105\);

-- Location: LCCOMB_X15_Y36_N22
\km|Add1~118\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~118_combout\ = (!\km|num~11_combout\ & (\km|Equal1~0_combout\ & \km|Add1~104_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|num~11_combout\,
	datab => \km|Equal1~0_combout\,
	datad => \km|Add1~104_combout\,
	combout => \km|Add1~118_combout\);

-- Location: FF_X15_Y36_N23
\km|count_num[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~118_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(30));

-- Location: LCCOMB_X16_Y35_N30
\km|Add1~106\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~106_combout\ = \km|Add1~105\ $ (\km|count_num\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \km|count_num\(31),
	cin => \km|Add1~105\,
	combout => \km|Add1~106_combout\);

-- Location: LCCOMB_X17_Y36_N16
\km|Add1~119\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Add1~119_combout\ = (\km|Equal1~0_combout\ & (!\km|num~11_combout\ & \km|Add1~106_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|Equal1~0_combout\,
	datac => \km|num~11_combout\,
	datad => \km|Add1~106_combout\,
	combout => \km|Add1~119_combout\);

-- Location: FF_X17_Y36_N17
\km|count_num[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|Add1~119_combout\,
	ena => \km|count_num[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|count_num\(31));

-- Location: LCCOMB_X15_Y36_N4
\km|Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~5_combout\ = (!\km|count_num\(29) & (!\km|count_num\(30) & !\km|count_num\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(29),
	datac => \km|count_num\(30),
	datad => \km|count_num\(31),
	combout => \km|Equal2~5_combout\);

-- Location: LCCOMB_X15_Y36_N18
\km|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~4_combout\ = (!\km|count_num\(25) & (!\km|count_num\(27) & (!\km|count_num\(28) & !\km|count_num\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(25),
	datab => \km|count_num\(27),
	datac => \km|count_num\(28),
	datad => \km|count_num\(26),
	combout => \km|Equal2~4_combout\);

-- Location: LCCOMB_X15_Y36_N14
\km|Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|Equal2~6_combout\ = (\km|Equal2~2_combout\ & (\km|Equal2~3_combout\ & (\km|Equal2~5_combout\ & \km|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal2~2_combout\,
	datab => \km|Equal2~3_combout\,
	datac => \km|Equal2~5_combout\,
	datad => \km|Equal2~4_combout\,
	combout => \km|Equal2~6_combout\);

-- Location: LCCOMB_X14_Y36_N18
\km|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|LessThan0~0_combout\ = (\km|count_num\(6)) # ((\km|count_num\(5) & ((\km|count_num\(4)) # (!\km|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|count_num\(6),
	datab => \km|count_num\(4),
	datac => \km|Equal2~0_combout\,
	datad => \km|count_num\(5),
	combout => \km|LessThan0~0_combout\);

-- Location: LCCOMB_X14_Y36_N0
\km|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|LessThan0~1_combout\ = (\km|count_num\(8)) # ((\km|count_num\(7) & \km|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \km|count_num\(7),
	datac => \km|count_num\(8),
	datad => \km|LessThan0~0_combout\,
	combout => \km|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y36_N2
\km|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|LessThan0~2_combout\ = ((\km|count_num\(9) & (\km|count_num\(10) & \km|LessThan0~1_combout\))) # (!\km|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal2~1_combout\,
	datab => \km|count_num\(9),
	datac => \km|count_num\(10),
	datad => \km|LessThan0~1_combout\,
	combout => \km|LessThan0~2_combout\);

-- Location: LCCOMB_X17_Y36_N14
\km|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|LessThan0~3_combout\ = ((\km|count_num\(16) & (\km|count_num\(15) & \km|LessThan0~2_combout\))) # (!\km|Equal2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal2~6_combout\,
	datab => \km|count_num\(16),
	datac => \km|count_num\(15),
	datad => \km|LessThan0~2_combout\,
	combout => \km|LessThan0~3_combout\);

-- Location: LCCOMB_X18_Y36_N28
\km|out[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|out[0]~0_combout\ = (\km|LessThan0~3_combout\ & ((\km|num~11_combout\) # (!\km|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \km|Equal1~0_combout\,
	datab => \km|num~11_combout\,
	datad => \km|LessThan0~3_combout\,
	combout => \km|out[0]~0_combout\);

-- Location: FF_X18_Y36_N31
\km|out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|num~17_combout\,
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(1));

-- Location: FF_X10_Y36_N27
\km|out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(1),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(5));

-- Location: LCCOMB_X11_Y36_N8
\km|out[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|out[9]~feeder_combout\ = \km|out\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \km|out\(5),
	combout => \km|out[9]~feeder_combout\);

-- Location: FF_X11_Y36_N9
\km|out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|out[9]~feeder_combout\,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(9));

-- Location: FF_X10_Y36_N31
\mw|X[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|X\(1));

-- Location: IOIBUF_X0_Y12_N22
\S[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(2),
	o => \S[2]~input_o\);

-- Location: FF_X18_Y36_N9
\km|out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|num~8_combout\,
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(0));

-- Location: FF_X18_Y36_N1
\km|out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(0),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(4));

-- Location: FF_X18_Y36_N11
\km|out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(4),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(8));

-- Location: FF_X10_Y36_N3
\mw|X[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|X\(0));

-- Location: LCCOMB_X9_Y38_N26
\Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\S[2]~input_o\ & (\mw|X\(1))) # (!\S[2]~input_o\ & ((\mw|X\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(1),
	datac => \S[2]~input_o\,
	datad => \mw|X\(0),
	combout => \Mux7~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\S[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: FF_X10_Y36_N7
\mw|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|Y\(0));

-- Location: IOIBUF_X0_Y3_N1
\cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cin,
	o => \cin~input_o\);

-- Location: LCCOMB_X10_Y36_N8
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_cout\ = CARRY(\cin~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cin~input_o\,
	datad => VCC,
	cout => \Add0~1_cout\);

-- Location: LCCOMB_X10_Y36_N10
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\mw|Y\(0) & ((\mw|X\(0) & (\Add0~1_cout\ & VCC)) # (!\mw|X\(0) & (!\Add0~1_cout\)))) # (!\mw|Y\(0) & ((\mw|X\(0) & (!\Add0~1_cout\)) # (!\mw|X\(0) & ((\Add0~1_cout\) # (GND)))))
-- \Add0~3\ = CARRY((\mw|Y\(0) & (!\mw|X\(0) & !\Add0~1_cout\)) # (!\mw|Y\(0) & ((!\Add0~1_cout\) # (!\mw|X\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(0),
	datab => \mw|X\(0),
	datad => VCC,
	cin => \Add0~1_cout\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X9_Y38_N16
\Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (!\S[0]~input_o\ & ((\S[2]~input_o\ & (\Add0~2_combout\)) # (!\S[2]~input_o\ & ((\mw|Y\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \Add0~2_combout\,
	datac => \S[2]~input_o\,
	datad => \mw|Y\(0),
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X9_Y38_N22
\Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\S[0]~input_o\ & (((!\S[2]~input_o\ & \mw|Y\(0))))) # (!\S[0]~input_o\ & (\Add0~2_combout\ & (\S[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \Add0~2_combout\,
	datac => \S[2]~input_o\,
	datad => \mw|Y\(0),
	combout => \Mux7~2_combout\);

-- Location: IOIBUF_X34_Y0_N1
\S[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: LCCOMB_X9_Y38_N12
\Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\Mux7~2_combout\ & ((\Mux7~0_combout\ & ((\Mux7~1_combout\) # (!\S[1]~input_o\))) # (!\Mux7~0_combout\ & (\Mux7~1_combout\ $ (\S[1]~input_o\))))) # (!\Mux7~2_combout\ & (\S[1]~input_o\ & ((\Mux7~0_combout\) # (\Mux7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux7~1_combout\,
	datac => \Mux7~2_combout\,
	datad => \S[1]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: FF_X9_Y38_N13
\ans[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux7~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[0]~reg0_q\);

-- Location: FF_X10_Y36_N5
\mw|Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|Y\(1));

-- Location: LCCOMB_X10_Y38_N28
\ans~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~6_combout\ = (\mw|X\(1)) # (\mw|Y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(1),
	datad => \mw|Y\(1),
	combout => \ans~6_combout\);

-- Location: LCCOMB_X10_Y38_N22
\ans~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~7_combout\ = \mw|X\(1) $ (\mw|Y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(1),
	datad => \mw|Y\(1),
	combout => \ans~7_combout\);

-- Location: LCCOMB_X9_Y38_N4
\ans[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[1]~0_combout\ = (\S[0]~input_o\ & ((\ans~7_combout\))) # (!\S[0]~input_o\ & (\ans~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ans~6_combout\,
	datad => \ans~7_combout\,
	combout => \ans[1]~0_combout\);

-- Location: LCCOMB_X9_Y36_N14
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\S[2]~input_o\ & !\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X9_Y38_N28
\ans[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[1]~8_combout\ = (\S[2]~input_o\ & ((\S[0]~input_o\) # (\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \ans[1]~8_combout\);

-- Location: LCCOMB_X10_Y36_N12
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\mw|X\(1) $ (\mw|Y\(1) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\mw|X\(1) & ((\mw|Y\(1)) # (!\Add0~3\))) # (!\mw|X\(1) & (\mw|Y\(1) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(1),
	datab => \mw|Y\(1),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X10_Y36_N6
\ans~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~9_combout\ = (\mw|X\(1) & \mw|Y\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(1),
	datab => \mw|Y\(1),
	combout => \ans~9_combout\);

-- Location: LCCOMB_X9_Y36_N20
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\Mux0~0_combout\ & (!\ans[1]~8_combout\ & (\Add0~4_combout\))) # (!\Mux0~0_combout\ & ((\ans[1]~8_combout\) # ((\ans~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ans[1]~8_combout\,
	datac => \Add0~4_combout\,
	datad => \ans~9_combout\,
	combout => \Mux6~0_combout\);

-- Location: FF_X18_Y36_N29
\km|out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|num~14_combout\,
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(2));

-- Location: LCCOMB_X11_Y36_N12
\km|out[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|out[6]~feeder_combout\ = \km|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \km|out\(2),
	combout => \km|out[6]~feeder_combout\);

-- Location: FF_X11_Y36_N13
\km|out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|out[6]~feeder_combout\,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(6));

-- Location: FF_X10_Y36_N21
\km|out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(6),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(10));

-- Location: FF_X9_Y36_N31
\mw|X[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|X\(2));

-- Location: LCCOMB_X9_Y36_N30
\Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\Mux6~0_combout\ & (((\mw|X\(2)) # (!\ans[1]~8_combout\)))) # (!\Mux6~0_combout\ & (\mw|X\(0) & ((\ans[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(0),
	datab => \Mux6~0_combout\,
	datac => \mw|X\(2),
	datad => \ans[1]~8_combout\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X9_Y38_N30
\ans[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[1]~10_combout\ = (!\S[0]~input_o\ & (!\S[2]~input_o\ & !\S[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \ans[1]~10_combout\);

-- Location: LCCOMB_X9_Y38_N20
\ans[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[1]~11_combout\ = (\S[2]~input_o\) # (!\S[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \ans[1]~11_combout\);

-- Location: FF_X9_Y38_N5
\ans[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ans[1]~0_combout\,
	asdata => \Mux6~1_combout\,
	sclr => \ans[1]~10_combout\,
	sload => \ans[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[1]~reg0_q\);

-- Location: LCCOMB_X11_Y36_N4
\mw|Y[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mw|Y[2]~feeder_combout\ = \km|out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \km|out\(2),
	combout => \mw|Y[2]~feeder_combout\);

-- Location: FF_X11_Y36_N5
\mw|Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mw|Y[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|Y\(2));

-- Location: LCCOMB_X10_Y38_N8
\ans~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~12_combout\ = (\mw|X\(2)) # (\mw|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(2),
	datac => \mw|Y\(2),
	combout => \ans~12_combout\);

-- Location: LCCOMB_X10_Y38_N26
\ans~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~13_combout\ = \mw|X\(2) $ (\mw|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(2),
	datac => \mw|Y\(2),
	combout => \ans~13_combout\);

-- Location: LCCOMB_X9_Y38_N18
\ans[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[2]~1_combout\ = (\S[0]~input_o\ & ((\ans~13_combout\))) # (!\S[0]~input_o\ & (\ans~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ans~12_combout\,
	datad => \ans~13_combout\,
	combout => \ans[2]~1_combout\);

-- Location: LCCOMB_X10_Y36_N0
\ans~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~14_combout\ = (\mw|X\(2) & \mw|Y\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mw|X\(2),
	datad => \mw|Y\(2),
	combout => \ans~14_combout\);

-- Location: LCCOMB_X18_Y36_N18
\km|out[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|out[3]~feeder_combout\ = \km|num~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \km|num~20_combout\,
	combout => \km|out[3]~feeder_combout\);

-- Location: FF_X18_Y36_N19
\km|out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|out[3]~feeder_combout\,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(3));

-- Location: LCCOMB_X11_Y36_N30
\km|out[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \km|out[7]~feeder_combout\ = \km|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \km|out\(3),
	combout => \km|out[7]~feeder_combout\);

-- Location: FF_X11_Y36_N31
\km|out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \km|out[7]~feeder_combout\,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(7));

-- Location: FF_X11_Y36_N11
\km|out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(7),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(11));

-- Location: FF_X10_Y36_N1
\mw|X[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|X\(3));

-- Location: LCCOMB_X10_Y36_N14
\Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\mw|Y\(2) & ((\mw|X\(2) & (\Add0~5\ & VCC)) # (!\mw|X\(2) & (!\Add0~5\)))) # (!\mw|Y\(2) & ((\mw|X\(2) & (!\Add0~5\)) # (!\mw|X\(2) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\mw|Y\(2) & (!\mw|X\(2) & !\Add0~5\)) # (!\mw|Y\(2) & ((!\Add0~5\) # (!\mw|X\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(2),
	datab => \mw|X\(2),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X9_Y36_N6
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux0~0_combout\ & ((\ans[1]~8_combout\ & (\mw|X\(1))) # (!\ans[1]~8_combout\ & ((\Add0~6_combout\))))) # (!\Mux0~0_combout\ & (((\ans[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \mw|X\(1),
	datac => \Add0~6_combout\,
	datad => \ans[1]~8_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X9_Y36_N16
\Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux0~0_combout\ & (((\Mux5~0_combout\)))) # (!\Mux0~0_combout\ & ((\Mux5~0_combout\ & ((\mw|X\(3)))) # (!\Mux5~0_combout\ & (\ans~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ans~14_combout\,
	datac => \mw|X\(3),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: FF_X9_Y38_N19
\ans[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ans[2]~1_combout\,
	asdata => \Mux5~1_combout\,
	sclr => \ans[1]~10_combout\,
	sload => \ans[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[2]~reg0_q\);

-- Location: LCCOMB_X11_Y36_N2
\mw|Y[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \mw|Y[3]~feeder_combout\ = \km|out\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \km|out\(3),
	combout => \mw|Y[3]~feeder_combout\);

-- Location: FF_X11_Y36_N3
\mw|Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \mw|Y[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|Y\(3));

-- Location: LCCOMB_X10_Y38_N14
\ans~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~16_combout\ = \mw|X\(3) $ (\mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mw|X\(3),
	datad => \mw|Y\(3),
	combout => \ans~16_combout\);

-- Location: LCCOMB_X10_Y38_N4
\ans~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~15_combout\ = (\mw|X\(3)) # (\mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mw|X\(3),
	datad => \mw|Y\(3),
	combout => \ans~15_combout\);

-- Location: LCCOMB_X9_Y38_N0
\ans[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[3]~2_combout\ = (\S[0]~input_o\ & (\ans~16_combout\)) # (!\S[0]~input_o\ & ((\ans~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ans~16_combout\,
	datad => \ans~15_combout\,
	combout => \ans[3]~2_combout\);

-- Location: FF_X10_Y36_N17
\km|out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(8),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(12));

-- Location: FF_X10_Y36_N9
\mw|X[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|X\(4));

-- Location: LCCOMB_X10_Y36_N30
\ans~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~17_combout\ = (\mw|X\(3) & \mw|Y\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mw|X\(3),
	datad => \mw|Y\(3),
	combout => \ans~17_combout\);

-- Location: LCCOMB_X10_Y36_N16
\Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\mw|Y\(3) $ (\mw|X\(3) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\mw|Y\(3) & ((\mw|X\(3)) # (!\Add0~7\))) # (!\mw|Y\(3) & (\mw|X\(3) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(3),
	datab => \mw|X\(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X9_Y36_N22
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux0~0_combout\ & (!\ans[1]~8_combout\ & ((\Add0~8_combout\)))) # (!\Mux0~0_combout\ & ((\ans[1]~8_combout\) # ((\ans~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ans[1]~8_combout\,
	datac => \ans~17_combout\,
	datad => \Add0~8_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X9_Y36_N0
\Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\mw|X\(4)) # (!\ans[1]~8_combout\)))) # (!\Mux4~0_combout\ & (\mw|X\(2) & ((\ans[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(2),
	datab => \mw|X\(4),
	datac => \Mux4~0_combout\,
	datad => \ans[1]~8_combout\,
	combout => \Mux4~1_combout\);

-- Location: FF_X9_Y38_N1
\ans[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ans[3]~2_combout\,
	asdata => \Mux4~1_combout\,
	sclr => \ans[1]~10_combout\,
	sload => \ans[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[3]~reg0_q\);

-- Location: FF_X10_Y36_N29
\mw|Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|Y\(4));

-- Location: LCCOMB_X11_Y38_N22
\ans~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~19_combout\ = \mw|X\(4) $ (\mw|Y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(4),
	datad => \mw|Y\(4),
	combout => \ans~19_combout\);

-- Location: LCCOMB_X10_Y36_N2
\ans~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~18_combout\ = (\mw|X\(4)) # (\mw|Y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mw|X\(4),
	datad => \mw|Y\(4),
	combout => \ans~18_combout\);

-- Location: LCCOMB_X9_Y38_N2
\ans[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[4]~3_combout\ = (\S[0]~input_o\ & (\ans~19_combout\)) # (!\S[0]~input_o\ & ((\ans~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ans~19_combout\,
	datad => \ans~18_combout\,
	combout => \ans[4]~3_combout\);

-- Location: LCCOMB_X10_Y36_N4
\ans~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~20_combout\ = (\mw|X\(4) & \mw|Y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mw|X\(4),
	datad => \mw|Y\(4),
	combout => \ans~20_combout\);

-- Location: FF_X10_Y36_N13
\km|out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(9),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(13));

-- Location: FF_X9_Y36_N13
\mw|X[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|X\(5));

-- Location: LCCOMB_X10_Y36_N18
\Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\mw|Y\(4) & ((\mw|X\(4) & (\Add0~9\ & VCC)) # (!\mw|X\(4) & (!\Add0~9\)))) # (!\mw|Y\(4) & ((\mw|X\(4) & (!\Add0~9\)) # (!\mw|X\(4) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\mw|Y\(4) & (!\mw|X\(4) & !\Add0~9\)) # (!\mw|Y\(4) & ((!\Add0~9\) # (!\mw|X\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(4),
	datab => \mw|X\(4),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X9_Y36_N10
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux0~0_combout\ & ((\ans[1]~8_combout\ & (\mw|X\(3))) # (!\ans[1]~8_combout\ & ((\Add0~10_combout\))))) # (!\Mux0~0_combout\ & (\ans[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ans[1]~8_combout\,
	datac => \mw|X\(3),
	datad => \Add0~10_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X9_Y36_N12
\Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux0~0_combout\ & (((\Mux3~0_combout\)))) # (!\Mux0~0_combout\ & ((\Mux3~0_combout\ & ((\mw|X\(5)))) # (!\Mux3~0_combout\ & (\ans~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ans~20_combout\,
	datab => \Mux0~0_combout\,
	datac => \mw|X\(5),
	datad => \Mux3~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: FF_X9_Y38_N3
\ans[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ans[4]~3_combout\,
	asdata => \Mux3~1_combout\,
	sclr => \ans[1]~10_combout\,
	sload => \ans[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[4]~reg0_q\);

-- Location: FF_X10_Y36_N23
\mw|Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|Y\(5));

-- Location: LCCOMB_X10_Y38_N18
\ans~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~22_combout\ = \mw|Y\(5) $ (\mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mw|Y\(5),
	datad => \mw|X\(5),
	combout => \ans~22_combout\);

-- Location: LCCOMB_X10_Y38_N12
\ans~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~21_combout\ = (\mw|Y\(5)) # (\mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mw|Y\(5),
	datad => \mw|X\(5),
	combout => \ans~21_combout\);

-- Location: LCCOMB_X9_Y38_N8
\ans[5]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[5]~4_combout\ = (\S[0]~input_o\ & (\ans~22_combout\)) # (!\S[0]~input_o\ & ((\ans~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ans~22_combout\,
	datad => \ans~21_combout\,
	combout => \ans[5]~4_combout\);

-- Location: FF_X10_Y36_N19
\km|out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(10),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(14));

-- Location: FF_X10_Y36_N25
\mw|X[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|X\(6));

-- Location: LCCOMB_X10_Y38_N16
\ans~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~23_combout\ = (\mw|Y\(5) & \mw|X\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mw|Y\(5),
	datad => \mw|X\(5),
	combout => \ans~23_combout\);

-- Location: LCCOMB_X10_Y36_N20
\Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\mw|Y\(5) $ (\mw|X\(5) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\mw|Y\(5) & ((\mw|X\(5)) # (!\Add0~11\))) # (!\mw|Y\(5) & (\mw|X\(5) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(5),
	datab => \mw|X\(5),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X9_Y36_N28
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux0~0_combout\ & (((\Add0~12_combout\ & !\ans[1]~8_combout\)))) # (!\Mux0~0_combout\ & ((\ans~23_combout\) # ((\ans[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ans~23_combout\,
	datac => \Add0~12_combout\,
	datad => \ans[1]~8_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X9_Y36_N2
\Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\ans[1]~8_combout\ & ((\Mux2~0_combout\ & (\mw|X\(6))) # (!\Mux2~0_combout\ & ((\mw|X\(4)))))) # (!\ans[1]~8_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(6),
	datab => \ans[1]~8_combout\,
	datac => \mw|X\(4),
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: FF_X9_Y38_N9
\ans[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ans[5]~4_combout\,
	asdata => \Mux2~1_combout\,
	sclr => \ans[1]~10_combout\,
	sload => \ans[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[5]~reg0_q\);

-- Location: FF_X10_Y36_N11
\mw|Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|Y\(6));

-- Location: LCCOMB_X8_Y38_N24
\ans~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~24_combout\ = (\mw|Y\(6)) # (\mw|X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(6),
	datad => \mw|X\(6),
	combout => \ans~24_combout\);

-- Location: LCCOMB_X10_Y38_N2
\ans~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~25_combout\ = \mw|X\(6) $ (\mw|Y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(6),
	datad => \mw|Y\(6),
	combout => \ans~25_combout\);

-- Location: LCCOMB_X9_Y38_N6
\ans[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans[6]~5_combout\ = (\S[0]~input_o\ & ((\ans~25_combout\))) # (!\S[0]~input_o\ & (\ans~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \ans~24_combout\,
	datad => \ans~25_combout\,
	combout => \ans[6]~5_combout\);

-- Location: FF_X10_Y36_N15
\km|out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(11),
	sload => VCC,
	ena => \km|out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \km|out\(15));

-- Location: FF_X9_Y36_N15
\mw|X[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|X\(7));

-- Location: LCCOMB_X10_Y36_N28
\ans~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~26_combout\ = (\mw|Y\(6) & \mw|X\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(6),
	datad => \mw|X\(6),
	combout => \ans~26_combout\);

-- Location: LCCOMB_X10_Y36_N22
\Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\mw|Y\(6) & ((\mw|X\(6) & (\Add0~13\ & VCC)) # (!\mw|X\(6) & (!\Add0~13\)))) # (!\mw|Y\(6) & ((\mw|X\(6) & (!\Add0~13\)) # (!\mw|X\(6) & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\mw|Y\(6) & (!\mw|X\(6) & !\Add0~13\)) # (!\mw|Y\(6) & ((!\Add0~13\) # (!\mw|X\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(6),
	datab => \mw|X\(6),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X9_Y36_N8
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux0~0_combout\ & ((\ans[1]~8_combout\ & (\mw|X\(5))) # (!\ans[1]~8_combout\ & ((\Add0~14_combout\))))) # (!\Mux0~0_combout\ & (\ans[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~0_combout\,
	datab => \ans[1]~8_combout\,
	datac => \mw|X\(5),
	datad => \Add0~14_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X9_Y36_N18
\Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\mw|X\(7)) # ((\Mux0~0_combout\)))) # (!\Mux1~0_combout\ & (((\ans~26_combout\ & !\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(7),
	datab => \ans~26_combout\,
	datac => \Mux1~0_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: FF_X9_Y38_N7
\ans[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ans[6]~5_combout\,
	asdata => \Mux1~1_combout\,
	sclr => \ans[1]~10_combout\,
	sload => \ans[1]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[6]~reg0_q\);

-- Location: FF_X9_Y36_N25
\mw|Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \km|out\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mw|Y\(7));

-- Location: LCCOMB_X9_Y36_N4
\Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!\S[2]~input_o\ & (\S[1]~input_o\ & ((\mw|Y\(7)) # (\mw|X\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(7),
	datab => \mw|X\(7),
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X9_Y36_N24
\Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\S[1]~input_o\ & (\mw|X\(7) $ (((!\S[2]~input_o\ & \mw|Y\(7)))))) # (!\S[1]~input_o\ & ((\S[2]~input_o\) # ((\mw|X\(7) & \mw|Y\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datab => \mw|X\(7),
	datac => \mw|Y\(7),
	datad => \S[1]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X9_Y36_N26
\Mux0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~4_combout\ & ((\mw|X\(6)) # ((\S[1]~input_o\) # (!\S[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(6),
	datab => \Mux0~4_combout\,
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X10_Y36_N24
\Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = ((\mw|X\(7) $ (\mw|Y\(7) $ (!\Add0~15\)))) # (GND)
-- \Add0~17\ = CARRY((\mw|X\(7) & ((\mw|Y\(7)) # (!\Add0~15\))) # (!\mw|X\(7) & (\mw|Y\(7) & !\Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(7),
	datab => \mw|Y\(7),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X9_Y38_N10
\Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\S[2]~input_o\ & (\Add0~16_combout\ & !\S[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[2]~input_o\,
	datac => \Add0~16_combout\,
	datad => \S[1]~input_o\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X9_Y38_N14
\Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\S[0]~input_o\ & (((\Mux0~5_combout\)))) # (!\S[0]~input_o\ & ((\Mux0~2_combout\) # ((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \Mux0~5_combout\,
	datac => \S[0]~input_o\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~3_combout\);

-- Location: FF_X9_Y38_N15
\ans[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[7]~reg0_q\);

-- Location: LCCOMB_X10_Y36_N26
\Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~17\,
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X9_Y38_N24
\ans~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ans~27_combout\ = (!\S[0]~input_o\ & (\Add0~18_combout\ & (\S[2]~input_o\ & !\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \Add0~18_combout\,
	datac => \S[2]~input_o\,
	datad => \S[1]~input_o\,
	combout => \ans~27_combout\);

-- Location: FF_X9_Y38_N25
\ans[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \ans~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ans[8]~reg0_q\);

-- Location: LCCOMB_X12_Y38_N30
\sd|sel[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|sel[2]~1_combout\ = \sd|sel\(2) $ (((\sd|sel\(0) & \sd|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd|sel\(0),
	datac => \sd|sel\(2),
	datad => \sd|sel\(1),
	combout => \sd|sel[2]~1_combout\);

-- Location: FF_X12_Y38_N31
\sd|sel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sd|sel[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd|sel\(2));

-- Location: LCCOMB_X11_Y38_N16
\sd|num[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|num[3]~0_combout\ = (\sd|sel\(2) & \sd|sel\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sd|sel\(2),
	datad => \sd|sel\(1),
	combout => \sd|num[3]~0_combout\);

-- Location: LCCOMB_X11_Y38_N12
\sd|num[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|num[3]~2_combout\ = (\sd|sel\(2) & ((\sd|sel\(0)) # (!\sd|sel\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|sel\(0),
	datac => \sd|sel\(2),
	datad => \sd|sel\(1),
	combout => \sd|num[3]~2_combout\);

-- Location: LCCOMB_X11_Y38_N18
\sd|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux2~0_combout\ = (\mw|Y\(1) & !\sd|sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mw|Y\(1),
	datad => \sd|sel\(0),
	combout => \sd|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y38_N4
\sd|num[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|num[3]~1_combout\ = ((\sd|sel\(0) & !\sd|sel\(1))) # (!\sd|sel\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sd|sel\(0),
	datac => \sd|sel\(2),
	datad => \sd|sel\(1),
	combout => \sd|num[3]~1_combout\);

-- Location: LCCOMB_X11_Y38_N6
\sd|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux2~1_combout\ = (\sd|num[3]~2_combout\ & (((\ans[5]~reg0_q\ & \sd|num[3]~1_combout\)))) # (!\sd|num[3]~2_combout\ & ((\sd|Mux2~0_combout\) # ((!\sd|num[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num[3]~2_combout\,
	datab => \sd|Mux2~0_combout\,
	datac => \ans[5]~reg0_q\,
	datad => \sd|num[3]~1_combout\,
	combout => \sd|Mux2~1_combout\);

-- Location: LCCOMB_X10_Y38_N0
\sd|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux2~2_combout\ = (\sd|num[3]~0_combout\ & ((\sd|Mux2~1_combout\ & ((\ans[1]~reg0_q\))) # (!\sd|Mux2~1_combout\ & (\mw|X\(5))))) # (!\sd|num[3]~0_combout\ & (((\sd|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(5),
	datab => \sd|num[3]~0_combout\,
	datac => \ans[1]~reg0_q\,
	datad => \sd|Mux2~1_combout\,
	combout => \sd|Mux2~2_combout\);

-- Location: LCCOMB_X10_Y38_N30
\sd|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux2~3_combout\ = (\sd|sel\(0) & ((\mw|Y\(5)))) # (!\sd|sel\(0) & (\mw|X\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(1),
	datac => \mw|Y\(5),
	datad => \sd|sel\(0),
	combout => \sd|Mux2~3_combout\);

-- Location: LCCOMB_X11_Y38_N20
\sd|Mux2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux2~4_combout\ = (\sd|sel\(2) & (((\sd|Mux2~2_combout\)))) # (!\sd|sel\(2) & ((\sd|sel\(1) & (\sd|Mux2~2_combout\)) # (!\sd|sel\(1) & ((\sd|Mux2~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|sel\(2),
	datab => \sd|sel\(1),
	datac => \sd|Mux2~2_combout\,
	datad => \sd|Mux2~3_combout\,
	combout => \sd|Mux2~4_combout\);

-- Location: FF_X11_Y38_N21
\sd|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sd|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd|num\(1));

-- Location: LCCOMB_X10_Y38_N10
\sd|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux1~3_combout\ = (\sd|sel\(0) & ((\mw|Y\(6)))) # (!\sd|sel\(0) & (\mw|X\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(2),
	datab => \sd|sel\(0),
	datad => \mw|Y\(6),
	combout => \sd|Mux1~3_combout\);

-- Location: LCCOMB_X11_Y38_N28
\sd|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux1~0_combout\ = (\mw|Y\(2) & !\sd|sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|Y\(2),
	datad => \sd|sel\(0),
	combout => \sd|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y38_N2
\sd|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux1~1_combout\ = (\sd|num[3]~2_combout\ & (((\ans[6]~reg0_q\ & \sd|num[3]~1_combout\)))) # (!\sd|num[3]~2_combout\ & ((\sd|Mux1~0_combout\) # ((!\sd|num[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num[3]~2_combout\,
	datab => \sd|Mux1~0_combout\,
	datac => \ans[6]~reg0_q\,
	datad => \sd|num[3]~1_combout\,
	combout => \sd|Mux1~1_combout\);

-- Location: LCCOMB_X10_Y38_N20
\sd|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux1~2_combout\ = (\sd|Mux1~1_combout\ & ((\ans[2]~reg0_q\) # ((!\sd|num[3]~0_combout\)))) # (!\sd|Mux1~1_combout\ & (((\mw|X\(6) & \sd|num[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|Mux1~1_combout\,
	datab => \ans[2]~reg0_q\,
	datac => \mw|X\(6),
	datad => \sd|num[3]~0_combout\,
	combout => \sd|Mux1~2_combout\);

-- Location: LCCOMB_X11_Y38_N26
\sd|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux1~4_combout\ = (\sd|sel\(1) & (((\sd|Mux1~2_combout\)))) # (!\sd|sel\(1) & ((\sd|sel\(2) & ((\sd|Mux1~2_combout\))) # (!\sd|sel\(2) & (\sd|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|Mux1~3_combout\,
	datab => \sd|sel\(1),
	datac => \sd|sel\(2),
	datad => \sd|Mux1~2_combout\,
	combout => \sd|Mux1~4_combout\);

-- Location: FF_X11_Y38_N27
\sd|num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sd|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd|num\(2));

-- Location: LCCOMB_X10_Y38_N6
\sd|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux0~3_combout\ = (\sd|sel\(0) & ((\mw|Y\(7)))) # (!\sd|sel\(0) & (\mw|X\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mw|X\(3),
	datac => \mw|Y\(7),
	datad => \sd|sel\(0),
	combout => \sd|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y38_N0
\sd|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux0~0_combout\ = (\mw|Y\(3) & !\sd|sel\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mw|Y\(3),
	datad => \sd|sel\(0),
	combout => \sd|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y38_N10
\sd|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux0~1_combout\ = (\sd|num[3]~2_combout\ & (((\ans[7]~reg0_q\ & \sd|num[3]~1_combout\)))) # (!\sd|num[3]~2_combout\ & ((\sd|Mux0~0_combout\) # ((!\sd|num[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num[3]~2_combout\,
	datab => \sd|Mux0~0_combout\,
	datac => \ans[7]~reg0_q\,
	datad => \sd|num[3]~1_combout\,
	combout => \sd|Mux0~1_combout\);

-- Location: LCCOMB_X10_Y38_N24
\sd|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux0~2_combout\ = (\sd|Mux0~1_combout\ & ((\ans[3]~reg0_q\) # ((!\sd|num[3]~0_combout\)))) # (!\sd|Mux0~1_combout\ & (((\mw|X\(7) & \sd|num[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ans[3]~reg0_q\,
	datab => \sd|Mux0~1_combout\,
	datac => \mw|X\(7),
	datad => \sd|num[3]~0_combout\,
	combout => \sd|Mux0~2_combout\);

-- Location: LCCOMB_X11_Y38_N4
\sd|Mux0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux0~4_combout\ = (\sd|sel\(2) & (((\sd|Mux0~2_combout\)))) # (!\sd|sel\(2) & ((\sd|sel\(1) & ((\sd|Mux0~2_combout\))) # (!\sd|sel\(1) & (\sd|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|sel\(2),
	datab => \sd|sel\(1),
	datac => \sd|Mux0~3_combout\,
	datad => \sd|Mux0~2_combout\,
	combout => \sd|Mux0~4_combout\);

-- Location: FF_X11_Y38_N5
\sd|num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sd|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd|num\(3));

-- Location: LCCOMB_X11_Y38_N14
\sd|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux3~3_combout\ = (!\sd|sel\(1) & ((\sd|sel\(0) & ((\mw|Y\(4)))) # (!\sd|sel\(0) & (\mw|X\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|sel\(0),
	datab => \sd|sel\(1),
	datac => \mw|X\(0),
	datad => \mw|Y\(4),
	combout => \sd|Mux3~3_combout\);

-- Location: LCCOMB_X11_Y38_N24
\sd|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux3~2_combout\ = (!\sd|sel\(0) & (\sd|sel\(1) & \mw|Y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|sel\(0),
	datab => \sd|sel\(1),
	datad => \mw|Y\(0),
	combout => \sd|Mux3~2_combout\);

-- Location: LCCOMB_X11_Y38_N8
\sd|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux3~0_combout\ = (\sd|sel\(1) & (((\sd|sel\(0))))) # (!\sd|sel\(1) & ((\sd|sel\(0) & ((\ans[4]~reg0_q\))) # (!\sd|sel\(0) & (\ans[8]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ans[8]~reg0_q\,
	datab => \sd|sel\(1),
	datac => \ans[4]~reg0_q\,
	datad => \sd|sel\(0),
	combout => \sd|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y38_N30
\sd|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux3~1_combout\ = (\sd|Mux3~0_combout\ & (((\mw|X\(4)) # (!\sd|sel\(1))))) # (!\sd|Mux3~0_combout\ & (\ans[0]~reg0_q\ & ((\sd|sel\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ans[0]~reg0_q\,
	datab => \sd|Mux3~0_combout\,
	datac => \mw|X\(4),
	datad => \sd|sel\(1),
	combout => \sd|Mux3~1_combout\);

-- Location: LCCOMB_X12_Y38_N28
\sd|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|Mux3~4_combout\ = (\sd|sel\(2) & (((\sd|Mux3~1_combout\)))) # (!\sd|sel\(2) & ((\sd|Mux3~3_combout\) # ((\sd|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|Mux3~3_combout\,
	datab => \sd|Mux3~2_combout\,
	datac => \sd|sel\(2),
	datad => \sd|Mux3~1_combout\,
	combout => \sd|Mux3~4_combout\);

-- Location: FF_X12_Y38_N29
\sd|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sd|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sd|num\(0));

-- Location: LCCOMB_X41_Y42_N4
\sd|WideOr6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|WideOr6~0_combout\ = (\sd|num\(2) & (!\sd|num\(1) & (\sd|num\(3) $ (!\sd|num\(0))))) # (!\sd|num\(2) & (\sd|num\(0) & (\sd|num\(1) $ (!\sd|num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num\(1),
	datab => \sd|num\(2),
	datac => \sd|num\(3),
	datad => \sd|num\(0),
	combout => \sd|WideOr6~0_combout\);

-- Location: LCCOMB_X41_Y42_N26
\sd|WideOr5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|WideOr5~0_combout\ = (\sd|num\(1) & ((\sd|num\(0) & ((\sd|num\(3)))) # (!\sd|num\(0) & (\sd|num\(2))))) # (!\sd|num\(1) & (\sd|num\(2) & (\sd|num\(3) $ (\sd|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num\(1),
	datab => \sd|num\(2),
	datac => \sd|num\(3),
	datad => \sd|num\(0),
	combout => \sd|WideOr5~0_combout\);

-- Location: LCCOMB_X41_Y42_N0
\sd|WideOr4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|WideOr4~0_combout\ = (\sd|num\(2) & (\sd|num\(3) & ((\sd|num\(1)) # (!\sd|num\(0))))) # (!\sd|num\(2) & (\sd|num\(1) & (!\sd|num\(3) & !\sd|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num\(1),
	datab => \sd|num\(2),
	datac => \sd|num\(3),
	datad => \sd|num\(0),
	combout => \sd|WideOr4~0_combout\);

-- Location: LCCOMB_X41_Y42_N14
\sd|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|WideOr3~0_combout\ = (\sd|num\(1) & ((\sd|num\(2) & ((\sd|num\(0)))) # (!\sd|num\(2) & (\sd|num\(3) & !\sd|num\(0))))) # (!\sd|num\(1) & (!\sd|num\(3) & (\sd|num\(2) $ (\sd|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num\(1),
	datab => \sd|num\(2),
	datac => \sd|num\(3),
	datad => \sd|num\(0),
	combout => \sd|WideOr3~0_combout\);

-- Location: LCCOMB_X41_Y42_N12
\sd|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|WideOr2~0_combout\ = (\sd|num\(1) & (((!\sd|num\(3) & \sd|num\(0))))) # (!\sd|num\(1) & ((\sd|num\(2) & (!\sd|num\(3))) # (!\sd|num\(2) & ((\sd|num\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num\(1),
	datab => \sd|num\(2),
	datac => \sd|num\(3),
	datad => \sd|num\(0),
	combout => \sd|WideOr2~0_combout\);

-- Location: LCCOMB_X41_Y42_N18
\sd|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|WideOr1~0_combout\ = (\sd|num\(1) & (!\sd|num\(3) & ((\sd|num\(0)) # (!\sd|num\(2))))) # (!\sd|num\(1) & (\sd|num\(0) & (\sd|num\(2) $ (!\sd|num\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num\(1),
	datab => \sd|num\(2),
	datac => \sd|num\(3),
	datad => \sd|num\(0),
	combout => \sd|WideOr1~0_combout\);

-- Location: LCCOMB_X12_Y42_N0
\sd|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sd|WideOr0~0_combout\ = (\sd|num\(0) & ((\sd|num\(3)) # (\sd|num\(2) $ (\sd|num\(1))))) # (!\sd|num\(0) & ((\sd|num\(1)) # (\sd|num\(3) $ (\sd|num\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sd|num\(3),
	datab => \sd|num\(2),
	datac => \sd|num\(0),
	datad => \sd|num\(1),
	combout => \sd|WideOr0~0_combout\);

ww_KEY_C(0) <= \KEY_C[0]~output_o\;

ww_KEY_C(1) <= \KEY_C[1]~output_o\;

ww_KEY_C(2) <= \KEY_C[2]~output_o\;

ww_KEY_C(3) <= \KEY_C[3]~output_o\;

ww_ans(0) <= \ans[0]~output_o\;

ww_ans(1) <= \ans[1]~output_o\;

ww_ans(2) <= \ans[2]~output_o\;

ww_ans(3) <= \ans[3]~output_o\;

ww_ans(4) <= \ans[4]~output_o\;

ww_ans(5) <= \ans[5]~output_o\;

ww_ans(6) <= \ans[6]~output_o\;

ww_ans(7) <= \ans[7]~output_o\;

ww_ans(8) <= \ans[8]~output_o\;

ww_ans(9) <= \ans[9]~output_o\;

ww_ans(10) <= \ans[10]~output_o\;

ww_ans(11) <= \ans[11]~output_o\;

ww_ans(12) <= \ans[12]~output_o\;

ww_ans(13) <= \ans[13]~output_o\;

ww_ans(14) <= \ans[14]~output_o\;

ww_ans(15) <= \ans[15]~output_o\;

ww_N(0) <= \N[0]~output_o\;

ww_N(1) <= \N[1]~output_o\;

ww_N(2) <= \N[2]~output_o\;

ww_N(3) <= \N[3]~output_o\;

ww_N(4) <= \N[4]~output_o\;

ww_N(5) <= \N[5]~output_o\;

ww_N(6) <= \N[6]~output_o\;

ww_N(7) <= \N[7]~output_o\;

ww_N(8) <= \N[8]~output_o\;

ww_N(9) <= \N[9]~output_o\;

ww_N(10) <= \N[10]~output_o\;

ww_N(11) <= \N[11]~output_o\;

ww_N(12) <= \N[12]~output_o\;

ww_N(13) <= \N[13]~output_o\;

ww_N(14) <= \N[14]~output_o\;

ww_N(15) <= \N[15]~output_o\;

ww_N(16) <= \N[16]~output_o\;

ww_N(17) <= \N[17]~output_o\;

ww_N(18) <= \N[18]~output_o\;

ww_N(19) <= \N[19]~output_o\;

ww_N(20) <= \N[20]~output_o\;

ww_N(21) <= \N[21]~output_o\;

ww_N(22) <= \N[22]~output_o\;

ww_N(23) <= \N[23]~output_o\;

ww_N(24) <= \N[24]~output_o\;

ww_N(25) <= \N[25]~output_o\;

ww_N(26) <= \N[26]~output_o\;

ww_N(27) <= \N[27]~output_o\;

ww_N(28) <= \N[28]~output_o\;

ww_N(29) <= \N[29]~output_o\;

ww_N(30) <= \N[30]~output_o\;

ww_N(31) <= \N[31]~output_o\;

ww_codeout(0) <= \codeout[0]~output_o\;

ww_codeout(1) <= \codeout[1]~output_o\;

ww_codeout(2) <= \codeout[2]~output_o\;

ww_codeout(3) <= \codeout[3]~output_o\;

ww_codeout(4) <= \codeout[4]~output_o\;

ww_codeout(5) <= \codeout[5]~output_o\;

ww_codeout(6) <= \codeout[6]~output_o\;

ww_codeout(7) <= \codeout[7]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;

ww_sel(2) <= \sel[2]~output_o\;

ww_X(0) <= \X[0]~output_o\;

ww_X(1) <= \X[1]~output_o\;

ww_X(2) <= \X[2]~output_o\;

ww_X(3) <= \X[3]~output_o\;

ww_X(4) <= \X[4]~output_o\;

ww_X(5) <= \X[5]~output_o\;

ww_X(6) <= \X[6]~output_o\;

ww_X(7) <= \X[7]~output_o\;

ww_Y(0) <= \Y[0]~output_o\;

ww_Y(1) <= \Y[1]~output_o\;

ww_Y(2) <= \Y[2]~output_o\;

ww_Y(3) <= \Y[3]~output_o\;

ww_Y(4) <= \Y[4]~output_o\;

ww_Y(5) <= \Y[5]~output_o\;

ww_Y(6) <= \Y[6]~output_o\;

ww_Y(7) <= \Y[7]~output_o\;
END structure;


