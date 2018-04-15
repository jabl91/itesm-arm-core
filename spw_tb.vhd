--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:56:58 05/09/2012
-- Design Name:   
-- Module Name:   C:/Users/Beto/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/spw_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SPW
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
 
ENTITY spw_tb IS
END spw_tb;
 
ARCHITECTURE behavior OF spw_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPW
    PORT(
         in_SPW : IN  std_logic_vector(4 downto 0);
         out_SPW : OUT  std_logic_vector(4 downto 0);
         load_SPW : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal in_SPW : std_logic_vector(4 downto 0) := (others => '0');
   signal load_SPW : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal out_SPW : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPW PORT MAP (
          in_SPW => in_SPW,
          out_SPW => out_SPW,
          load_SPW => load_SPW,
          clk => clk
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
		
		in_spw <= "10101";

      wait for clk_period*10;

      -- insert stimulus here 
		
		load_spw <= '1';
		
		wait for clk_period*2;
		
		in_spw <= "11111";
		
		wait for clk_period*2;
		
		load_spw <= '0';
		in_spw <= "10001";

      wait;
   end process;

END;
