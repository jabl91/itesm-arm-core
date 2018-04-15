--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:25:58 05/04/2012
-- Design Name:   
-- Module Name:   C:/Users/rage/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/sub_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sub
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
 
ENTITY sub_tb IS
END sub_tb;
 
ARCHITECTURE behavior OF sub_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sub
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         sign : OUT  std_logic;
         q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal sign : std_logic;
   signal q : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sub PORT MAP (
          a => a,
          b => b,
          sign => sign,
          q => q
        );

   -- Clock process definitions
--   clock_process :process
--   begin
--		clock <= '0';
--		wait for clock_period/2;
--		clock <= '1';
--		wait for clock_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
      wait for 100 ns;	
		a <= "00000000";
		b <= "00000001";
      wait for clock_period*10;
		a <= "00011001";
		b <= "00000001";
      wait for clock_period*10;
		a <= "11111111";
		b <= "00000001";
      wait for clock_period*10;
		b <= "11111111";
		a <= "00000001";
      wait for clock_period*10;

      wait;
   end process;

END;
