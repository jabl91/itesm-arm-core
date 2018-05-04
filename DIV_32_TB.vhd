--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:28:49 05/04/2012
-- Design Name:   
-- Module Name:   C:/Users/Beto/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/DIV_TB.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DIV
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

library work;

use work.ARITH_PLUS.all;

 
ENTITY DIV_32_TB IS
END DIV_32_TB;
 
ARCHITECTURE behavior OF DIV_32_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DIV_32
    PORT(
         A : IN  	std_logic_vector	(15 downto 0);
         B : IN  	std_logic_vector	(15 downto 0);
         Q : OUT  std_logic_vector	(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(15 downto 0) := (others => '0');
   signal B : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DIV_32 PORT MAP (
          A => A,
          B => B,
          Q => Q
        );

   -- Clock process definitions
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
      -- hold reset state for 100 ns.
      wait for 100 ns;

			A<= "0000000000000010";-- resultado puro 0
			B<= "0000000000001010";

      wait for clock_period*10;
			A<= "0000000000000000";--resultado 0
			B<= "0000000000001010";

      wait for clock_period*10;
			A<= "0000000000000010";--resultado 0
			B<= "0000000000000000";

      wait for clock_period*10;
			A<= "0000000000000010";--resultado 1
			B<= "0000000000000011";

      wait for clock_period*10;
			A<= "0000000000001111";--resultado 5
			B<= "0000000000000011";
      -- insert stimulus here 

      wait;
   end process;

END;
