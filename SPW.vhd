----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:21:50 04/29/2012 
-- Design Name: 
-- Module Name:    reg_b - Behavioral 
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

entity SPW is
    Port ( in_SPW : in  STD_LOGIC_VECTOR (4 downto 0);
           out_SPW : out  STD_LOGIC_VECTOR (4 downto 0) := "00000";
           load_SPW : in  STD_LOGIC;
			  load_CJNE		:in STD_LOGIC;
           reset        : in STD_LOGIC;
			  clk	:	STD_LOGIC);
end SPW;

architecture Behavioral of SPW is

--signal clk_b : std_logic;

begin

--	clk_b <= clk and load_a;

	process(clk,reset)
		begin
         if (reset = '0') then
            out_SPW <= (others => '0');
			elsif (rising_edge(clk)) then
				if load_SPW = '1' then
					out_SPW <= in_SPW;
				end if;
				if load_CJNE = '1' then
					out_SPW(1) <= in_SPW(1);
				end if;
			end if;
	end process;


end Behavioral;
