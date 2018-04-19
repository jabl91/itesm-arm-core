--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:44:59 04/18/2018
-- Design Name:   
-- Module Name:   C:/Users/brj3mx/Desktop/Procesador 4 bits/ARM_Cortex_32_Bits/RegisterBank_TB.vhd
-- Project Name:  ARM_Cortex_32_Bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterBank
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
USE ieee.numeric_std.ALL;
 
ENTITY RegisterBank_TB IS
END RegisterBank_TB;
 
ARCHITECTURE behavior OF RegisterBank_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterBank
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic_vector(31 downto 0);
         sel : IN  std_logic_vector(3 downto 0);
         load_en : IN  std_logic;
         data_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic_vector(31 downto 0) := (others => '0');
   signal sel : std_logic_vector(3 downto 0) := (others => '0');
   signal load_en : std_logic := '0';

 	--Outputs
   signal data_out : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterBank PORT MAP (
          clk => clk,
          data_in => data_in,
          sel => sel,
          load_en => load_en,
          data_out => data_out
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
      
      data_in <= (5 => '1', others => '0');
      sel <= "0001";
      load_en <= '1';
      
      wait for clk_period;
      load_en <= '0';

      wait for clk_period*9;
      
      data_in <= (6 => '1', others => '0');
      sel <= "0010";
      load_en <= '1';
      
      wait for clk_period;
      load_en <= '0';
      
      wait for clk_period*9;
      
      data_in <= (7 => '1', others => '0');
      sel <= "0011";
      load_en <= '1';
      
      wait for clk_period;
      load_en <= '0';
      
      wait for clk_period*9;
      
      data_in <= (8 => '1', others => '0');
      sel <= "0100";
      load_en <= '1';
      
      wait for clk_period;
      load_en <= '0';
      
      wait for clk_period*9;
      
      data_in <= (9 => '1', others => '0');
      sel <= "0101";
      load_en <= '1';
      
      wait for clk_period;
      load_en <= '0';      
      
      wait for clk_period*9;
      
      data_in <= (10 => '1', others => '0');
      sel <= "0110";
      load_en <= '1';
      
      wait for clk_period;
      load_en <= '0';


      wait for clk_period*9;
     
      sel <= "0000";
      
      wait for clk_period*10;
      sel <= "0001";  

      wait for clk_period*10;
      sel <= "0010";  
      
      wait for clk_period*10;
      sel <= "0011";

      wait for clk_period*10;
      sel <= "0100";  

      wait for clk_period*10;
      sel <= "0101";  

      wait for clk_period*10;
      sel <= "0110";  
      
      -- insert stimulus here 

      wait;
   end process;

END;
