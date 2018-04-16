----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:48:19 04/27/2012 
-- Design Name: 
-- Module Name:    reg_a - Behavioral 
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

entity reg_a is
   Port ( 
            in_bus   : in     STD_LOGIC_VECTOR (7 downto 0):= (others => '0');
            in_ram   : in     STD_LOGIC_VECTOR (7 downto 0);
            load_a   : in     STD_LOGIC;
            sel      : in     STD_LOGIC;  -- '1' ram   '0' bus
            a_out    : out    STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
            clk      :        STD_LOGIC
         );
end reg_a;

architecture Behavioral of reg_a is

signal a : STD_LOGIC_VECTOR(31 DOWNTO 0) :=(others => '0');

begin

process(clk)
begin

   if (rising_edge(clk)) then
      if load_a = '1' then
      
         if sel = '1' then
            a <= ("00000000" & "00000000" & "00000000" & in_ram);
         elsif sel = '0' then
            a <= ("00000000" & "00000000" & "00000000" & in_bus);
         end if;
         
      end if;
   end if;
      
end process;

a_out <= a;

end Behavioral;

