----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:13:32 04/29/2012 
-- Design Name: 
-- Module Name:    Mux_MBR - Behavioral 
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

entity Mux_MBR is

		port(	 PC : in std_logic_vector (6 downto 0);
					regA: in std_logic_vector (7 downto 0);
					sel: in std_logic;
					output : out std_logic_vector (7 downto 0)
		);
end Mux_MBR;

architecture Behavioral of Mux_MBR is

begin

process (sel,regA,PC)
	begin
			if sel = '0' then
			output <=regA;
			end if;

			if sel = '1' then
			output <= ("0" & PC);
			end if;
end process;


end Behavioral;

