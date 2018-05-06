----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:40 04/29/2012 
-- Design Name: 
-- Module Name:    RAM_Memory - Behavioral 
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

entity RAM_Memory is
			Port ( --in_addr_mux : in  STD_LOGIC_VECTOR (4 downto 0);
					--in_data : in STD_LOGIC_VECTOR (15 downto 0);
					out_data : out  STD_LOGIC_VECTOR (7 downto 0);
					clk : in  STD_LOGIC;
					PC : in STD_LOGIC_VECTOR (6 downto 0) := "0000000";
					regA : in STD_LOGIC_VECTOR (7 downto 0);
					regB : in STD_LOGIC_VECTOR (4 downto 0);
					SPTR : in STD_LOGIC_VECTOR (4 downto 0);
					sel_mbr : in STD_LOGIC;
					sel_mar :in STD_LOGIC;
					CE : in STD_LOGIC;
					WE : in  STD_LOGIC);
end RAM_Memory;

architecture Behavioral of RAM_Memory is

component ram_mod is
    Port ( 	adrr : in  STD_LOGIC_VECTOR (4 downto 0);
				datain_ram : in STD_LOGIC_VECTOR (7 downto 0);
				dataout_ram :out STD_LOGIC_VECTOR (7 downto 0);
				clk : in STD_LOGIC;
				CE : in STD_LOGIC;
				WE : in STD_LOGIC);
end component;

component MBR_mod is
   Port ( 	datain : in  STD_LOGIC_VECTOR (7 downto 0);
				dataout : out  STD_LOGIC_VECTOR (7 downto 0):= "00000000";
				load_data : in std_logic;
				clk : in std_logic);
end component;

component Mux_MBR is
   port(	 		PC : in std_logic_vector (6 downto 0);
					regA: in std_logic_vector (7 downto 0);
					sel: in std_logic;
					output : out std_logic_vector (7 downto 0)
		);
end component;

component MAR_mod is
   Port ( 		addrin : in  STD_LOGIC_VECTOR (4 downto 0);
				addrout : out  STD_LOGIC_VECTOR (4 downto 0):= "00000";
				load_addr : in std_logic;
				clk : in std_logic);
end component;

component Mux_MAR is
   port(	 		regB : in std_logic_vector (4 downto 0);
					SPTR: in std_logic_vector (4 downto 0);
					sel: in std_logic;
					output : out std_logic_vector (4 downto 0) := "00000"
		);
end component;

signal in_MBR : std_logic_vector (7 downto 0) ;
signal out_MBR : std_logic_vector (7 downto 0):= "00000000";
signal in_addr_MAR : std_logic_vector (4 downto 0);
signal out_addr_MAR : std_logic_vector (4 downto 0):= "00000";

begin

RAM : ram_mod
	port map (
		adrr => out_addr_MAR,
		datain_ram => out_MBR,
		dataout_ram => out_data,
		clk => clk,
		CE => CE,
		WE => WE
		);
		
MBR : MBR_mod
	port map (
		datain => in_MBR,
		dataout => out_MBR,
		clk => clk,
		load_data => CE
		);

MUX : Mux_MBR
	port map (
		PC => PC,
		regA => regA,
		sel => sel_mbr,
		output => in_MBR
		);

MAR : MAR_mod
	port map (
		addrin => in_addr_MAR,
		addrout => out_addr_MAR,
		clk => clk,
		load_addr => CE
		);

MUX2 : Mux_MAR
	port map (
		regB => regB,
		SPTR => SPTR,
		sel => sel_mar,
		output => in_addr_MAR
		);
		

		
end Behavioral;

