----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:22:54 05/05/2012 
-- Design Name: 
-- Module Name:    uInst - Behavioral 
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

entity uInst is
    Port ( 			
						clk							: in		STD_LOGIC;
						Phase 			         : in  	STD_LOGIC_VECTOR 	(7 downto 0);
						Inst 				         : in  	STD_LOGIC_VECTOR 	(4 downto 0);
						DATA_PM			         : in 		STD_LOGIC_VECTOR	(1 DOWNTO 0);  -- Entrada de datos de PM para transferencia entre puertos
                  SEL_REGISTER_BANK_PM    : in     STD_LOGIC_VECTOR  (3 downto 0);
                  SEL_REGISTER_BANK_PM_2  : in     STD_LOGIC_VECTOR  (3 downto 0);
						PSW				         : in 		STD_LOGIC;
						Load_Instr 		         : out  	STD_LOGIC 					:= '0';
						ReadMem 			         : out 	STD_LOGIC					:= '0';
						
						PC_SRC_MUX 		         : out		STD_LOGIC					:= '0';
						LOAD_PC	 		         : out		STD_LOGIC					:= '0';
						WR_RAM			         : out		STD_LOGIC					:= '0';			
						LOAD_MS_MUX		         : out		STD_LOGIC					:= '0';
						LOAD_CJNE		         : out		STD_LOGIC					:= '0';
						MBR_MUX			         : out		STD_LOGIC					:= '0';
						MAR_MUX			         : out		STD_LOGIC					:= '0';
						SPTR_DEC 		         : out		STD_LOGIC					:= '0';
						SPTR_INC 		         : out		STD_LOGIC					:= '0';
						PM_BUS			         : out		STD_LOGIC					:= '0';
						B_BUS				         : out		STD_LOGIC					:= '0';
						LOAD_B	 		         : out		STD_LOGIC					:= '0';
						LOAD_SPW			         : out		STD_LOGIC					:= '0';
						PC_INC	 		         : out		STD_LOGIC					:= '0';
						ALU_SIGNAL		         : out 	STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
						ALU_BUS	 		         : out		STD_LOGIC					:= '0';
						A_SRC_MUX 		         : out		STD_LOGIC					:= '0';
						A_BUS		 		         : out		STD_LOGIC					:= '0';
						LOAD_A	 		         : out		STD_LOGIC					:= '0';
						PORT_SELECT		         : out		STD_LOGIC					:=	'0';
						PORT_BUS			         : out		STD_LOGIC					:= '0';
						WR_PORT			         : out		STD_LOGIC					:= '0';
						ENABLE_PORT		         : out 	STD_LOGIC_VECTOR (1 DOWNTO 0) := (others => '0');
						SEL_BUS 			         : out 	STD_LOGIC_VECTOR (4 DOWNTO 0);
						SEL_PORT_OR_BUS         : out    STD_LOGIC;				-- 0 para puerto y 1 para bus
                  SEL_REGISTER_BANK       : out    STD_LOGIC_VECTOR (3 DOWNTO 0);
                  LOAD_EN_REGISTER_BANK   : out    STD_LOGIC  
                  
			);			
			
end uInst;

