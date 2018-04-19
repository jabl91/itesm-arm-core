----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:47:24 04/17/2018 
-- Design Name: 
-- Module Name:    RegisterBank - Behavioral 
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
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterBank is
   Port (
            clk            : IN  STD_LOGIC;
            data_in        : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
            sel            : IN  STD_LOGIC_VECTOR (3  DOWNTO 0);
            load_en        : IN  STD_LOGIC;
            data_out       : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
         );
end RegisterBank;

architecture Behavioral of RegisterBank is

component reg_b is
   Port (
            in_bus   : in     STD_LOGIC_VECTOR (31 downto 0);
            out_bus  : out    STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
            load_b   : in     STD_LOGIC;
            clk      :        STD_LOGIC
         );
end component;


SIGNAL Reg_01_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_02_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_03_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_04_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_05_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_06_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_07_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_08_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_09_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');
SIGNAL Reg_10_Out    : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');

SIGNAL Reg_N_EN      : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');


SIGNAL Reg_Bank_Out  : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');


begin



Reg_01 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_01_Out, 
            load_b            =>   Reg_N_EN(0), 
            clk               =>   clk          
         );
         
Reg_02 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_02_Out, 
            load_b            =>   Reg_N_EN(1),  
            clk               =>   clk          
         );

Reg_03 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_03_Out, 
            load_b            =>   Reg_N_EN(2),  
            clk               =>   clk          
         );
         
Reg_04 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_04_Out, 
            load_b            =>   Reg_N_EN(3),  
            clk               =>   clk          
         );
         
         
Reg_05 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_05_Out,
            load_b            =>   Reg_N_EN(4),  
            clk               =>   clk          
         );


Reg_06 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_06_Out, 
            load_b            =>   Reg_N_EN(5),  
            clk               =>   clk          
         );


Reg_07 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_07_Out, 
            load_b            =>   Reg_N_EN(6),  
            clk               =>   clk          
         );


Reg_08 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_08_Out, 
            load_b            =>   Reg_N_EN(7),  
            clk               =>   clk          
         );


Reg_09 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_09_Out, 
            load_b            =>   Reg_N_EN(8),  
            clk               =>   clk          
         );         


Reg_10 : reg_b
port map(
            in_bus            =>   data_in, 
            out_bus           =>   Reg_10_Out, 
            load_b            =>   Reg_N_EN(9),  
            clk               =>   clk          
         );
         
         
process (clk)
begin

   if (falling_edge(clk)) then
      case sel is
      
         when "0000"   =>  Reg_N_EN <= (0  => load_en, others => '0');
                           data_out <= Reg_01_Out;
                           
         when "0001"   =>  Reg_N_EN <= (1  => load_en, others => '0');
                           data_out <= Reg_02_Out;
                           
         when "0010"   =>  Reg_N_EN <= (2  => load_en, others => '0');
                           data_out <= Reg_03_Out;
                           
         when "0011"   =>  Reg_N_EN <= (3  => load_en, others => '0');
                           data_out <= Reg_04_Out;
                           
         when "0100"   =>  Reg_N_EN <= (4  => load_en, others => '0');
                           data_out <= Reg_05_Out;
                           
         when "0101"   =>  Reg_N_EN <= (5  => load_en, others => '0');
                           data_out <= Reg_06_Out;
                           
         when "0110"   =>  Reg_N_EN <= (6  => load_en, others => '0');
                           data_out <= Reg_07_Out;
                           
         when "0111"   =>  Reg_N_EN <= (7  => load_en, others => '0');
                           data_out <= Reg_08_Out;
                           
         when "1000"   =>  Reg_N_EN <= (8  => load_en, others => '0');
                           data_out <= Reg_09_Out;
                           
         when "1001"   =>  Reg_N_EN <= (9  => load_en, others => '0');
                           data_out <= Reg_10_Out;
                           
         when others   =>  Reg_N_EN <= (others => '0');
                           data_out <= (others => '0');
         
      end case;
      
      
      
   end if;
   
   --data_out <= Reg_Bank_Out;
   
end process;


	
end Behavioral;

