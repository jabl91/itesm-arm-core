----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:23:36 05/01/2012 
-- Design Name: 
-- Module Name:    MUL_DIV_32 - Behavioral 
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

library work;

use work.ARITH_PLUS.all;


-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;



entity DIV_32 is
		Port(
				A 			: in STD_LOGIC_VECTOR(15 downto 0);
				B 			: in STD_LOGIC_VECTOR (15 downto 0);
				--SEL		: in STD_LOGIC;
				Q 			: out STD_LOGIC_VECTOR (31 downto 0)
			);
end DIV_32;

architecture Behavioral of DIV_32 is

signal A1 :  UNSIGNED(15 downto 0);
signal B1 : UNSIGNED (15 downto 0);
signal Q1 : UNSIGNED (31 downto 0);

begin
A1 <= unsigned(A);
B1 <= unsigned (B);
	process(A1, B1)
	
		begin
		
		if( A1 < B1) then
		Q1 <= "00000000000000000000000000000000";
		
		--if SEL = '0' then
		--Q1 <= A1 * B1;
		
		--end if;
		--if SEL = '1' then
		elsif (A1 = 0) then
		Q1 <= "00000000000000000000000000000000";
		elsif (B1 = 0) then
		Q1 <= "00000000000000000000000000000000";
		else
		Q1 (15 downto 0) <= divide (A1, B1);--duda
		Q1 (31 downto 16) <= "0000000000000000";
		
		end if;


		
		
	end process;
	Q <= std_logic_vector(Q1);

end Behavioral;

