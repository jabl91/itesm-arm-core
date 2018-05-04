----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:31:32 05/05/2012 
-- Design Name: 
-- Module Name:    shift_l_32 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY shift_l_32_tb IS
END shift_l_32_tb;
 
ARCHITECTURE behavior OF shift_l_32_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
	 
	 COMPONENT shift_l_32
    PORT(
         a : IN  std_logic_vector(31 downto 0);--32
         c_in : IN  STD_LOGIC;
			c_out : OUT  STD_LOGIC;
			q : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
	 
	  --Inputs
   signal a : std_logic_vector(31 downto 0) := (others => '0');
	signal c_in : std_logic;

 	--Outputs
   signal q : std_logic_vector(31 downto 0);
	signal c_out : std_logic;
	signal clock : std_logic;
   -- No clocks detected in port list. Replace clock below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
	
	BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: shift_l_32 PORT MAP (
          a => a,
			 c_in => c_in,
			 c_out => c_out,
          q => q
        );
		  
   -- Clock process definitions
   clock_process :process
	
	begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		a <= "10000000000000000000000000000101";
		c_in<= '1';
      wait for clock_period*10;
		a <= "00000000000000000000000010101101";
		c_in<= '0';
      -- insert stimulus here 

      wait;
   end process;
END;