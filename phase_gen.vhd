----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:05 03/17/2012 
-- Design Name: 
-- Module Name:    phase_gen - Behavioral 
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

entity phase_gen is
    Port ( clear_phase : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in STD_LOGIC;
			  out_phase : out std_logic_vector(7 downto 0) := (others => '0'));
end phase_gen;

architecture Behavioral of phase_gen is

signal phase_out : std_logic_vector(7 downto 0) := "00000001";

begin


	process(clk,clear_phase,reset)
	begin
		if(reset = '0') then
         phase_out <= "00000001";
      elsif(clear_phase = '0') then
			phase_out <= "00000001";
		elsif falling_edge(clk) then
			if (phase_out = "00000000") then
				phase_out <= "00000001";
			else
				phase_out <= phase_out(6) & phase_out(5 downto 0) & phase_out(7);
			end if;
		end if;
	end process;

	out_phase <= phase_out;

end Behavioral;

