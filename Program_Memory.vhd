----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:19:46 04/27/2012 
-- Design Name: 
-- Module Name:    Program_Memory - Behavioral 
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

entity Program_Memory is
    Port ( in_addr_pc : in  STD_LOGIC_VECTOR (6 downto 0);
           out_uinst : out  STD_LOGIC_VECTOR (4 downto 0):="00000";
           out_addr : out  STD_LOGIC_VECTOR (6 downto 0):="0000000";
           out_data : out  STD_LOGIC_VECTOR (3 downto 0):="0000";
           clk : in  STD_LOGIC;
           load : in  STD_LOGIC);
end Program_Memory;

architecture Behavioral of Program_Memory is

component rom_mod is
    Port ( addr : in  STD_LOGIC_VECTOR (6 downto 0);
           out_oc : out  STD_LOGIC_VECTOR (4 downto 0) ;
           out_dir : out  STD_LOGIC_VECTOR (6 downto 0);
           out_data : out  STD_LOGIC_VECTOR (3 downto 0)
			);
end component;

component inst_reg is
    Port ( in_pm : in  STD_LOGIC_VECTOR (3 downto 0);
           out_bus : out  STD_LOGIC_VECTOR (3 downto 0);
			  load_inst : in std_logic;
			  clk : in std_logic);
end component;

component dir_reg is
    Port ( in_pm : in  STD_LOGIC_VECTOR (6 downto 0);
           load_dir : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           out_pc : out  STD_LOGIC_VECTOR (6 downto 0)
			 );
end component;

component oc_reg is
    Port ( in_pm : in  STD_LOGIC_VECTOR (4 downto 0);
           out_uc : out  STD_LOGIC_VECTOR (4 downto 0);
			  load_oc : in std_logic;
			  clk : in std_logic);
end component;

--attribute KEEP : boolean;
--
--
signal rom_oc : std_logic_vector (4 downto 0);
signal rom_dir : std_logic_vector (6 downto 0);
signal rom_data : std_logic_vector (3 downto 0);
--
--attribute KEEP of rom_oc :signal is true;
--attribute KEEP of rom_dir :signal is true;
--attribute KEEP of rom_data :signal is true;


begin

ROM : rom_mod
	port map (
		addr => in_addr_pc,
		out_oc => rom_oc,
		out_dir => rom_dir,
		out_data => rom_data
		);
		
INST : inst_reg
	port map (
		in_pm => rom_data,
		out_bus => out_data,
		load_inst => load,
		clk => clk
		);
	
DIR : dir_reg
	port map (
		in_pm => rom_dir,
		load_dir => load,
		clk => clk,
		out_pc => out_addr
		);
	
OC : oc_reg
	port map (
		in_pm => rom_oc,
		out_uc => out_uinst,
		load_oc => load,
		clk => clk
		);

end Behavioral;

