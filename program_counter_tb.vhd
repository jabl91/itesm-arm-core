--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:02:40 04/27/2012
-- Design Name:   
-- Module Name:   C:/Users/1464/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/program_counter_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: program_counter
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
 
ENTITY program_counter_tb IS
END program_counter_tb;
 
ARCHITECTURE behavior OF program_counter_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT program_counter
    PORT(
         clk : IN  std_logic;
         in_addr : IN  std_logic_vector(6 downto 0);
         out_addr : OUT  std_logic_vector(6 downto 0);
         inc_pc : IN  std_logic;
         load_pc : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal in_addr : std_logic_vector(6 downto 0) := (others => '0');
   signal inc_pc : std_logic := '0';
   signal load_pc : std_logic := '0';

 	--Outputs
   signal out_addr : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: program_counter PORT MAP (
          clk => clk,
          in_addr => in_addr,
          out_addr => out_addr,
          inc_pc => inc_pc,
          load_pc => load_pc
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		wait for clk_period*5;
		in_addr <= "0000111";
		load_pc <= '1';
		wait for clk_period*5;
		load_pc <= '0';
		inc_pc <= '1';
		


      wait;
   end process;

END;
