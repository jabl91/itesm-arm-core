----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:47:13 04/27/2012 
-- Design Name: 
-- Module Name:    and_8 - Behavioral 
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

entity and_8 is
    Port ( a : in  STD_LOGIC_VECTOR (7 DOWNTO 0);
           b : in  STD_LOGIC_VECTOR (7 DOWNTO 0);
--			  k : in  STD_LOGIC_VECTOR (7 DOWNTO 0);	
--           s : in  STD_LOGIC; -- s=1 --> B&K ; s=0 --> A&B
			  q : out  STD_LOGIC_VECTOR (7 DOWNTO 0));
end and_8;

architecture Behavioral of and_8 is

begin

q <= a and b;
--	process (s,b,k,a)
--	begin
--		if s = '1' then
--			q <= b and k;
--		else 
--			q <= a and b;
--		end if;
--	end process;
	
end Behavioral;

