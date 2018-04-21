----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:37:10 04/27/2012 
-- Design Name: 
-- Module Name:    program_counter - Behavioral 
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

entity program_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in STD_LOGIC;
           in_addr : in  STD_LOGIC_VECTOR (6 downto 0);
           out_addr : out  STD_LOGIC_VECTOR (6 downto 0) := "0000000";
			  inc_pc : in std_logic;
			  load_pc : in std_logic);
end program_counter;

architecture Behavioral of program_counter is

signal addr_out1 : unsigned(6 downto 0) := "0000000";

begin

	process(clk,inc_pc,load_pc, reset) 
	begin
   
      if (reset = '0') then
         addr_out1 <= (others => '0');   
		elsif (rising_edge(clk)) then
			if(inc_pc = '1') then
				addr_out1 <= addr_out1 + 1;
			elsif(load_pc = '1') then
				addr_out1 <= unsigned(in_addr);
			end if;
		end if;
	end process;
	
	out_addr <= std_logic_vector(addr_out1);
	
end Behavioral;

