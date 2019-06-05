----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:04 04/19/2019 
-- Design Name: 
-- Module Name:    Pipeline - Behavioral 
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

entity Pipeline is
	generic(SizeReg : Natural := 16;
				SizeOP : natural := 4);
	port(	CLK : in std_logic ;
			OPin : in std_logic_vector(SizeOP-1 downto 0); 
			OPout: out std_logic_vector(SizeOP-1 downto 0); 
			Ain,Bin,Cin : in std_logic_vector(SizeReg-1 downto 0); 
			Aout,Bout,Cout : out std_logic_vector(SizeReg-1 downto 0) );
end Pipeline;

architecture Behavioral of Pipeline is

	signal OP : std_logic_vector(SizeOP-1 downto 0);
	signal A,B,C : std_logic_vector(SizeReg-1 downto 0);
	
begin
		
	process
	
		begin
		wait until CLK'event and CLK='1';
		OPout <= OP;
		Aout <= A;
		Bout <= B;
		Cout <= C;
		
		OP <= OPin;
		A <= Ain;
		B <= Bin;
		C <= Cin;
		
	end process;

end Behavioral;

