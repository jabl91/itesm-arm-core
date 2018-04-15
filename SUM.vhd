----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:06 05/04/2012 
-- Design Name: 
-- Module Name:    SUM - Behavioral 
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

entity SUM is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (7 downto 0));
end SUM;

architecture Behavioral of SUM is

signal a1 : std_logic_vector(8 downto 0);
signal b1 : std_logic_vector(8 downto 0);
signal c1 : std_logic_vector(8 downto 0);
signal q1 : std_logic_vector(8 downto 0);

begin

a1 <= '0' & a;
b1 <= '0' & b;
c1 <= "00000000" & cin;

PROCESS (a1, b1,c1) IS
BEGIN
         q1 <= std_logic_vector(UNSIGNED(a1) + UNSIGNED(b1) + UNSIGNED(c1));
			
end process;

cout <= q1(8);
q <= q1(7 downto 0);


end Behavioral;

