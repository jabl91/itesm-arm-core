----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:36:18 04/27/2012 
-- Design Name: 
-- Module Name:    rom_mod - Behavioral 
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

entity rom_mod is
    Port ( addr : in  STD_LOGIC_VECTOR (6 downto 0);
           out_oc : out  STD_LOGIC_VECTOR (4 downto 0);
           out_dir : out  STD_LOGIC_VECTOR (6 downto 0);
           cond_flags : out STD_LOGIC_VECTOR (3 downto 0);
           out_data : out  STD_LOGIC_VECTOR (3 downto 0)
			 );
end rom_mod;

architecture Behavioral of rom_mod is

signal rom_data : std_logic_vector(31 downto 0);
--Declaracion de un ROM de 128x32 bits
type romtable is array(0 to 127) of std_logic_vector(31 downto 0);

constant romdata : romtable := (


	X"00001701",X"80000800",X"80000800",X"00001C04",X"80000800",X"00000800",X"00000800",X"00001A04",
	X"00001B04",X"40000800",X"40000800",X"00000800",X"00000800",X"00000800",X"00000800",X"00000800",	--15
	X"00000800",X"00000800",X"00000800",X"00000100",X"00000000",X"00000000",X"00000000",X"00000000", 	--23
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000", 	--31
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",
	X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"00000000",X"0000FFFF"



	);


begin

	process(addr)
	begin
		rom_data <= romdata(to_integer(unsigned(addr)));
	end process;
	
	out_oc <= rom_data(12 downto 8);
	out_dir <=  rom_data(15 downto 13) & rom_data(7 downto 4);
	out_data <= rom_data(3 downto 0);
   cond_flags <= rom_data(31 downto 30) & "00";

end Behavioral;

