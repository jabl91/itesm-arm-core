----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:18:53 04/28/2012 
-- Design Name: 
-- Module Name:    RAM - Behavioral 
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

entity ram_mod is
		Port ( adrr : in  STD_LOGIC_VECTOR (4 downto 0);
				datain_ram : in STD_LOGIC_VECTOR (7 downto 0);
				dataout_ram :out STD_LOGIC_VECTOR (7 downto 0);
				clk : in STD_LOGIC;
				CE : in STD_LOGIC;
				WE : in STD_LOGIC);
end ram_mod;

architecture Behavioral of ram_mod is


--Declaracion de un RAM de 32x16 bits
type ramtable is array(0 to 31) of std_logic_vector(7 downto 0);
signal RAM : ramtable := (others => (others => '0'));
--signal ram_dataout : std_logic_vector(15 downto 0);
--signal outdata : std_logic_vector(15 downto 0);

begin

process(clk)
	begin
	if (rising_edge(clk)) then
			if WE ='1' then
						RAM(to_integer(unsigned(adrr) ))<= datain_ram;
			end if;			
						
	end if;
	
end process;
dataout_ram<= RAM(to_integer(unsigned(adrr)));



end Behavioral;

