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

entity reg_b is
   Port (
            in_bus   : in     STD_LOGIC_VECTOR (31 downto 0);
            out_bus  : out    STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
            load_b   : in     STD_LOGIC;
            clk      :        STD_LOGIC
         );
end reg_b;

architecture Behavioral of reg_b is

--signal clk_b : std_logic;

begin

--clk_b <= clk and load_a;

process(clk)
   begin
      if (rising_edge(clk)) then
         if load_b = '1' then
         out_bus <= (in_bus);
         end if;
      end if;
end process;


end Behavioral;
