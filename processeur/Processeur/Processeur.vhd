----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:13 04/19/2019 
-- Design Name: 
-- Module Name:    Processeur - Behavioral 
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

entity Processeur is

	port( CLK,RST : in std_logic);
	
end Processeur;


architecture Behavioral of Processeur is
	

	--COMPONENT DECLARATIONS
	--MI
	component MI
		generic(SizeIndex :  natural ;
				SizeInstru : natural );
		port(Instru : out std_logic_vector(SizeInstru-1 downto 0);
			index : in std_logic_vector(SizeIndex-1 downto 0));
	end component;
	
	--BR
	component BR
	generic (SizeData:natural; 
		LenAddrReg : natural;
		NbReg: natural);
	port(	w, CLK : in std_logic;
			RegW, RegA, RegB : in std_logic_vector(LenAddrReg-1 downto 0);
			ValIn : in std_logic_vector(SizeData-1 downto 0)	;
			ValOutA,ValOutB :out std_logic_vector(SizeData-1 downto 0));
	end component;
	
	--UAL
	component UAL
		generic (LenData:natural);
		port(S: out std_logic_vector(LenData-1 downto 0);
			OP : in std_logic_vector(2 downto 0); --OP: 00 (-) , 01 (*), 10 (and) , 11 (or)
			A,B: in std_logic_vector(LenData-1 downto 0) ;
			C,N,V,Z : out std_logic);
	end component;
	
	
	--MEM
	component MEM
		generic (LenData: natural := 8;
				NMem : natural := 100;
				LenAddr : natural :=8);
		port(Addr: in std_logic_vector(LenAddr-1 downto 0);
			w , CLK: in std_logic;
			ValIn : in std_logic_vector(LenData-1 downto 0);
			ValOut : out std_logic_vector(LenData-1 downto 0));
	end component;
	
	--Pipeline
	component Pipeline
		generic(SizeReg : Natural := 16;
					SizeOP : natural := 4);
		port(	CLK : in std_logic ;
			OPin : in std_logic_vector(SizeOP-1 downto 0); 
			OPout: out std_logic_vector(SizeOP-1 downto 0); 
			Ain,Bin,Cin : in std_logic_vector(SizeReg-1 downto 0); 
			Aout,Bout,Cout : out std_logic_vector(SizeReg-1 downto 0) );
	end component;
	
	--InstruMux
	component InstruMux
		generic(SizeInstru : Natural := 32;
				SizeRegAddr: Natural :=16;
				SizeOP: natural :=4);
		port( InstruBin : in std_logic_vector(SizeInstru-1 downto 0);
			A,B,C : out std_logic_vector(SizeRegAddr-1 downto 0);
			OP : out std_logic_vector(SizeOP-1 downto 0) );
	end component;
	
	--Compteur pour registre instruction
	component CompteurSynchrone
	generic(N:natural :=8);
		--reset actif si RST=0
		--load actif si LOAD=1
		--enable actif si EN=0
		--sens incremente si SENS=1 decremente si SENS=0
		port(CK,EN,SENS,RST,LOAD : in std_logic;
				
				Din:in std_logic_vector(N-1 downto 0);
				Dout: out std_logic_vector(N-1 downto 0)
		);
	end component;
	
	
	--------------------------------------------------------------
	
	--SIGNAL DEFINITIONS
	
	--CONSTANTS
	
	--Constants for modules
	constant SizeIndexMI : natural := 16;
	constant SizeInstru : natural := 36; --OP : 4
	constant SizeInstruOP : natural := 4;
	constant SizeData : natural := 16;
	constant SizeOPUAL : natural := 3;
	constant LenAddrReg : natural := 8;
	constant LenAddrMEM : natural := 16;
	constant NbReg : natural := 16;
	constant SizeMem : natural :=100;
	
	--Code OP
	constant AFC  : std_logic_vector(SizeInstruOP-1 downto 0) := x"1";
	constant STORE: std_logic_vector(SizeInstruOP-1 downto 0) := x"2";
	constant LOAD : std_logic_vector(SizeInstruOP-1 downto 0) := x"3";
	constant COP  : std_logic_vector(SizeInstruOP-1 downto 0) := x"4";
	constant ADD  : std_logic_vector(SizeInstruOP-1 downto 0) := x"5";
	constant MUL  : std_logic_vector(SizeInstruOP-1 downto 0) := x"6";
	constant SOU  : std_logic_vector(SizeInstruOP-1 downto 0) := x"7";
	constant DIV  : std_logic_vector(SizeInstruOP-1 downto 0) := x"8";
	constant EQU  : std_logic_vector(SizeInstruOP-1 downto 0) := x"9";
	constant INF  : std_logic_vector(SizeInstruOP-1 downto 0) := x"A";
	constant SUP  : std_logic_vector(SizeInstruOP-1 downto 0) := x"B";
	constant INFE : std_logic_vector(SizeInstruOP-1 downto 0) := x"C";
	constant SUPE : std_logic_vector(SizeInstruOP-1 downto 0) := x"D";
	constant JMP  : std_logic_vector(SizeInstruOP-1 downto 0) := x"E";
	constant JMPC : std_logic_vector(SizeInstruOP-1 downto 0) := x"F";
	constant NOPE : std_logic_vector(SizeInstruOP-1 downto 0) := x"0";
	
	--Code OP UAL
	--OP: 000 (-) , 001 (+) , 010 (*), 011 (and) , 100 (or)
	constant UAL_SUB : std_logic_vector(2 downto 0) := "000";
	constant UAL_ADD : std_logic_vector(2 downto 0) := "001";
	constant UAL_MUL : std_logic_vector(2 downto 0) := "010";
	constant UAL_and : std_logic_vector(2 downto 0) := "011";
	constant UAL_or : std_logic_vector(2 downto 0) := "100";
	
	--MI
	
	signal MI_in_index :  std_logic_vector(SizeIndexMi-1 downto 0);
	signal MI_out_instru :std_logic_vector(SizeInstru-1 downto 0);
	
	--BR
	
	signal BR_in_w : std_logic;
	signal BR_in_RegW,BR_in_RegA,BR_in_RegB : std_logic_vector(LenAddrReg-1 downto 0);
	signal BR_in_ValIn, BR_out_ValOutA, BR_out_ValOutB : std_logic_vector(SizeData-1 downto 0);

	--UAL
	
	signal UAL_in_OP : std_logic_vector(SizeOPUAL-1 downto 0);
	signal UAL_out_S : std_logic_vector(SizeData-1 downto 0) ;
	signal UAL_out_C,UAL_out_N,UAL_out_V,UAL_out_Z : std_logic;
				
	--MEM

	signal MEM_in_Addr : std_logic_vector(LenAddrMEM-1 downto 0);
	signal MEM_in_w : std_logic;
	signal MEM_in_ValIn, MEM_out_ValOut : std_logic_vector(SizeData-1 downto 0);
	
	--Pipelines

		--Pipeline LI/DI
		signal PL_LI_DI_in_OP, PL_LI_DI_out_OP : std_logic_vector(SizeInstruOP-1 downto 0);
		signal PL_LI_DI_in_A,PL_LI_DI_in_B,PL_LI_DI_in_C , PL_LI_DI_out_A, PL_LI_DI_out_B, PL_LI_DI_out_C : std_logic_vector(SizeData-1 downto 0);
		
		--Pipeline DI/EX
		signal PL_DI_EX_in_OP, PL_DI_EX_out_OP : std_logic_vector(SizeInstruOP-1 downto 0);
		signal PL_DI_EX_in_A,PL_DI_EX_in_B, PL_DI_EX_in_C, PL_DI_EX_out_A, PL_DI_EX_out_B, PL_DI_EX_out_C : std_logic_vector(SizeData-1 downto 0);
		
		--Pipeline EX/MEM
		signal PL_EX_MEM_in_OP, PL_EX_MEM_out_OP : std_logic_vector(SizeInstruOP-1 downto 0);
		signal PL_EX_MEM_in_A,PL_EX_MEM_in_B,PL_EX_MEM_in_C, PL_EX_MEM_out_A, PL_EX_MEM_out_B, PL_EX_MEM_out_C : std_logic_vector(SizeData-1 downto 0);
		
		--Pipeline MEM/RE
		signal PL_MEM_RE_in_OP, PL_MEM_RE_out_OP : std_logic_vector(SizeInstruOP-1 downto 0);
		signal PL_MEM_RE_in_A,PL_MEM_RE_in_B,PL_MEM_RE_in_C, PL_MEM_RE_out_A,PL_MEM_RE_out_B,PL_MEM_RE_out_C : std_logic_vector(SizeData-1 downto 0);
	
	--InstruMux
	
	signal InstruMux_out_A,InstruMux_out_B,InstruMux_out_C : std_logic_vector(SizeData-1 downto 0);
	signal InstruMux_out_OP : std_logic_vector(SizeInstruOP-1 downto 0);		
		
	--Compteur
	
	signal Compteur_in_EN, Compteur_in_RST, Compteur_in_LOAD, Compteur_in_SENS : std_logic;
	signal Compteur_in_D, Compteur_out_D : std_logic_vector(SizeIndexMI-1 downto 0) := (others => '0');
		
	--tampon pour aléa
	signal compteur : integer;
	
