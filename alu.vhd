----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:31:42 05/01/2012 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu is
    Port ( A_F 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           B_F 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
--			  c_in 	: in STD_LOGIC;
			  --add_sub : in STD_LOGIC;
			  --mul_div : in STD_LOGIC;
--			  r_l 	: in STD_LOGIC;
           spw_in : in  STD_LOGIC_VECTOR(4 DOWNTO 0) := "00000"; -- z,half-carry,carry,igualdad,negativos
			  spw_out : out std_logic_vector (4 downto 0) := "00000";
           q 		: out  STD_LOGIC_VECTOR(7 DOWNTO 0);
			  sel 	: in STD_LOGIC_VECTOR(3 DOWNTO 0));
end alu;

architecture Behavioral of alu is

-- componentes logicos

component and_8
	Port ( a 	: in  STD_LOGIC_VECTOR (7 DOWNTO 0);
			 b 	: in  STD_LOGIC_VECTOR (7 DOWNTO 0);
			 q 	: out STD_LOGIC_VECTOR (7 DOWNTO 0));
end component;

component or_8
    Port ( a : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           b : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           q : out STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

component xor_8
    Port ( a 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           b 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           q 		: out STD_LOGIC_VECTOR(7 DOWNTO 0);
			  equal 	: out STD_LOGIC);
end component;

component not_8
    Port ( a : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           q : out STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

component MUL
    Port(
				A 	: in 	STD_LOGIC_VECTOR(3 downto 0);
				B 	: in 	STD_LOGIC_VECTOR (3 downto 0);
				Q 	: out STD_LOGIC_VECTOR (7 downto 0)
			);
end component;

component DIV
    Port(
				A 			: in 	STD_LOGIC_VECTOR(3 downto 0);
				B 			: in 	STD_LOGIC_VECTOR (3 downto 0);
				Q 			: out STD_LOGIC_VECTOR (7 downto 0)
			);
end component;

--componentes aritmeticos

component SUM is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           cin : in  STD_LOGIC;
           cout : out  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component restador is
    Port ( a : in  STD_LOGIC_VECTOR (7 downto 0);
           b : in  STD_LOGIC_VECTOR (7 downto 0);
           sign : out  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

--componentes miscelaneas

component shift_l
    Port ( a 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
			  c_in 	: in 	STD_LOGIC;
			  c_out 	: out STD_LOGIC;
           q 		: out STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

component shift_r
    Port ( a 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
			  c_in 	: in 	STD_LOGIC;
			  c_out 	: out STD_LOGIC;
           q 		: out STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

component swap
    Port ( a : in  	STD_LOGIC_VECTOR(7 DOWNTO 0);
           q : out  	STD_LOGIC_VECTOR(7 DOWNTO 0));
end component;

signal q_and 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_or 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_xor 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_not 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_shift_l 	: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_shift_r 	: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_swap 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_MUL 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_DIV 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal out_q 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_rest 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal q_sum 		: STD_LOGIC_VECTOR(7 DOWNTO 0) 	:= (others => '0');
signal out_c 		: STD_LOGIC 							:= '0';
signal c_sum 		: STD_LOGIC 				 			:= '0';
signal c_sl 		: STD_LOGIC 							:= '0';
signal c_sr 		: STD_LOGIC 							:= '0';
signal signox		: std_logic 							:= '0';
signal zero			: STD_LOGIC								:= '0';
signal equal		: STD_LOGIC								:= '0';

begin

G1: and_8 		port map 	(A_F,B_F,q => q_and);
G2: or_8 		port map  	(A_F,B_F,q => q_or);
G3: xor_8 		port map 	(A_F,B_F,q_xor,equal => equal);
G4: not_8 		port map 	(A_F,q => q_not);
G5: SUM			port map		(A_F,B_F,spw_in(2),c_sum,q_sum);
G6: shift_l 	port map 	(A_F,spw_in(2),c_sl,q => q_shift_l); 
G7: shift_r 	port map 	(A_F,spw_in(2),c_sr,q => q_shift_r); 
G8: swap			port map 	(A_F,q => q_swap);
G9: MUL 			port map 	(A => A_F(3 downto 0),B => B_F(3 downto 0),Q => q_MUL);
G10: DIV 		port map 	(A => A_F(3 downto 0),B => B_F(3 downto 0),Q=>q_DIV);
G11: restador  port map 	(A_F,B_F,signox,q_rest);

process (A_F,B_F,sel,q_and,q_or,q_xor,q_not,q_sum,c_sum,q_shift_l,c_sl,q_shift_r,c_sr,q_swap,q_MUL,q_DIV,q_rest)
begin 
	case sel is
		when "0000" 	=> out_q <= q_and;
		when "0001" 	=> out_q <= q_or;
		when "0010" 	=> out_q <= q_xor;
		when "0011" 	=> out_q <= q_not;
		when "0100" 	=> out_q <= q_sum;
								out_c <= c_sum;
		when "0101" 	=> out_q <= q_shift_l;
								out_c <= c_sl;		
		when "0110"    => out_q <= q_shift_r;
								out_c <= c_sr;
		when "0111" 	=> out_q <= q_swap;
		when "1000"   	=> out_q <= q_MUL;
		when "1001" 	=> out_q <= q_DIV;
		when "1010"		=> out_q <= q_rest;
		when OTHERS		=> out_q <= "00000000";
	end case;
end process;

process(out_q)
begin
if out_q = "00000000" then
	zero <= '1';
else
	zero <= '0';
end if;
end process;	

q <= out_q;
spw_out(4) <= zero;
spw_out(3) <= out_q(7) or out_q(6) or out_q(5) or out_q(4);
spw_out(2) <= out_c;
spw_out(1) <= equal;
spw_out(0) <= signox;



end Behavioral;

