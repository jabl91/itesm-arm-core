--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:38:09 05/01/2012
-- Design Name:   
-- Module Name:   C:/Users/Beto/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/adder_TB.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_unsigned.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder_TB IS
END adder_TB;
 
ARCHITECTURE behavior OF adder_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         C_IN : IN  std_logic;
         ADD_SUB : IN  std_logic;
         C_OUT : OUT  std_logic;
         Q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal C_IN : std_logic := '0';
   signal ADD_SUB : std_logic := '0';

 	--Outputs
   signal C_OUT : std_logic;
   signal Q : std_logic_vector(7 downto 0) ;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
          A => A,
          B => B,
          C_IN => C_IN,
          ADD_SUB => ADD_SUB,
          C_OUT => C_OUT,
          Q => Q
        );

   -- Clock process definitions
--   clock_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
			B <= "00000011";
			A <= "00001111";

      wait for clock_period*10;
		
			ADD_SUB <= '1';
			
		wait for clock_period*10;
		
			A <= "00000011";
			B <= "00000000";

      -- insert stimulus here 

      wait;
   end process;

END;
