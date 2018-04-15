--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:45:35 05/07/2012
-- Design Name:   
-- Module Name:   C:/Users/Beto/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/RAM_TB.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM_Memory
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
 
ENTITY RAM_TB IS
END RAM_TB;
 
ARCHITECTURE behavior OF RAM_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM_Memory
    PORT(
         out_data : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         PC : IN  std_logic_vector(6 downto 0);
         regA : IN  std_logic_vector(7 downto 0);
         PM : IN  std_logic_vector(4 downto 0);
         SPTR : IN  std_logic_vector(4 downto 0);
         sel_mbr : IN  std_logic;
         sel_mar : IN  std_logic;
         CE : IN  std_logic;
         WE : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal PC : std_logic_vector(6 downto 0) := (others => '0');
   signal regA : std_logic_vector(7 downto 0) := (others => '0');
   signal PM : std_logic_vector(4 downto 0) := (others => '0');
   signal SPTR : std_logic_vector(4 downto 0) := (others => '0');
   signal sel_mbr : std_logic := '0';
   signal sel_mar : std_logic := '0';
   signal CE : std_logic := '0';
   signal WE : std_logic := '0';

 	--Outputs
   signal out_data : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM_Memory PORT MAP (
          out_data => out_data,
          clk => clk,
          PC => PC,
          regA => regA,
          PM => PM,
          SPTR => SPTR,
          sel_mbr => sel_mbr,
          sel_mar => sel_mar,
          CE => CE,
          WE => WE
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
		PC <= "0000001";
		regA <= "00000011";
		SPTR <= "11111";		
		PM		<= "00110";
		CE <= '1';
		
		sel_mbr <= '0'; --regA
		sel_mar <= '0'; --PM	
      wait for clk_period;
		CE <= '0';
		WE <= '1';
		PM <= "00000";
		regA <= "00001000";
		wait for clk_period;
		WE <= '0';
		CE <= '1';
		wait for clk_period;
		CE <= '0';
		WE <= '1';
		PM <= "00110";
		regA <= "00001000";
		wait for clk_period;
		WE <= '0';
		CE <= '1';
		wait for clk_period;
		CE <= '0';
      -- insert stimulus here 

      wait;
   end process;

END;
