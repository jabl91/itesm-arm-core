--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:17:41 05/07/2012
-- Design Name:   
-- Module Name:   C:/Users/1464/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/port_4_tb.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: port_4
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
 
ENTITY port_4_tb IS
END port_4_tb;
 
ARCHITECTURE behavior OF port_4_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT port_4
    PORT(
         bus_in : IN  std_logic_vector(3 downto 0);
         port_in : IN  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         sel : IN  std_logic;
         bus_out : OUT  std_logic_vector(3 downto 0);
         enable_port : IN  std_logic_vector(1 downto 0);
         port_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal bus_in : std_logic_vector(3 downto 0) := (others => '0');
   signal port_in : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal sel : std_logic := '0';
   signal enable_port : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal bus_out : std_logic_vector(3 downto 0);
   signal port_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: port_4 PORT MAP (
          bus_in => bus_in,
          port_in => port_in,
          clk => clk,
          sel => sel,
          bus_out => bus_out,
          enable_port => enable_port,
          port_out => port_out
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
		bus_in <= "1111";
		port_in <="1010";
		
		enable_port <= "00";
		
      wait for clk_period*10;
		
		sel <= '1';
		
		wait for clk_period*2;
		
		sel<= '0';
		
		wait for clk_period*2;
		
		enable_port <= "11";
		
		sel <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
