----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:08:27 05/01/2012 
-- Design Name: 
-- Module Name:    Subtract - Behavioral 
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Subtract is
    Port ( 	A 		: in unsigned 				( 7 downto 0);
				B 		: in unsigned 				( 7 downto 0);
				C_IN 	: in unsigned 				( 0 downto 0);
				C_OUT : out STD_LOGIC;
				Q 		: out STD_LOGIC_VECTOR 	( 7 downto 0)
end Subtract;

architecture Behavioral of Subtract is

signal SUB : unsigned (8 downto 0);

begin

	SUB <= ('0' & A) + ('0' & B) + ("00000000" & C_IN);
	
	C_OUT <= std_logic(SUM(8));
	Q <= std_logic_vector (SUM(7 downto 0));
end Behavioral;

