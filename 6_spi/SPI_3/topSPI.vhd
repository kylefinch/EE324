--Kyle Finch
--11193077

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity topSPI is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           pwmOUT : out  STD_LOGIC;
           SCLK : out  STD_LOGIC;
           CS : out STD_LOGIC;
           SDATA : in  STD_LOGIC;
		 bt1 : in STD_LOGIC;
		 sw : in STD_LOGIC_VECTOR(7 downto 0));
end topSPI;

architecture Behavioral of topSPI is

component MIC is Port(    
    CLK      : in std_logic;         
    RST      : in std_logic;
    SDATA   : in std_logic;
    SCLK     : out std_logic;
    nCS      : out std_logic;
    DATA    : out std_logic_vector(7 downto 0);
    START    : in std_logic; 
    DONE     : out std_logic);
end component MIC;

component PWM is Port(
	CLK 		: in std_logic;
	DATA		: in std_logic_vector(7 downto 0);
     START    : in std_logic; 
     pwmOut     : out std_logic;
	DONE 		: out std_logic);
end component PWM;

signal DATA :std_logic_vector(7 downto 0);
signal pDONE :std_logic;
signal DONE :std_logic;

begin

C0: component MIC port map (CLK=>CLK, RST=>RST, SDATA=>SDATA, SCLK=>SCLK, nCS=>CS, DATA=>DATA, START=>'1', DONE=>DONE);
C1: component PWM port map(CLK=>CLK, DATA=>DATA, START=>'1', pwmOut=>pwmOut, DONE=>pDONE);


end Behavioral;

