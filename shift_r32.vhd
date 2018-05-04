----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:28:15 05/05/2012 
-- Design Name: 
-- Module Name:    shift_r_32 - Behavioral 
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

entity shift_r_32 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);--32
           c_in : in  STD_LOGIC;
           c_out : out  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (31 downto 0));
end shift_r_32;

architecture Behavioral of shift_r_32 is

begin

			c_out <= a(0);
			q <= c_in & a(31 downto 1);

end Behavioral;

