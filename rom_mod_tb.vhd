--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:59:07 04/27/2012
-- Design Name:   
-- Module Name:   C:/Users/1464/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/rom_mod_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rom_mod
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
 
ENTITY rom_mod_tb IS
END rom_mod_tb;
 
ARCHITECTURE behavior OF rom_mod_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rom_mod
    PORT(
         addr : IN  std_logic_vector(6 downto 0);
         out_oc : OUT  std_logic_vector(4 downto 0);
         out_dir : OUT  std_logic_vector(6 downto 0);
         out_data : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addr : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal out_oc : std_logic_vector(4 downto 0);
   signal out_dir : std_logic_vector(6 downto 0);
   signal out_data : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rom_mod PORT MAP (
          addr => addr,
          out_oc => out_oc,
          out_dir => out_dir,
          out_data => out_data
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		addr <= "0000000";
		
		wait for 100 ns;
		
		addr <= "0000001";

      -- insert stimulus here 

      wait;
   end process;

END;
