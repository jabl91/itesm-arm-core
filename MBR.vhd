----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:26:33 04/29/2012 
-- Design Name: 
-- Module Name:    MBR - Behavioral 
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

entity MBR_mod is
Port ( 		datain : in  STD_LOGIC_VECTOR (7 downto 0);
				dataout : out  STD_LOGIC_VECTOR (7 downto 0):= "00000000";
				load_data : in std_logic;
				clk : in std_logic);
end MBR_mod;	

architecture Behavioral of MBR_mod is
signal out_data : std_logic_vector (7 downto 0);
begin
		process(clk)
			begin
				if (falling_edge(clk)) then
					if load_data='1' then
					out_data <= datain;
					end if;
				end if;
			end process;
dataout <= out_data;

end Behavioral;

