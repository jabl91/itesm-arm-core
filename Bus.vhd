----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:09:53 05/06/2012 
-- Design Name: 
-- Module Name:    data_Bus - Behavioral 
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

entity data_bus is
    Port ( pm        : in  STD_LOGIC_VECTOR (3 downto 0);
           alu       : in  STD_LOGIC_VECTOR (31 downto 0);
           a         : in  STD_LOGIC_VECTOR (31 downto 0);
           b         : in  STD_LOGIC_VECTOR (31 downto 0);
           port_a    : in  STD_LOGIC_VECTOR (7 downto 0);
           port_b    : in  STD_LOGIC_VECTOR (7 downto 0);
           port_c    : in  STD_LOGIC_VECTOR (7 downto 0);
			  sel       : in  STD_LOGIC_VECTOR (4 downto 0);
           q         : out STD_LOGIC_VECTOR (31 downto 0));
end data_Bus;

architecture Behavioral of data_bus is

signal out_q : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');

begin

	process (pm,alu,a,b,port_a,port_b,port_c,sel)
	begin
		case sel is
      
			when "00000"   => out_q <= (a);
			when "00001"   => out_q <= (b);
			when "00010"   => out_q <= ("00000000" & "00000000" & "00000000" & "0000" & pm);
			when "00011"   => out_q <= ("00000000" & "00000000" & "00000000" & port_a);
			when "00100"   => out_q <= ("00000000" & "00000000" & "00000000" & port_b);
			when "00101"   => out_q <= ("00000000" & "00000000" & "00000000" & port_c);
			when "00110"   => out_q <= (alu);
			when others    => out_q <= ("00000000" & "00000000" & "00000000" & "00000000");
         
		end case;
	end process;
   
	q <= out_q;
	
end Behavioral;