begin

	-- modules instanciation
	
	Module_mi : MI generic map (SizeIndexMI,SizeInstru) port map (MI_out_instru, Compteur_out_D);
	Module_Compteur : CompteurSynchrone generic map (SizeIndexMI) port map (CLK,Compteur_in_EN,Compteur_in_SENS,Compteur_in_RST,Compteur_in_LOAD,Compteur_in_D,Compteur_out_D);
		
	Module_InstruMux : InstruMux generic map (SizeInstru, SizeData, SizeInstruOP) port map (MI_out_instru,InstruMux_out_A, InstruMux_out_B,InstruMux_out_C,InstruMux_out_OP);
	
	Module_br : BR generic map (SizeData,LenAddrReg,NbReg) port map (BR_in_w, CLK, BR_in_RegW, BR_in_RegA, BR_in_RegB,BR_in_ValIn, BR_out_ValOutA, BR_out_ValOutB);
	Module_ual : UAL generic map (SizeData) port map (UAL_out_S, UAL_in_OP, PL_DI_EX_Out_B,PL_DI_EX_Out_C, UAL_out_C,UAL_out_N,UAL_out_V,UAL_out_Z);
	Module_mem : MEM generic map (SizeData,SizeMem,LenAddrMEM) port map (MEM_in_Addr,MEM_in_w,CLK,MEM_in_ValIn,MEM_out_ValOut);

	PL_LI_DI : Pipeline generic map (SizeData,SizeInstruOP) port map (CLK, InstruMux_out_OP,PL_LI_DI_out_OP,InstruMux_out_A,PL_LI_DI_in_B,PL_LI_DI_in_C,PL_LI_DI_out_A,PL_LI_DI_out_B,PL_LI_DI_out_C);
	PL_DI_EX : Pipeline generic map (SizeData,SizeInstruOP) port map (CLK, PL_DI_EX_in_OP,PL_DI_EX_out_OP,PL_DI_EX_in_A,PL_DI_EX_in_B,PL_DI_EX_in_C,PL_DI_EX_out_A,PL_DI_EX_out_B,PL_DI_EX_out_C);
	PL_EX_MEM: Pipeline generic map (SizeData,SizeInstruOP) port map (CLK, PL_EX_MEM_in_OP,PL_EX_MEM_out_OP,PL_EX_MEM_in_A,PL_EX_MEM_in_B,PL_EX_MEM_in_C,PL_EX_MEM_out_A,PL_EX_MEM_out_B,PL_EX_MEM_out_C);
	PL_MEM_RE: Pipeline generic map (SizeData,SizeInstruOP) port map (CLK, PL_MEM_RE_in_OP,PL_MEM_RE_out_OP,PL_MEM_RE_in_A,PL_MEM_RE_in_B,PL_MEM_RE_in_C,PL_MEM_RE_out_A,PL_MEM_RE_out_B,PL_MEM_RE_out_C);
	
	-- signal branches *to be deleted at the end if not in process or without condition*
	
	--reset actif si RST=0
		--load actif si LOAD=1
		--enable actif si EN=0
		--sens incremente si SENS=1 decremente si SENS=0
		 --penser à initialiser ces machins

	Compteur_in_RST <= '0' when RST='1' else 
							 '1' ;
	Compteur_in_LOAD <= '0';
	Compteur_in_EN <= '0';
	Compteur_in_SENS <= '1';
	
	
	--repercussion 1er etage avec cas particulier pour l'AFC
	PL_LI_DI_in_B <= InstruMux_out_C when InstruMux_out_OP = AFC else
							InstruMux_out_B;
	PL_LI_DI_in_C <= InstruMux_out_C;
	
	--repercussion 2nd etage
	-- repercussion pipelines
	PL_DI_EX_in_OP <= PL_LI_DI_out_OP;
	PL_DI_EX_in_A <= PL_LI_DI_out_A;
	PL_DI_EX_in_C <= BR_out_ValOutB when   PL_LI_DI_Out_OP = STORE or
														PL_LI_DI_Out_OP = ADD or
													   PL_LI_DI_Out_OP = MUL or 
														PL_LI_DI_Out_OP = SOU or
														PL_LI_DI_Out_OP = COP or
														PL_LI_DI_Out_OP = STORE or
														PL_LI_DI_Out_OP = EQU or
														PL_LI_DI_Out_OP = INF or 
														PL_LI_DI_Out_OP = INFE or 
														PL_LI_DI_Out_OP = SUP or 
														PL_LI_DI_Out_OP = SUPE else
							PL_LI_DI_out_C;
	--MUX BR reading
	PL_DI_EX_in_B <= BR_out_ValoutA when PL_LI_DI_Out_OP = COP
												or PL_LI_DI_Out_OP = ADD
												or PL_LI_DI_Out_OP = MUL
												or PL_LI_DI_Out_OP = SOU
												or PL_LI_DI_Out_OP = DIV
												or PL_LI_DI_Out_OP = STORE
							else
	                 PL_LI_DI_out_B;
	
	
	
	
	--decodeur OP pour UAL
	UAL_in_OP <= UAL_SUB when PL_DI_EX_out_OP = SOU else
					 UAL_ADD when PL_DI_EX_out_OP = ADD else
					 UAL_MUL when PL_DI_EX_out_OP = MUL;  --DIV if implemented


	--repercussion 3eme étage
	
	PL_EX_MEM_in_OP <= PL_DI_EX_out_OP;
	PL_EX_MEM_in_A <= PL_DI_EX_out_A;
	PL_EX_MEM_in_C <= PL_DI_EX_out_C;

	--MUX out UAL
	PL_EX_MEM_in_B <= UAL_out_S when PL_DI_EX_out_OP = ADD or
												PL_DI_EX_out_OP = MUL or
												PL_DI_EX_out_OP = SOU else -- DIV if implemented
							PL_DI_EX_out_B;
	
	
	--repercussion 4eme etage gestion de la memoire
	--MEM_in_Addr,MEM_in_w,CLK,MEM_in_ValIn,MEM_out_ValOut
	MEM_in_Addr <= PL_EX_MEM_out_C(LenAddrMEM-1 downto 0) when PL_EX_MEM_Out_OP = LOAD else
						PL_EX_MEM_out_A(LenAddrMEM-1 downto 0) when PL_EX_MEM_Out_OP = STORE;
	MEM_in_w <= '1' when PL_EX_MEM_out_OP = STORE else
					'0';
	MEM_in_ValIn <= PL_EX_MEM_out_C;
	
	PL_MEM_RE_in_OP <= PL_EX_MEM_out_OP;
	PL_MEM_RE_in_A <= PL_EX_MEM_out_A;
	PL_MEM_RE_in_B <= MEM_Out_Valout when PL_EX_MEM_Out_OP = LOAD else
							PL_EX_MEM_out_B;
	PL_MEM_RE_in_C <= PL_EX_MEM_out_C;
	
	--Dernier etage
	
	--MUX out mem
	BR_in_ValIn <= PL_MEM_RE_out_B;
	
	
	BR_in_RegW <= PL_MEM_RE_out_A(LenAddrReg-1 downto 0);

	BR_in_RegA <= PL_LI_DI_out_B(LenAddrReg-1 downto 0);
	BR_in_RegB <= PL_LI_DI_out_C(LenAddrReg-1 downto 0);
	BR_in_w <= '1' when PL_MEM_RE_out_OP = AFC or 
							  PL_MEM_RE_out_OP = COP or
							  PL_MEM_RE_out_OP = ADD or
							  PL_MEM_RE_out_OP = SOU or
							  PL_MEM_RE_out_OP = MUL or
							  PL_MEM_RE_out_OP = LOAD else
					'0';
	
	
	process
	begin
			
	wait until CLK'event and CLK='1';
	
		if(  (Pl_LI_DI_Out_OP = ADD or 
				Pl_LI_DI_Out_OP = SOU or
				Pl_LI_DI_Out_OP = MUL or
				Pl_LI_DI_Out_OP = COP or
				Pl_LI_DI_Out_OP = AFC )
		
		
				and (PL_LI_DI_In_OP /= AFC or PL_LI_DI_In_OP /= LOAD )) then --pb d'aléa
			
			Compteur_in_EN <= '1' ;
			compteur<=6;
		end if;
		
		if(compteur = 0) then
		Compteur_in_EN <= '0';
		end if;
		
		if(Compteur_in_EN = '1') then
			PL_DI_EX_in_OP <= "0000";
			PL_DI_EX_in_A <= "0000000000000000";
			PL_DI_EX_in_B <= "0000000000000000";
			PL_DI_EX_in_C <= "0000000000000000";
			compteur <= compteur - 1;
		end if;
	
	end process;
end Behavioral;

