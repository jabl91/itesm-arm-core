----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:02:05 05/01/2012 
-- Design Name: 
-- Module Name:    xor_8 - Behavioral 
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

entity xor_8 is
    Port ( a 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           b 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           q 		:	out  STD_LOGIC_VECTOR(7 DOWNTO 0);
			  equal 	: out STD_LOGIC); -- '1' -> son iguales
end xor_8;

architecture Behavioral of xor_8 is

signal out_q : STD_LOGIC_VECTOR(7 DOWNTO 0);

begin

	out_q <= a xor b;
	process(out_q)
	begin
	if out_q = "00000000" then
		equal <= '1';
	else 
		equal <= '0';
	end if;
	end process;
	q <= out_q;


end Behavioral;

