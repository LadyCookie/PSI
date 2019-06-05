--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:40:12 05/13/2019
-- Design Name:   
-- Module Name:   /home/bouzerea/Documents/4A/Autom/processeur/Processeur/MI_test.vhd
-- Project Name:  Processeur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MI
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL; 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MI_test IS
END MI_test;
 
ARCHITECTURE behavior OF MI_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MI
    PORT(
         Instru : OUT  std_logic_vector(35 downto 0);
         index : IN  std_logic_vector(8 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal index : std_logic_vector(8 downto 0) := (others => '0');

 	--Outputs
   signal Instru : std_logic_vector(35 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal CLK : std_logic;
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MI PORT MAP (
          Instru => Instru,
          index => index
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;

	
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;
		index <= index + '1';
      -- insert stimulus here 
		
      wait;
   end process;

END;
