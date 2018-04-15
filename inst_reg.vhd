----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:34:02 04/27/2012 
-- Design Name: 
-- Module Name:    inst_reg - Behavioral 
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

entity inst_reg is
    Port ( in_pm : in  STD_LOGIC_VECTOR (3 downto 0);
           out_bus : out  STD_LOGIC_VECTOR (3 downto 0) := "0000";
			  load_inst : in std_logic;
			  clk : in std_logic);
end inst_reg;

architecture Behavioral of inst_reg is

--signal clk_inst : std_logic;

begin

	--clk_inst <= clk and load_inst;
	
	process(clk,in_pm,load_inst)
	begin
		if (rising_edge(clk)) then
			if load_inst='1' then
			out_bus <= in_pm;
			end if;
		end if;
	end process;

end Behavioral;

