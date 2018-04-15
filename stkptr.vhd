----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:12 04/27/2012 
-- Design Name: 
-- Module Name:    stkptr - Behavioral 
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

entity stkptr is
    Port ( clk : in  STD_LOGIC;
           dec_stack : in  STD_LOGIC;
			  inc_stack : in STD_LOGIC;
           out_dir : out  STD_LOGIC_VECTOR (4 downto 0) := "11111");
end stkptr;

architecture Behavioral of stkptr is

--signal clk_stack : std_logic;
signal stack_dir : unsigned (4 downto 0) := "11111";

begin

--clk_stack <= clk and dec_stack;

	process(clk) 
	begin
		if(rising_edge(clk)) then
			if dec_stack = '1' then
			stack_dir <= stack_dir - 1;
			end if;
			if inc_stack = '1' then
			stack_dir <= stack_dir +1;
			end if;
		end if;
	end process;
	
	out_dir <= std_logic_vector(stack_dir);

end Behavioral;