architecture Behavioral of uInst is
begin

		process(Phase,clk) is
		begin
		if (rising_edge(clk)) then
				case Phase is

						when "00000001" => --Primera Fase
						
								ReadMem 					   <= '1';		--Lectura de Memoria de Programa (1)
								Load_Instr 				   <= '1';   	--Carga de la Instruccion obtenida de la memoria (1)
								PC_SRC_MUX 				   <= '0';
								LOAD_PC	 				   <= '0';
								WR_RAM					   <= '0';			
								LOAD_MS_MUX				   <= '0';
								LOAD_CJNE				   <= '0';			-- Esta se�al se usa para no actualizar todo el SPW solo un bit
								MBR_MUX					   <= '0';
								MAR_MUX					   <= '0';
								SPTR_DEC 				   <= '0';
								SPTR_INC 				   <= '0';
								PM_BUS					   <= '0';
								LOAD_SPW					   <= '0';
								B_BUS						   <= '0';
								LOAD_B	 				   <= '0';
								PC_INC	 				   <= '0';
								ALU_SIGNAL		 		   <= (others => '0');
								ALU_BUS	 				   <= '0';
								A_SRC_MUX 				   <= '0';
								A_BUS		 				   <= '0';
								LOAD_A	 				   <= '0';
								PORT_SELECT				   <=	'0';
								WR_PORT					   <= '0';
								PORT_BUS					   <= '0';
								ENABLE_PORT				   <= "11";
								SEL_PORT_OR_BUS		   <= '0';
                        SEL_REGISTER_BANK       <= "0000";
                        LOAD_EN_REGISTER_BANK   <= '0';

						when "00000010" => --Segunda Fase
						
							case Inst is
									when "00000" =>		-- NOP
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC <= '1';
									when "00001" =>		-- JMP
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_SRC_MUX	<= '1';
									LOAD_PC		<='1';

									when "00010" =>		-- CALL
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									LOAD_MS_MUX	<= '1';
									MBR_MUX		<= '1';
									MAR_MUX		<=	'1';
									PC_INC <= '1';

									when "00011" =>		-- RET
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									SPTR_INC <= '1';
									when "00100" => 		-- CJNE
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									SEL_BUS<= "00010";
									LOAD_B	<= '1';
									ALU_SIGNAL <= "0010";
									--LOAD_SPW <= '1';
									when "00101" => 		-- ROTL
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "00110" => 		-- ROTR
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "00111" => 		-- SWAP
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "01000" => 		-- SUM
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "01001" => 		-- SUB
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "01010" => 		-- MULT
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "01011" => 		-- DIV
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "01100" => 		-- AND
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "01101" => 		-- OR
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "01110" => 		-- NOT
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "01111" => 		-- NOT
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "10000" => 		-- XOR
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "10001" => 		-- MOV
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "10010" => 		-- MOV
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "10011" => 		-- MOV
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "10100" => 		-- MOV
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "10101" => 		-- MOV
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "10110" => 		-- MOV
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
									when "10111" => 		-- MOV
									ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
                           when "11000" =>      -- TEST REGISTER BANK MOV k, Rn
                           ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
                           when "11001" =>      -- TEST REGISTER BANK MOV Rm, Rn
                           ReadMem 					<= '0';
									Load_Instr 				<= '0';
									PC_INC					<= '1';
                           SEL_REGISTER_BANK    <= SEL_REGISTER_BANK_PM;
                           SEL_BUS              <= "00111";
                           LOAD_A	            <= '1';
									when others  => 		--?
								end case;
						
					
						when "00000100" => --Tercera Fase
							
							case Inst is
									when "00000" =>		-- NOP
									PC_INC <= '0';
									when "00001" =>		-- JMP
									PC_SRC_MUX	<= '0';
									LOAD_PC		<=	'0';
									when "00010" =>		-- CALL
									WR_RAM		<= '1';
									LOAD_MS_MUX	<= '0';
									MBR_MUX		<= '0';
									MAR_MUX		<=	'0';
									PC_INC 		<= '0';
									when "00011" =>		-- RET
									SPTR_INC <= '0';
									LOAD_MS_MUX	<= '1';
									MAR_MUX		<= '1';
									when "00100" => 		-- CJNE
									PM_BUS	<= '0';
									LOAD_B	<= '0';
									--LOAD_SPW <= '0';
									--LOAD_SPW <= '1';
									LOAD_CJNE <= '1';
										
										
									when "00101" => 		-- ROTL
									PC_INC	<='0';
									ALU_SIGNAL <= "0101";
									when "00110" => 		-- ROTR
									PC_INC	<='0';
									ALU_SIGNAL <= "0110";
									when "00111" => 		-- SWAP
									PC_INC	<='0';
									ALU_SIGNAL <= "0111";
									when "01000" => 		-- SUM
									PC_INC	<='0';
									ALU_SIGNAL <= "0100";
									when "01001" => 		-- SUB
									PC_INC	<='0';
									ALU_SIGNAL <= "1010";
									when "01010" => 		-- MULT
									PC_INC	<='0';
									ALU_SIGNAL <= "1000";
									when "01011" => 		-- DIV
									PC_INC	<='0';
									ALU_SIGNAL <= "1001";
									when "01100" => 		-- AND
									PC_INC	<='0';
									ALU_SIGNAL <= "0000";
									SEL_BUS<= "00010";
									LOAD_B <= '1';
									when "01101" => 		-- OR
									PC_INC	<='0';
									ALU_SIGNAL <= "0001";
									SEL_BUS<= "00010";
									LOAD_B <= '1';
									when "01110" => 		-- NOT A
									PC_INC	<='0';
									ALU_SIGNAL <= "0011";
									when "01111" => 		-- NOT K
									PC_INC	<='0';
									ALU_SIGNAL <= "0011";
									SEL_BUS<= "00010";
									LOAD_A  <= '1';
									when "10000" => 		-- XOR
									PC_INC	<='0';
									ALU_SIGNAL <= "0010";
									SEL_BUS<= "00010";
									when "10001" => 		-- MOV A,B
									PC_INC	<='0';
									LOAD_B	<='1';
									SEL_BUS<= "00000";
									when "10010" => 		-- MOV A, data addr
									PC_INC	<='0';
									LOAD_MS_MUX	<= '1';
									MBR_MUX		<= '0';
									when "10011" => 		-- MOV A, Pn
									PC_INC	<='0';
									SEL_BUS<= "00000";
									ENABLE_PORT <= "11";
									when "10100" => 		-- MOV B,A
									PC_INC	<='0';
									LOAD_A	<='1';
									SEL_BUS<= "00001";
									when "10101" => 		-- MOV data addr, A
									PC_INC	<='0';
									MBR_MUX <= '1';
									LOAD_MS_MUX <= '1';
									when "10110" => 		-- MOV Pn, A
									PC_INC	<='0';
									LOAD_A	<='1';
									PORT_BUS	<='1';
									SEL_PORT_OR_BUS <= '0';
									case DATA_PM is 
									
										when "00" => 	SEL_BUS <= "00011";
															ENABLE_PORT <= "11";
										when "01" => SEL_BUS <= "00100";
															ENABLE_PORT <= "11";
										when "10" => SEL_BUS <= "00101";
															ENABLE_PORT <= "11";
										when others =>
															ENABLE_PORT <= "11";
									end case;
									when "10111" => 		-- MOV A,k
									PC_INC	<='0';
									SEL_BUS 	<="00010";
									LOAD_B   <='1';
                           when "11000" =>      -- TEST REGISTER BANK MOV k, Rn
									PC_INC	<='0';
									SEL_BUS<= "00010";
                           SEL_REGISTER_BANK       <= SEL_REGISTER_BANK_PM;
                           LOAD_EN_REGISTER_BANK   <= '1';
                           when "11001" =>      -- TEST REGISTER BANK MOV Rm, Rn
									PC_INC	<='0';
                           LOAD_A	<= '0';
                           SEL_BUS 	<="00000";
                           SEL_REGISTER_BANK       <= SEL_REGISTER_BANK_PM_2;
                           LOAD_EN_REGISTER_BANK   <= '1';                      
									when others  => 		--?
								end case;
								


						when "00001000" => --Cuarta Fase

								case Inst is
									when "00000" =>		-- NOP
									when "00001" =>		-- JMP									
									when "00010" =>		-- CALL
									WR_RAM		<= '0';
									
									
									PC_SRC_MUX	<= '1';
									LOAD_PC		<= '1';
									SPTR_DEC		<= '1';
									WR_RAM		<= '0';
									when "00011" =>		-- RET
									LOAD_MS_MUX	<= '0';
									MAR_MUX		<= '0';
									LOAD_PC		<= '1';
									when "00100" => 		-- CJNE
									PC_INC <= '0';
									LOAD_PC <= '0';
									PC_SRC_MUX <= '0';
									LOAD_SPW <= '0';
									LOAD_CJNE <='0';
									if PSW = '1' then
										PC_INC <= '1';
										elsif PSW ='0' then
										LOAD_PC <= '1';
										PC_SRC_MUX <= '1';
										end if;
									when "00101" => 		-- ROTL
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									LOAD_SPW <= '1';
									when "00110" => 		-- ROTR
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									LOAD_SPW <= '1';
									when "00111" => 		-- SWAP
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									LOAD_SPW <= '1';
									when "01000" => 		-- SUM
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									LOAD_SPW <= '1';
									ALU_BUS	<= '1';
									when "01001" => 		-- SUB
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									ALU_BUS	<= '1';
									LOAD_SPW <= '1';
									when "01010" => 		-- MULT
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									ALU_BUS	<= '1';
									LOAD_SPW <= '1';
									when "01011" => 		-- DIV
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									ALU_BUS	<= '1';
									LOAD_SPW <= '1';
									when "01100" => 		-- AND
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									LOAD_B <= '0';
									LOAD_SPW <= '1';
									when "01101" => 		-- OR
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									LOAD_B <= '0';
									LOAD_SPW <= '1';
									when "01110" => 		-- NOT A
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									ALU_BUS	<= '1';
									LOAD_SPW <= '1';
									when "01111" => 		-- NOT K
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									PM_BUS <= '0';
									ALU_BUS	<= '1';
									LOAD_SPW <= '1';
									when "10000" => 		-- XOR
									SEL_BUS<= "00110";
									LOAD_A  <= '1';
									LOAD_SPW <= '1';
									LOAD_B <= '0';
									when "10001" => 		-- MOV A,B
									LOAD_B	<='0';
									A_BUS		<='0';
									when "10010" => 		-- MOV A, Addr
										LOAD_MS_MUX	<= '0';
										MBR_MUX		<= '0';
									WR_RAM 		<= '1';
									when "10011" => 		-- MOV A, Pn
									A_BUS 	<='0';
									WR_PORT	<= '1';
									SEL_PORT_OR_BUS <= '0';
									case DATA_PM is 
									
										when "00" => 	SEL_BUS <= "00000";
															ENABLE_PORT <= "00";
										when "01" => SEL_BUS <= "00000";
															ENABLE_PORT <= "01";
										when "10" => SEL_BUS <= "00000";
															ENABLE_PORT <= "10";
										when others =>
															ENABLE_PORT <= "11";
									end case;
										
									when "10100" => 		-- MOV B, A
									LOAD_A	<='0';
									B_BUS		<='0';
									when "10101" => 		-- MOV Addr, A
									A_SRC_MUX <='1';
									LOAD_A   <='1';
									MBR_MUX <= '0';
									LOAD_MS_MUX <= '0';
									when "10110" => 		-- MOV Pn,A
									LOAD_A	<='0';
									PORT_BUS	<='0';
									ENABLE_PORT <= "11";
									when "10111" => 		-- MOV B ,K
									LOAD_B   <='0';
                           when "11000" =>      -- TEST REGISTER BANK MOV k, Rn
                           LOAD_EN_REGISTER_BANK   <= '0';
                           when "11001" =>      -- TEST REGISTER BANK MOV Rm, Rn
                           LOAD_EN_REGISTER_BANK   <= '0';                          
									when others  => 		--?
								end case;
								
								
								

				when others =>			--Default (Falta por definir)
								
								ReadMem 					   <= '0';		--Lectura de Memoria de Programa (1)
								Load_Instr 				   <= '0';   	--Carga de la Instruccion obtenida de la memoria (1)
								PC_SRC_MUX 				   <= '0';
								LOAD_PC	 				   <= '0';
								WR_RAM					   <= '0';			
								LOAD_MS_MUX				   <= '0';
								LOAD_CJNE				   <= '0';			-- Esta se�al se usa para no actualizar todo el SPW solo un bit
								MBR_MUX					   <= '0';
								MAR_MUX					   <= '0';
								SPTR_DEC 				   <= '0';
								SPTR_INC 				   <= '0';
								PM_BUS					   <= '0';
								LOAD_SPW					   <= '0';
								B_BUS						   <= '0';
								LOAD_B	 				   <= '0';
								PC_INC	 				   <= '0';
								ALU_SIGNAL		 		   <= (others => '0');
								ALU_BUS	 				   <= '0';
								A_SRC_MUX 				   <= '0';
								A_BUS		 				   <= '0';
								LOAD_A	 				   <= '0';
								PORT_SELECT				   <=	'0';
								WR_PORT					   <= '0';
								PORT_BUS					   <= '0';
								ENABLE_PORT				   <= "11";
								SEL_PORT_OR_BUS		   <= '0';
                        SEL_REGISTER_BANK       <= "0000";
                        LOAD_EN_REGISTER_BANK   <= '0';

				end case;
		end if;
		end process;
		
		


end Behavioral;

