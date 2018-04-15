--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:44:51 05/06/2012
-- Design Name:   
-- Module Name:   C:/Users/rage/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/port_8_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: port_8
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
 
ENTITY port_8_tb IS
END port_8_tb;
 
ARCHITECTURE behavior OF port_8_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT port_8
    PORT(
         bus_in : IN  std_logic_vector(7 downto 0);
         port_in : IN  std_logic_vector(7 downto 0);
         sel : IN  std_logic;
         bus_out : OUT  std_logic_vector(7 downto 0);
         port_out : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bus_in : std_logic_vector(7 downto 0) := (others => '0');
   signal port_in : std_logic_vector(7 downto 0) := (others => '0');
   signal sel : std_logic := '0';

 	--Outputs
   signal bus_out : std_logic_vector(7 downto 0);
   signal port_out : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: port_8 PORT MAP (
          bus_in => bus_in,
          port_in => port_in,
          sel => sel,
          bus_out => bus_out,
          port_out => port_out
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
-- 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		bus_in <= "00010000";
		port_in <= "00100000";
		sel <= '0';
      wait for clock_period*10;
		sel <= '1';  
      wait;
   end process;

END;
