----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:09:51 04/27/2012 
-- Design Name: 
-- Module Name:    oc_reg - Behavioral 
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

entity cond_flags_mod is
    Port ( in_pm : in  STD_LOGIC_VECTOR (3 downto 0);
           out_uc : out  STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
			  load_oc : in std_logic;
			  clk : in std_logic);
end cond_flags_mod;

architecture Behavioral of cond_flags_mod is

begin

	--clk_oc <= clk and load_oc;
	
	process(clk,in_pm,load_oc)
	begin
		if(rising_edge(clk)) then
			if load_oc='1' then
			out_uc <= in_pm;
			end if;
		end if;
	end process;

end Behavioral;

