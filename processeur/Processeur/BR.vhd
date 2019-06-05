----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:47:37 04/19/2019 
-- Design Name: 
-- Module Name:    BR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity BR is
	

	generic (SizeData:natural :=16 ; 
				LenAddrReg : natural := 8;
				NbReg:natural := 16);
	port(	w, CLK : in std_logic;
			RegW, RegA, RegB : in std_logic_vector(LenAddrReg-1 downto 0);
			ValIn : in std_logic_vector(SizeData-1 downto 0)	;
			ValOutA,ValOutB :out std_logic_vector(SizeData-1 downto 0));
		 
end BR;

architecture Behavioral of BR is
	type tableau_de_registre is array (NbReg-1 downto 0) of std_logic_vector(SizeData-1 downto 0);
	signal tab : tableau_de_registre;
begin

	ValOutA <= ValIn when w='1' and RegW=RegA else
				tab(to_integer(signed(RegA))) when w='0' and RegA/="U" and to_integer(unsigned(RegA)) < NbReg else
					(others => '0');
	ValOutB <= ValIn when w='1' and RegW=RegB else
				tab(to_integer(signed(RegB))) when w='0' and RegB/="U" and to_integer(unsigned(RegB)) < NbReg else
					(others => '0');
	
	process 
		begin
			wait until CLK'event and CLK='1';
				if w='1' then
					tab(to_integer(signed(RegW))) <= ValIn;
				end if;
	end process;
	
end Behavioral;

