----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:20:21 05/04/2012 
-- Design Name: 
-- Module Name:    restador - Behavioral 
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

entity restador is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           sign : out  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (7 downto 0));
end restador;

architecture Behavioral of restador is

component sub_deco is
    Port ( signo : in  STD_LOGIC;
           in_deco : in  STD_LOGIC_VECTOR (7 downto 0);
           out_sub : out  STD_LOGIC_vector(7 downto 0);
           out_signo : out  STD_LOGIC);
end component;

component sub is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           sign : out  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal signo1 : std_logic;
signal q1 : std_logic_vector(7 downto 0);

begin

sub1: sub
	port map(
	a => a,
	b => b,
	sign => signo1,
	q => q1
	);
	
deco1: sub_deco 
	port map(
	signo => signo1,
	in_deco => q1,
	out_sub => q,
	out_signo => sign
	);

end Behavioral;

