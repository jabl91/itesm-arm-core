--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:43:35 05/05/2012
-- Design Name:   
-- Module Name:   C:/Users/rage/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/alu_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_tb IS
END alu_tb;
 
ARCHITECTURE behavior OF alu_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 component alu is
    Port ( A_F 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           B_F 		: in  STD_LOGIC_VECTOR(7 DOWNTO 0);
--			  c_in 	: in STD_LOGIC;
			  --add_sub : in STD_LOGIC;
			  --mul_div : in STD_LOGIC;
--			  r_l 	: in STD_LOGIC;
           spw_in : in  STD_LOGIC_VECTOR(4 DOWNTO 0); -- z,half-carry,carry,igualdad,negativos
			  spw_out : out std_logic_vector (4 downto 0) := "00000";
           q 		: out  STD_LOGIC_VECTOR(7 DOWNTO 0);
			  sel 	: in STD_LOGIC_VECTOR(3 DOWNTO 0));
end component;
    

   --Inputs
   signal A_F : std_logic_vector(7 downto 0) := (others => '0');
   signal B_F : std_logic_vector(7 downto 0) := (others => '0');
   signal sel : std_logic_vector(3 downto 0) := (others => '0');
	signal spw_in : STD_LOGIC_VECTOR(4 DOWNTO 0); -- z,half-carry,carry,igualdad,negativos
   

 	--Outputs
   signal q : std_logic_vector(7 downto 0);
	signal spw_out : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          A_F => A_F,
          B_F => B_F,
          spw_in => spw_in,
			 spw_out => spw_out,
          q => q,
          sel => sel
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		spw_in <= "00000";
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
		A_F <= 		"00010101";
		B_F <= 		"00000010";
		wait for clock_period*2;
		sel <= 	"0000";
      wait for clock_period*2;
		sel <=  	"0001";
      wait for clock_period*2;
		sel <=  	"0010";
      wait for clock_period*2;
		sel <=  	"0011";
      wait for clock_period*2;
		sel <=  	"0100";
		wait for clock_period*2;
		sel <=  	"0101";
      wait for clock_period*2;
		sel <=  	"0110";
      wait for clock_period*2;
		sel <=  	"0111";
      wait for clock_period*2;
		sel <= 	"1000";
		wait for clock_period*2;
		sel <= 	"1001";
		wait for clock_period*2;
		sel <= 	"1010";
      wait for clock_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
