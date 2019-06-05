----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:38:56 04/19/2019 
-- Design Name: 
-- Module Name:    UAL - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity UAL is
	generic (LenData:natural :=16);
	port(S: out std_logic_vector(LenData-1 downto 0);
		 OP : in std_logic_vector(2 downto 0); --OP: 000 (-) , 001 (+) , 010 (*), 011 (and) , 100 (or)
		A,B: in std_logic_vector(LenData-1 downto 0) ;
		C,N,V,Z : out std_logic);

end UAL;

architecture Behavioral of UAL is
	signal StmpM : std_logic_vector( (LenData*2 -1) downto 0); 
	signal StmpA : std_logic_vector( LenData downto 0); 
	signal Stmp : std_logic_vector(LenData-1 downto 0);
begin
	S <= Stmp;
	Stmp <= A - B when OP=x"0" else --stmp permet de pouvoir lire les informations pour les flags car S est out
			 StmpA(LenData-1 downto 0) when OP=x"1" else
			 StmpM(LenData-1 downto 0) when OP=x"2" else
			A and B when OP=x"3" else
			A or B when OP=x"4";
	StmpM <= A * B;
	StmpA <= (('0' & A )+( '0' & B ));
	
	--FLAG
	Z <= '1' when Stmp=0 else '0';
	N <= '1' when Stmp(LenData-1)='1' else '0';
	C <= '1' when StmpA(LenData)='1' else '0';
	V <= '1' when A(LenData-1)='0' and B(LenData-1)='0' and Stmp(LenData-1)='1' and OP=x"1" else --Addition de 2 nombres positifs donne négatif
			'1' when A(LenData-1)='1' and B(LenData-1)='1' and Stmp(LenData-1)='0' and OP=x"1" else --Addition de 2 nombres négatifs donne positif
			'0';
	
end Behavioral;

