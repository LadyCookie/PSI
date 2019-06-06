----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:50:16 04/19/2019 
-- Design Name: 
-- Module Name:    MI - Behavioral 
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
use work.common.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MI is
	
	generic(SizeIndex :  natural :=16;
				SizeInstru : natural := 36); --52 dans le cas d'une architecture à 3 registres	
	
	port( Instru : out std_logic_vector(SizeInstru-1 downto 0);
			index : in std_logic_vector(SizeIndex-1 downto 0));
	
	
end MI;

architecture Behavioral of MI is

	signal MI : instrArray := init_rom(filename => "../../compilateur/out_all.asm");

begin
	
	Instru<= MI(to_integer(unsigned(index)));
	

end Behavioral;

