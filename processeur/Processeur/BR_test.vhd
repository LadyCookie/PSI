--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:26:42 05/10/2019
-- Design Name:   
-- Module Name:   /home/bouzerea/Documents/4A/Autom/processeur/Processeur/BR_test.vhd
-- Project Name:  Processeur
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: BR
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
 
ENTITY BR_test IS
END BR_test;
 
ARCHITECTURE behavior OF BR_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BR
    PORT(
         w : IN  std_logic;
         CLK : IN  std_logic;
         Reg : IN  std_logic_vector(7 downto 0);
         ValIn : IN  std_logic_vector(15 downto 0);
         ValOut : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal w : std_logic := '0';
   signal CLK : std_logic := '0';
   signal Reg : std_logic_vector(7 downto 0) := (others => '0');
   signal ValIn : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal ValOut : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BR PORT MAP (
          w => w,
          CLK => CLK,
          Reg => Reg,
          ValIn => ValIn,
          ValOut => ValOut
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
		
		w <= '1', '0' after 100 ns, '1' after 200 ns;
		Reg <= STD_LOGIC_VECTOR(to_unsigned(1,8)), std_logic_vector(to_unsigned(3,8)) after 10ns, std_logic_vector(to_unsigned(5,8)) after 20 ns, std_logic_vector(to_unsigned(7,8)) after 30ns, std_logic_vector(to_unsigned(9,8)) after 40 ns,
				 std_logic_vector(to_unsigned(9,8)) after 100 ns, std_logic_vector(to_unsigned(5,8)) after 120 ns, std_logic_vector(to_unsigned(3,8)) after 140 ns,std_logic_vector(to_unsigned(1,8)) after 160 ns, std_logic_vector(to_unsigned(7,8)) after 180 ns,
				 std_logic_vector(to_unsigned(7,8)) after 200 ns, std_logic_vector(to_unsigned(3,8)) after 220ns;
		ValIn <= x"0002", x"0005" after 10 ns, x"0008" after 20 ns, x"0011" after 30 ns, x"0014" after 40 ns,
					x"0035" after 200 ns, x"0064" after 220 ns;

      -- insert stimulus here 

      wait;
   end process;

END;
