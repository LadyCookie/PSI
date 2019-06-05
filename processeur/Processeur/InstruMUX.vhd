----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:11:17 05/28/2019 
-- Design Name: 
-- Module Name:    InstruMUX - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity InstruMUX is
	generic(SizeInstru : Natural := 36;
				SizeRegAddr: Natural :=16;
				SizeOP: natural :=4);
	port( InstruBin : in std_logic_vector(SizeInstru-1 downto 0);
			A,B,C : out std_logic_vector(SizeRegAddr-1 downto 0);
			OP : out std_logic_vector(SizeOP-1 downto 0) );
end InstruMUX;

architecture Behavioral of InstruMUX is

begin
	A <= InstruBin(SizeInstru-SizeOP-1 downto SizeInstru-SizeOP-SizeRegAddr);
	C <= InstruBin(SizeInstru-SizeOP-SizeRegAddr-1 downto SizeInstru-SizeOP-2*SizeRegAddr);
	--C <= InstruBin(SizeInstru-SizeOP-2*SizeRegAddr - 1 downto SizeInstru-SizeOP-3*SizeRegAddr); dans le cas d'une architecture avec 3 registres dans l'instruction
	B <= InstruBin(SizeInstru-SizeOP-1 downto SizeInstru-SizeOP-SizeRegAddr); --dans le cas d'une architecture avec 2 registres dans l'instructions
	OP <= InstruBin(SizeInstru-1 downto SizeInstru-SizeOP);

end Behavioral;

