----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:45:55 05/04/2012 
-- Design Name: 
-- Module Name:    sub_deco_32 - Behavioral 
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

entity sub_deco_32 is
    Port ( signo : in  STD_LOGIC;
           in_deco : in  STD_LOGIC_VECTOR (31 downto 0);
           out_sub : out  STD_LOGIC_vector(31 downto 0);
           out_signo : out  STD_LOGIC);
end sub_deco_32;

architecture Behavioral of sub_deco_32 is

signal q : std_logic_vector(31 downto 0);
signal deco_in : std_logic_vector(31 downto 0);
signal c : std_logic_vector(31 downto 0) := "00000000000000000000000000000001";

begin

deco_in <= not(in_deco);

process(deco_in,signo,c,in_deco) 
begin

	if(signo = '1') then
		q <= std_logic_vector( UNSIGNED(deco_in) + UNSIGNED(c) );
	elsif(signo = '0') then
		q <= in_deco;
	end if;
		
end process;

out_sub <= q;
out_signo <= signo;

end Behavioral;

