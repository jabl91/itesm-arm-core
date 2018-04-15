--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:01:03 05/06/2012
-- Design Name:   
-- Module Name:   C:/Users/rage/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/data_bus_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: data_bus
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
 
ENTITY data_bus_tb IS
END data_bus_tb;
 
ARCHITECTURE behavior OF data_bus_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT data_bus
    PORT(
         pm : IN  std_logic_vector(3 downto 0);
         alu : IN  std_logic_vector(7 downto 0);
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         port_a : IN  std_logic_vector(3 downto 0);
         port_b : IN  std_logic_vector(3 downto 0);
         port_c : IN  std_logic_vector(7 downto 0);
         sel : IN  std_logic_vector(2 downto 0);
         q : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pm : std_logic_vector(3 downto 0) := (others => '0');
   signal alu : std_logic_vector(7 downto 0) := (others => '0');
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');
   signal port_a : std_logic_vector(3 downto 0) := (others => '0');
   signal port_b : std_logic_vector(3 downto 0) := (others => '0');
   signal port_c : std_logic_vector(7 downto 0) := (others => '0');
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_bus PORT MAP (
          pm => pm,
          alu => alu,
          a => a,
          b => b,
          port_a => port_a,
          port_b => port_b,
          port_c => port_c,
          sel => sel,
          q => q
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
      -- hold reset state for 100 ns.
      wait for 100 ns;
		sel <= "000";
		wait for clock_period*2;
		a <= "00000000";
		b <= "00000001";
		pm <= "0010";
		port_a <= "0100";
		port_b <= "1000";
		port_c <= "00010000";
		alu <= "00100000";		
      wait for clock_period*10;
		sel <= "001";
      wait for clock_period*10;
		sel <= "010";
      wait for clock_period*10;
		sel <= "011";
      wait for clock_period*10;
		sel <= "100";
      wait for clock_period*10;
		sel <= "101";
      wait for clock_period*10;
		sel <= "110";
      -- insert stimulus here 
      wait;
   end process;

END;
