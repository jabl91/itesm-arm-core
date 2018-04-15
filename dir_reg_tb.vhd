--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:30:13 04/27/2012
-- Design Name:   
-- Module Name:   C:/Users/1464/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/dir_reg_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dir_reg
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
 
ENTITY dir_reg_tb IS
END dir_reg_tb;
 
ARCHITECTURE behavior OF dir_reg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dir_reg
    PORT(
         in_pm : IN  std_logic_vector(6 downto 0);
         load_dir : IN  std_logic;
         clk : IN  std_logic;
         out_pc : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal in_pm : std_logic_vector(6 downto 0) := (others => '0');
   signal load_dir : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal out_pc : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dir_reg PORT MAP (
          in_pm => in_pm,
          load_dir => load_dir,
          clk => clk,
          out_pc => out_pc
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

      in_pm <= "0000001";

      wait for clk_period*10;
		
		load_dir <= '1';
		
		wait for clk_period*2;
		
		load_dir <= '0';
		
		in_pm <= "0000100";

      wait;
   end process;

END;
