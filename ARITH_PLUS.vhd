--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

--Package declaration for the above program
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all; 

package ARITH_PLUS is

 --function declaration.
function  divide  (a : UNSIGNED; b : UNSIGNED) return UNSIGNED;
end ARITH_PLUS;   --end of package.

package body ARITH_PLUS is  --start of package body
--definition of function

function  divide  (a : UNSIGNED; b : UNSIGNED) return UNSIGNED is
		variable a1 : unsigned(a'length-1 downto 0):=a;
		variable b1 : unsigned(b'length-1 downto 0):=b;
		variable p1 : unsigned(b'length downto 0):= (others => '0');
		variable i : integer:=0;

			begin
				for i in 0 to b'length-1 loop
					p1(b'length-1 downto 1) := p1(b'length-2 downto 0);
					p1(0) := a1(a'length-1);
					a1(a'length-1 downto 1) := a1(a'length-2 downto 0);
					p1 := p1-b1;
					if(p1(b'length-1) ='1') then
						a1(0) :='0';
						p1 := p1+b1;
					else
						a1(0) :='1';
					end if;
				end loop;
				return a1;

end divide;
--end function
end ARITH_PLUS;  --end of the package body