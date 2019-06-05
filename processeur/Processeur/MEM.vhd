----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:55:49 04/19/2019 
-- Design Name: 
-- Module Name:    MEM - Behavioral 
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

entity MEM is
	generic (LenData: natural := 8;
				NMem : natural := 100;
				LenAddr : natural :=8);
	port(Addr: in std_logic_vector(LenAddr-1 downto 0);
			w , CLK: in std_logic;
			ValIn : in std_logic_vector(LenData-1 downto 0);
			ValOut : out std_logic_vector(LenData-1 downto 0));
end MEM;

architecture Behavioral of MEM is
	type memory is array (NMem-1 downto 0) of std_logic_vector(LenData-1 downto 0);
	signal mem : memory;
begin

		ValOut <= mem(to_integer(signed(Addr))) when w='0'and Addr /= "U" and to_integer(unsigned(Addr)) < NMem else
					(others => '0');
		process
			begin
				wait until CLK'event and CLK='1';
					if w='1' then
						mem(to_integer(signed(Addr))) <= ValIn;
					end if;
		end process;

end Behavioral;

