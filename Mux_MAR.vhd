----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:06:22 04/29/2012 
-- Design Name: 
-- Module Name:    Mux_MAR - Behavioral 
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

entity Mux_MAR is

		port(	 PM : in std_logic_vector (4 downto 0);
					SPTR: in std_logic_vector (4 downto 0);
					sel: in std_logic;
					output : out std_logic_vector (4 downto 0)
		);
end Mux_MAR;

architecture Behavioral of Mux_MAR is

begin

process (sel,PM,SPTR)
	begin
			if sel = '0' then
			output <=PM;
			end if;

			if sel = '1' then
			output <= SPTR;
			end if;
end process;


end Behavioral;


