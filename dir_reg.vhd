----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:24:06 04/27/2012 
-- Design Name: 
-- Module Name:    dir_reg - Behavioral 
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

entity dir_reg is
    Port ( in_pm : in  STD_LOGIC_VECTOR (6 downto 0);
           load_dir : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           out_pc : out  STD_LOGIC_VECTOR (6 downto 0) := "0000000"
			 );
end dir_reg;

architecture Behavioral of dir_reg is

--signal clk_dir : std_logic;
--signal pc_out : STD_LOGIC_VECTOR (6 DOWNTO 0) := "0000000";

begin
	
	process(clk, in_pm,load_dir)
		begin
		if(rising_edge(clk)) then
			if load_dir='1' then
			out_pc <= in_pm;
			end if;
		end if;
	end process;
--out_pc <= pc_out;
end Behavioral;

