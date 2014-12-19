----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:15:49 12/11/2014 
-- Design Name: 
-- Module Name:    PWM - Behavioral 
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

entity PWM is Port(
	 CLK 		: in std_logic;
	 DATA		: in std_logic_vector(7 downto 0);
      START    : in std_logic; 
      pwmOut     : out std_logic;
	 DONE 		: out std_logic);
end PWM;

architecture Behavioral of PWM is

signal count : std_logic_vector(7 downto 0);

begin
	process (CLK, START) begin
		if(clk'event and clk='1') then
			if (START = '1') then	
				if (count = 255) then 
					DONE <= '1';
					count <= x"00";
				else 
					DONE<= '0';
					count <= count + 1;
				end if;	
			end if;
		end if;
	end process;
	
	process(count) begin
		if(count <= DATA) then
			pwmout <= '1';
		else
			pwmout <='0';
		end if;
	end process;
	
	
end Behavioral;

