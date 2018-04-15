--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:00:45 05/04/2012
-- Design Name:   
-- Module Name:   C:/Users/rage/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/sub_deco_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: sub_deco
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
 
ENTITY sub_deco_tb IS
END sub_deco_tb;
 
ARCHITECTURE behavior OF sub_deco_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT sub_deco
    PORT(
         signo : IN  std_logic;
         in_deco : IN  std_logic_vector(7 downto 0);
         out_sub : OUT  std_logic_vector(7 downto 0);
         out_signo : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal signo : std_logic := '0';
   signal in_deco : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal out_sub : std_logic_vector(7 downto 0);
   signal out_signo : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: sub_deco PORT MAP (
          signo => signo,
          in_deco => in_deco,
          out_sub => out_sub,
          out_signo => out_signo
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		signo <= '1';
		in_deco <= "00000010";

      wait for clock_period*10;
		
		signo <= '0';
		in_deco <= "00000010";
		
		wait for clock_period*10;
		
		signo <= '0';
		in_deco <= "11111111";

      wait;
   end process;

END;
