----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:26:26 05/07/2012 
-- Design Name: 
-- Module Name:    PC_MODULE - Behavioral 
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

entity PC_MODULE is
    Port ( ram_in : in  STD_LOGIC_VECTOR (6 downto 0);
           pm_in : in  STD_LOGIC_VECTOR (6 downto 0);
			  clk : in std_logic;
           reset : in std_logic;
			  sel :	in std_logic;
           load_pc : in  STD_LOGIC;
           inc_pc : in  STD_LOGIC;
           pc_out : out  STD_LOGIC_VECTOR (6 downto 0));
end PC_MODULE;

architecture Behavioral of PC_MODULE is

component program_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in std_logic;
           in_addr : in  STD_LOGIC_VECTOR (6 downto 0);
           out_addr : out  STD_LOGIC_VECTOR (6 downto 0) := "0000000";
			  inc_pc : in std_logic;
			  load_pc : in std_logic);
end component;

signal pc_in : std_logic_vector (6 downto 0);

begin

	process(sel,ram_in,pm_in)
	begin
		if(sel = '0') then
			pc_in <= ram_in;
		elsif(sel = '1') then
			pc_in <= pm_in;
		end if;
	end process;
	
	PC_X : program_counter
		port map(clk, reset, pc_in, pc_out, inc_pc, load_pc);

end Behavioral;

