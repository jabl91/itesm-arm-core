--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:41:38 05/07/2012
-- Design Name:   
-- Module Name:   C:/Users/1464/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/pc_module_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC_MODULE
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
 
ENTITY pc_module_tb IS
END pc_module_tb;
 
ARCHITECTURE behavior OF pc_module_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC_MODULE
    PORT(
         ram_in : IN  std_logic_vector(6 downto 0);
         pm_in : IN  std_logic_vector(6 downto 0);
         clk : IN  std_logic;
         sel : IN  std_logic;
         load_pc : IN  std_logic;
         inc_pc : IN  std_logic;
         pc_out : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ram_in : std_logic_vector(6 downto 0) := (others => '0');
   signal pm_in : std_logic_vector(6 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal sel : std_logic := '0';
   signal load_pc : std_logic := '0';
   signal inc_pc : std_logic := '0';

 	--Outputs
   signal pc_out : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC_MODULE PORT MAP (
          ram_in => ram_in,
          pm_in => pm_in,
          clk => clk,
          sel => sel,
          load_pc => load_pc,
          inc_pc => inc_pc,
          pc_out => pc_out
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
		ram_in <= "1111111";
		pm_in <= "1010101";
		inc_pc <= '1';

      wait for clk_period*10;
		
		inc_pc <= '0';
		load_pc <= '1';
		
		wait for clk_period*2;
		
		sel <= '1';
		
		wait for clk_period*2;
		
		sel <= '0';

      -- insert stimulus here 

      wait;
   end process;

END;
