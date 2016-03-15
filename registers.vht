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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/14/2016 20:49:13"
                                                            
-- Vhdl Test Bench template for design  :  registers
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY registers_vhd_tst IS
END registers_vhd_tst;
ARCHITECTURE registers_arch OF registers_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '0';
SIGNAL reg_1_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reg_2_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL reg_1_select : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL reg_2_select : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL write_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL write_en : STD_LOGIC := '0';
SIGNAL write_select : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT REGISTER_FILE
	PORT (
	clk : IN STD_LOGIC;
	reg_1_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reg_2_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	reg_1_select : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	reg_2_select : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	write_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	write_en : IN STD_LOGIC;
	write_select : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : REGISTER_FILE
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	reg_1_data => reg_1_data,
	reg_2_data => reg_2_data,
	reg_1_select => reg_1_select,
	reg_2_select => reg_2_select,
	write_data => write_data,
	write_en => write_en,
	write_select => write_select
	);

clk <= not clk after 10 ns;
write_en <= '1' after 50 ns;

init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        reg_1_select <= "00011";
        reg_2_select <= "00010";                     
        write_data <= x"10101010";
        write_select <= "00011";                     
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
       -- some_for : for i in 0 to 10 loop
       --  	clk <= '1';

     		--if (i > 5) then
     		--	write_en <= '1';
     		--end if ;

     		--WAIT for 10 ns;
     		--clk <= '0';
     		--WAIT for 10 ns;

       --  end loop ; -- some_for 
       wait for 10 ns;
WAIT;                                                        
END PROCESS always;                                          
END registers_arch;
