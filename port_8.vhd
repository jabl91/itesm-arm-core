----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:37:28 05/06/2012 
-- Design Name: 
-- Module Name:    port_8 - Behavioral 
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

entity port_8 is
    Port ( bus_in : in  STD_LOGIC_VECTOR (7 downto 0);
           port_in : in  STD_LOGIC_VECTOR (7 downto 0);
           sel : in  STD_LOGIC;
			  clk : in std_logic;
			  enable_port : in std_logic_vector(1 downto 0);
           bus_out : out  STD_LOGIC_VECTOR (7 downto 0);
           port_out : out  STD_LOGIC_VECTOR (7 downto 0));
end port_8;

architecture Behavioral of port_8 is

signal b : STD_LOGIC_VECTOR (7 downto 0);
signal p : STD_LOGIC_VECTOR (7 downto 0);
signal a : STD_LOGIC_VECTOR (7 downto 0) := "00000000";

begin

	b <= bus_in;
	p <= port_in;
	process (sel,b,p,clk)
	begin
	
		if (rising_edge(clk) and enable_port = "10") then
			if sel = '1' then
				a <= p;
			elsif sel = '0' then
				a <= b;
			end if;
		end if;
		
	end process;
	bus_out <= a;
	port_out <= a;

end Behavioral;

