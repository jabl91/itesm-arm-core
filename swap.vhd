----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:01 05/01/2012 
-- Design Name: 
-- Module Name:    swap - Behavioral 
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

entity swap is
    Port ( a : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           q : out  STD_LOGIC_VECTOR(7 DOWNTO 0));
end swap;

architecture Behavioral of swap is

signal temp0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
signal temp1 : STD_LOGIC_VECTOR(3 DOWNTO 0);

begin

	temp0 <= a(3 DOWNTO 0);
	temp1 <= a(7 DOWNTO 4);
	q <= temp0 & temp1;
end Behavioral;


