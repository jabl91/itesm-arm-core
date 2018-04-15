--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:16:29 04/27/2012
-- Design Name:   
-- Module Name:   C:/Users/1464/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/program_memory_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Program_Memory
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
 
ENTITY program_memory_tb IS
END program_memory_tb;
 
ARCHITECTURE behavior OF program_memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Program_Memory
    PORT(
         in_addr_pc : IN  std_logic_vector(6 downto 0);
         out_uinst : OUT  std_logic_vector(4 downto 0);
         out_addr : OUT  std_logic_vector(6 downto 0);
         out_data : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         load : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_addr_pc : std_logic_vector(6 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal load : std_logic := '0';

 	--Outputs
   signal out_uinst : std_logic_vector(4 downto 0);
   signal out_addr : std_logic_vector(6 downto 0);
   signal out_data : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Program_Memory PORT MAP (
          in_addr_pc => in_addr_pc,
          out_uinst => out_uinst,
          out_addr => out_addr,
          out_data => out_data,
          clk => clk,
          load => load
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

		load <= '0';
		
		wait for clk_period*2;

		in_addr_pc <= "0000000";
		
		wait for 100 ns;
		
		load <= '1';
		
		wait for clk_period*2;
		
		in_addr_pc <= "0000001";
		
		wait for clk_period*2;
		
		load <= '0';
		
		in_addr_pc <= "0000000";
		
		wait for clk_period*2;
		
		load <= '1';
	
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
