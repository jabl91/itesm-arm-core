----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:37:00 05/01/2012 
-- Design Name: 
-- Module Name:    adder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity adder is
			Port(
				A 			: in STD_LOGIC_VECTOR ( 7 downto 0);
				B 			: in STD_LOGIC_VECTOR ( 7 downto 0);
				C_IN 		: in STD_LOGIC;
				ADD_SUB 	: in STD_LOGIC;
				C_OUT 	: out STD_LOGIC := '0';
				Q 			: out STD_LOGIC_VECTOR ( 7 downto 0) := (others => '0')
			);
end adder;

architecture Behavioral of adder is

signal SUM : unsigned (8 downto 0);
signal A1 : unsigned (8 downto 0);
signal B1 : unsigned (8 downto 0);
signal C1 : unsigned (8 downto 0);
signal An : std_logic_vector (8 downto 0);
signal Bn : std_logic_vector (8 downto 0);
signal Cn : std_logic_vector (8 downto 0);
--signal SUB : unsigned (8 downto 0);

--signal C_SUB : unsigned ( 8 downto 0);

begin

	An <= '0' & A;
	Cn <= "00000000" & C_IN;
	A1 <= unsigned(An);
	C1 <= unsigned(Cn);
	
	process(ADD_SUB,A,B,C_IN)
	
	begin
	
		if ADD_SUB = '0' then
			Bn <= '0' & B;		
			B1 <= unsigned(Bn);
	
			SUM <= A1 + B1 + C1;
	
		elsif ADD_SUB = '1' then
	
			Bn <= not('0' & B);
			B1 <= unsigned(Bn);	
			SUM <= A1 + B1 + 1;
			
			--C_SUB <= C_IN & "11111110";
			
		end if;
	
	end process;
	
	C_OUT <= std_logic(SUM(8));
	Q <= std_logic_vector (SUM(7 downto 0));

end Behavioral;

