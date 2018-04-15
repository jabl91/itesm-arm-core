--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:16:53 05/05/2012
-- Design Name:   
-- Module Name:   C:/Users/Beto/Dropbox/Grupo de Trabajo/Procesador 4 bits/uP_4_bits/uInst_TB.vhd
-- Project Name:  uP_4_bits
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: uInst
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
 
ENTITY uInst_TB IS
END uInst_TB;
 
ARCHITECTURE behavior OF uInst_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT uInst
    PORT(
         Phase : IN  std_logic_vector(3 downto 0);
         Inst : IN  std_logic_vector(4 downto 0);
         PC : OUT  std_logic;
         Load_Instr : OUT  std_logic;
         Enable_Instr : OUT  std_logic;
         ReadMem : OUT  std_logic;
         ProgCount : OUT  std_logic;
         LoadB : OUT  std_logic;
         LoadA : OUT  std_logic;
         ShowA : OUT  std_logic;
         EnableALU : OUT  std_logic;
         Enable_In : OUT  std_logic;
         Enable_Out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Phase : std_logic_vector(3 downto 0) := (others => '0');
   signal Inst : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal PC : std_logic;
   signal Load_Instr : std_logic;
   signal Enable_Instr : std_logic;
   signal ReadMem : std_logic;
   signal ProgCount : std_logic;
   signal LoadB : std_logic;
   signal LoadA : std_logic;
   signal ShowA : std_logic;
   signal EnableALU : std_logic;
   signal Enable_In : std_logic;
   signal Enable_Out : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: uInst PORT MAP (
          Phase => Phase,
          Inst => Inst,
          PC => PC,
          Load_Instr => Load_Instr,
          Enable_Instr => Enable_Instr,
          ReadMem => ReadMem,
          ProgCount => ProgCount,
          LoadB => LoadB,
          LoadA => LoadA,
          ShowA => ShowA,
          EnableALU => EnableALU,
          Enable_In => Enable_In,
          Enable_Out => Enable_Out
        );

   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
			INST <= "00010";
			Phase <= "0001";

      wait for clock_period*10;
			Phase <= "0010";
			wait for clock_period*10;
			Phase <= "0100";
			wait for clock_period*10;
			Phase <= "0101";
			wait for clock_period*10;
		

      -- insert stimulus here 

      wait;
   end process;

END;
