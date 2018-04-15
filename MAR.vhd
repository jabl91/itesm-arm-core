----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:53:13 04/29/2012 
-- Design Name: 
-- Module Name:    MAR - Behavioral 
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

entity MAR_mod is
Port ( 		addrin : in  STD_LOGIC_VECTOR (4 downto 0);
				addrout : out  STD_LOGIC_VECTOR (4 downto 0);
				load_addr : in std_logic;
				clk : in std_logic);
end MAR_mod;	

architecture Behavioral of MAR_mod is
signal out_addr : std_logic_vector (4 downto 0);
begin
		process(clk)
			begin
				if (falling_edge(clk)) then
					if load_addr='1' then
					out_addr <= addrin;
					end if;
				end if;
			end process;
addrout <= out_addr;

end Behavioral;

