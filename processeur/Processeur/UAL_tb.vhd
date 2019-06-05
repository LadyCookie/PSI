--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:30:45 05/07/2019
-- Design Name:   
-- Module Name:   /home/bouzerea/Documents/4A/Autom/processeur/Processeur/UAL_tb.vhd
-- Project Name:  Processeur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UAL
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY UAL_tb IS
END UAL_tb;
 
ARCHITECTURE behavior OF UAL_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UAL
    PORT(
         S : OUT  std_logic_vector(7 downto 0);
         OP : IN  std_logic_vector(1 downto 0);
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         C : IN  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP : std_logic_vector(1 downto 0) := (others => '0');
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal C : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UAL PORT MAP (
          S => S,
          OP => OP,
          A => A,
          B => B,
          C => C
        );
 

   -- Stimulus process
   stim_proc: process
	
	
	
   begin		
      -- hold reset state for 100 ns.
		A <= x"1";
		B <= x"3";
      wait for 100 ns;	

      OP <= x"00", x"01" after 100ns, x"02" after 200 ns, x"03" after 300ns; 

      wait;
   end process;

END;
