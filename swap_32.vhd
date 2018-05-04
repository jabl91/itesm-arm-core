----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:01 05/01/2012 
-- Design Name: 
-- Module Name:    swap_32 - Behavioral 
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

entity swap_32 is
    Port ( a : in  STD_LOGIC_VECTOR(31 DOWNTO 0);
           q : out  STD_LOGIC_VECTOR(31 DOWNTO 0));
end swap_32;

architecture Behavioral of swap_32 is

signal temp0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal temp1 : STD_LOGIC_VECTOR(15 DOWNTO 0);

begin

	temp0 <= a(15 DOWNTO 0);
	temp1 <= a(31 DOWNTO 16);
	q <= temp0 & temp1;
end Behavioral;


