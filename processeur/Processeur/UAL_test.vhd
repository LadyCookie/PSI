--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:46:21 05/10/2019
-- Design Name:   
-- Module Name:   /home/bouzerea/Documents/4A/Autom/processeur/Processeur/UAL_test.vhd
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
 
ENTITY UAL_test IS
END UAL_test;
 
ARCHITECTURE behavior OF UAL_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UAL
    PORT(
         S : OUT  std_logic_vector(15 downto 0);
         OP : IN  std_logic_vector(3 downto 0);
         A : IN  std_logic_vector(15 downto 0);
         B : IN  std_logic_vector(15 downto 0);
         C : OUT  std_logic;
         Ne : OUT  std_logic;
         V : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal OP : std_logic_vector(3 downto 0) := (others => '0');
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal S : std_logic_vector(15 downto 0);
   signal C : std_logic;
   signal Ne : std_logic;
   signal V : std_logic;
   signal Z : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal CLK : std_logic;
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UAL PORT MAP (
          S => S,
          OP => OP,
          A => A,
          B => B,
          C => C,
          Ne => Ne,
          V => V,
          Z => Z
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 
	A <= x"0001";
	B <= x"0003";

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for 100 ns;	

      OP <= x"0", x"1" after 100ns, x"2" after 200 ns, x"3" after 300ns, x"4" after 400ns; 

      wait;
   end process;

END;
