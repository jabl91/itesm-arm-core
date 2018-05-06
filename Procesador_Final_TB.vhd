--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:29:49 05/08/2012
-- Design Name:   
-- Module Name:   C:/Users/Beto/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/Procesador_Final_TB.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Procesador_4_bits
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
 
ENTITY Procesador_Final_TB IS
END Procesador_Final_TB;
 
ARCHITECTURE behavior OF Procesador_Final_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Procesador_32_bits
    PORT(
         clk : IN  std_logic;
         reset: IN std_logic;
         PORT_A_IN : IN  std_logic_vector(7 downto 0);
         PORT_B_IN : IN  std_logic_vector(7 downto 0);
         PORT_C_IN : IN  std_logic_vector(7 downto 0);
         PORT_A_OUT : OUT  std_logic_vector(7 downto 0) := (others => '0');
         PORT_B_OUT : OUT  std_logic_vector(7 downto 0):= (others => '0');
         PORT_C_OUT : OUT  std_logic_vector(7 downto 0) := (others => '0')
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '1';
   signal PORT_A_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal PORT_B_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal PORT_C_IN : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal PORT_A_OUT : std_logic_vector(7 downto 0):= (others => '0');
   signal PORT_B_OUT : std_logic_vector(7 downto 0):= (others => '0');
   signal PORT_C_OUT : std_logic_vector(7 downto 0):= (others => '0');

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Procesador_32_bits PORT MAP (
          clk => clk,
          reset => reset,
          PORT_A_IN => PORT_A_IN,
          PORT_B_IN => PORT_B_IN,
          PORT_C_IN => PORT_C_IN,
          PORT_A_OUT => PORT_A_OUT,
          PORT_B_OUT => PORT_B_OUT,
          PORT_C_OUT => PORT_C_OUT
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
      
      reset <= '1';
      
      wait for 100 ns;	
		
      wait for clk_period*50;
      
      wait for clk_period*100;
      
      reset <= '0';
      
      wait for clk_period*100;
      
      reset <= '1';
      
      

      -- insert stimulus here 

      wait;
   end process;

END;
