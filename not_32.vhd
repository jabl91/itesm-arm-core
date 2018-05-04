----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:04:37 05/01/2012 
-- Design Name: 
-- Module Name:    not_32 - Behavioral 
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

entity not_32 is
    Port ( a : in  STD_LOGIC_VECTOR(31 DOWNTO 0);--32
           q : out  STD_LOGIC_VECTOR(31 DOWNTO 0));
end not_32;

architecture Behavioral of not_32 is

begin

	q <= not a;
end Behavioral;

