----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:48:33 05/06/2012 
-- Design Name: 
-- Module Name:    Procesador_32_bits - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

library work;
use work.ARITH_PLUS.all;



-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Procesador_32_bits is
   Port (
            clk            : IN  STD_LOGIC;
            PORT_A_IN      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
            PORT_B_IN      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
            PORT_C_IN      : IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
            PORT_A_OUT     : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
            PORT_B_OUT     : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0');
            PORT_C_OUT     : OUT STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0')
         );
end Procesador_32_bits;

architecture Behavioral of Procesador_32_bits is

component RegisterBank is
   Port (
            clk            : IN  STD_LOGIC;
            data_in        : IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
            sel            : IN  STD_LOGIC_VECTOR (3  DOWNTO 0);
            load_en        : IN  STD_LOGIC;
            data_out       : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
         );
end component;

component alu
    Port ( 
            A_F            : in  STD_LOGIC_VECTOR (7 DOWNTO 0);
            B_F            : in  STD_LOGIC_VECTOR (7 DOWNTO 0);
            spw_in         : in  STD_LOGIC_VECTOR (4 DOWNTO 0);   -- z,half-carry,carry,igualdad,negativos
            spw_out        : out STD_LOGIC_VECTOR (4 downto 0);
            q              : out STD_LOGIC_VECTOR (31 DOWNTO 0);
            sel            : in  STD_LOGIC_VECTOR (3 DOWNTO 0)
         );
end component;

component reg_a
  Port   ( 
            in_bus         : in  STD_LOGIC_VECTOR (31 downto 0):= (others => '0');
            in_ram         : in  STD_LOGIC_VECTOR (31 downto 0);
            load_a         : in  STD_LOGIC;
            sel            : in  STD_LOGIC;                       -- '1' ram   '0' bus
            a_out          : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
            clk            :     STD_LOGIC
         );
end component;

component data_bus
  Port   (
            pm             : in  STD_LOGIC_VECTOR (3  downto 0);
            alu            : in  STD_LOGIC_VECTOR (31 downto 0);
            a              : in  STD_LOGIC_VECTOR (31 downto 0);
            b              : in  STD_LOGIC_VECTOR (31 downto 0);
            RegBank        : in  STD_LOGIC_VECTOR (31 downto 0);
            port_a         : in  STD_LOGIC_VECTOR (7  downto 0);
            port_b         : in  STD_LOGIC_VECTOR (7  downto 0);
            port_c         : in  STD_LOGIC_VECTOR (7  downto 0);
            sel            : in  STD_LOGIC_VECTOR (4  downto 0);
            q              : out STD_LOGIC_VECTOR (31 downto 0)
         );
end component;

component reg_b
   Port  ( 
            in_bus         : in  STD_LOGIC_VECTOR (31 downto 0);
            out_bus        : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
            load_b         : in  STD_LOGIC;
            clk            :     STD_LOGIC
         );
end component;

component Program_Memory
   Port  ( 
            in_addr_pc     : in  STD_LOGIC_VECTOR (6 downto 0);
            out_uinst      : out STD_LOGIC_VECTOR (4 downto 0);
            out_addr       : out STD_LOGIC_VECTOR (6 downto 0);
            out_data       : out STD_LOGIC_VECTOR (3 downto 0);
            clk            : in  STD_LOGIC;
            load           : in  STD_LOGIC
         );
end component;

component stkptr
   Port  ( 
            clk            : in  STD_LOGIC;
            dec_stack      : in  STD_LOGIC;
            inc_stack      : in  STD_LOGIC;
            out_dir        : out STD_LOGIC_VECTOR (4 downto 0)
         );
end component;

component RAM_Memory
   Port  ( 
            out_data       : out STD_LOGIC_VECTOR (7 downto 0);
            clk            : in    STD_LOGIC;
            PC             : in  STD_LOGIC_VECTOR (6 downto 0);
            regA           : in  STD_LOGIC_VECTOR (7 downto 0);
            PM             : in  STD_LOGIC_VECTOR (4 downto 0);
            SPTR           : in  STD_LOGIC_VECTOR (4 downto 0);
            sel_mbr        : in  STD_LOGIC;
            sel_mar        : in  STD_LOGIC;
            CE             : in  STD_LOGIC;
            WE             : in  STD_LOGIC
         );
end component;


component PC_MODULE is
   Port ( 
            ram_in         : in  STD_LOGIC_VECTOR (6 downto 0);
            pm_in          : in  STD_LOGIC_VECTOR (6 downto 0);
            clk            : in  STD_LOGIC;
            sel            : in  STD_LOGIC;
            load_pc        : in  STD_LOGIC;
            inc_pc         : in  STD_LOGIC;
            pc_out         : out STD_LOGIC_VECTOR (6 downto 0)
       );
end component;

component port_8 is
   Port ( 
            bus_in         : in  STD_LOGIC_VECTOR (7 downto 0);
            port_in        : in  STD_LOGIC_VECTOR (7 downto 0);
            sel            : in  STD_LOGIC;
            clk            : in  STD_LOGIC;
            enable_port    : in  STD_LOGIC_VECTOR (1 downto 0);
            bus_out        : out STD_LOGIC_VECTOR (7 downto 0);
            port_out       : out STD_LOGIC_VECTOR (7 downto 0)
       );
end component;

component port_4
   Port  ( 
            bus_in         : in  STD_LOGIC_VECTOR (7 downto 0);
            port_in        : in  STD_LOGIC_VECTOR (7 downto 0);
            clk            : in  STD_LOGIC;
            sel            : in  STD_LOGIC;  -- '1' puerto '0' bus
            bus_out        : out STD_LOGIC_VECTOR (7 downto 0);
            enable_port    : in  STD_LOGIC_VECTOR (1 downto 0);
            port_out       : out STD_LOGIC_VECTOR (7 downto 0)
         );
end component;

component portb_4 is
   Port ( 
               bus_in      : in  STD_LOGIC_VECTOR (7 downto 0);
               port_in     : in  STD_LOGIC_VECTOR (7 downto 0);
               clk         : in  STD_LOGIC;
               sel         : in  STD_LOGIC;  -- '1' puerto '0' bus
               bus_out     : out STD_LOGIC_VECTOR (7 downto 0);
               enable_port : in  STD_LOGIC_VECTOR (1 downto 0);
               port_out    : out STD_LOGIC_VECTOR (7 downto 0)
         );
end component;

component phase_gen
   Port  ( 
            clear_phase    : in  STD_LOGIC;
            clk            : in  STD_LOGIC;
            out_phase      : out STD_LOGIC_VECTOR (3 downto 0)
         );
end component;

component SPW
   Port  ( 
            in_SPW         : in  STD_LOGIC_VECTOR (4 downto 0);
            out_SPW        : out STD_LOGIC_VECTOR (4 downto 0);
            load_SPW       : in  STD_LOGIC;
            load_CJNE      : in  STD_LOGIC;
            clk            :     STD_LOGIC
         );
end component;

component uInst
   Port  ( 
               Phase             : in     STD_LOGIC_VECTOR  (3 downto 0);
               Inst              : in     STD_LOGIC_VECTOR  (4 downto 0);
               DATA_PM           : in     STD_LOGIC_VECTOR  (1 downto 0);  -- Entrada de datos de PM para transferencia entre puertos
               PSW               : in     STD_LOGIC;
               Load_Instr        : out    STD_LOGIC;
               ReadMem           : out    STD_LOGIC;
               
               PC_SRC_MUX        : out    STD_LOGIC;
               LOAD_PC           : out    STD_LOGIC;
               WR_RAM            : out    STD_LOGIC;
               LOAD_MS_MUX       : out    STD_LOGIC;
               LOAD_CJNE         : out    STD_LOGIC;
               MBR_MUX           : out    STD_LOGIC;
               MAR_MUX           : out    STD_LOGIC;
               SPTR_DEC          : out    STD_LOGIC;
               LOAD_SPW          : out    STD_LOGIC;
               SPTR_INC          : out    STD_LOGIC;
               PM_BUS            : out    STD_LOGIC;
               B_BUS             : out    STD_LOGIC;
               LOAD_B            : out    STD_LOGIC;
               PC_INC            : out    STD_LOGIC;
               ALU_SIGNAL        : out    STD_LOGIC_VECTOR (3 downto 0);
               ALU_BUS           : out    STD_LOGIC;
               A_SRC_MUX         : out    STD_LOGIC;
               A_BUS             : out    STD_LOGIC;
               LOAD_A            : out    STD_LOGIC;
               PORT_SELECT       : out    STD_LOGIC;
               PORT_BUS          : out    STD_LOGIC;
               WR_PORT           : out    STD_LOGIC;
               SEL_PORT_OR_BUS   : out    STD_LOGIC;
               ENABLE_PORT       : out    STD_LOGIC_VECTOR (1 DOWNTO 0);
               SEL_BUS           : out    STD_LOGIC_VECTOR (4 DOWNTO 0)
         );
end component;

-- INTERCONEXIONES ENTRE BLOQUES

SIGNAL A_OUT         : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');      -- Salida del Acumulador
SIGNAL B_OUT         : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');      -- Salida del Registro B
SIGNAL ALU_OUT       : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');      -- Respuesta de la ALU
SIGNAL BUS_OUT       : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');      -- Salida del BUS
SIGNAL PC_OUT        : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');      -- Salida del PC
SIGNAL RAM_OUT       : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');      -- Salida de la RAM
SIGNAL PORT_C_OUT1   : STD_LOGIC_VECTOR (7 DOWNTO 0):= (others => '0');      -- Señal de entrada de PORT C, para ingresar al BUS
SIGNAL PORT_B_OUT1   : STD_LOGIC_VECTOR (7 DOWNTO 0):= (others => '0');      -- Señal de entrada de PORT C, para ingresar al BUS
SIGNAL PORT_A_OUT1   : STD_LOGIC_VECTOR (7 DOWNTO 0):= (others => '0');      -- Señal de entrada de PORT C, para ingresar al BUS
SIGNAL DATA_PM       : STD_LOGIC_VECTOR (3 DOWNTO 0);                         -- Datos de PMS (Program Memory Structure)
SIGNAL ADDR_PM       : STD_LOGIC_VECTOR (6 DOWNTO 0);                         -- Direccion de PMS
SIGNAL INST_PM       : STD_LOGIC_VECTOR (4 DOWNTO 0);                         -- Instruccion de PMS
SIGNAL PHASE         : STD_LOGIC_VECTOR (3 DOWNTO 0);                         -- Señal de Fase
SIGNAL ADDR_SPTR     : STD_LOGIC_VECTOR (4 DOWNTO 0);                         -- Direccion de Salida del SPTR
SIGNAL SPW_IN        : STD_LOGIC_VECTOR (4 DOWNTO 0);                         -- STATUS PROGRAM WORD
SIGNAL SPW_OUT       : STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');      -- STATUS PROGRAM WORD
SIGNAL REG_BANK_OUT  : STD_LOGIC_VECTOR (31 DOWNTO 0):= (others => '0');

-- SEÑALES DE CONTROL

                  SIGNAL Load_Instr             : STD_LOGIC;         
                  SIGNAL ReadMem                : STD_LOGIC;      
                  
                  SIGNAL PC_SRC_MUX             : STD_LOGIC;            
                  SIGNAL LOAD_PC                : STD_LOGIC;            
                  SIGNAL WR_RAM                 : STD_LOGIC;                     
                  SIGNAL LOAD_MS_MUX            : STD_LOGIC;
                  SIGNAL LOAD_CJNE              : STD_LOGIC;
                  SIGNAL MBR_MUX                : STD_LOGIC;               
                  SIGNAL MAR_MUX                : STD_LOGIC;         
                  SIGNAL SPTR_DEC               : STD_LOGIC;               
                  SIGNAL SPTR_INC               : STD_LOGIC;            
                  SIGNAL PM_BUS                 : STD_LOGIC;            
                  SIGNAL B_BUS                  : STD_LOGIC;               
                  SIGNAL LOAD_B                 : STD_LOGIC;
                  SIGNAL LOAD_SPW               : STD_LOGIC;
                  SIGNAL PC_INC                 : STD_LOGIC;               
                  SIGNAL ALU_SIGNAL             : STD_LOGIC_VECTOR (3 downto 0);
                  SIGNAL ALU_BUS                : STD_LOGIC;
                  SIGNAL A_SRC_MUX              : STD_LOGIC;            
                  SIGNAL A_BUS                  : STD_LOGIC;               
                  SIGNAL LOAD_A                 : STD_LOGIC;               
                  SIGNAL PORT_SELECT            : STD_LOGIC;               
                  SIGNAL PORT_BUS               : STD_LOGIC;               
                  SIGNAL WR_PORT                : STD_LOGIC;
                  SIGNAL SEL_PORT_OR_BUS        : STD_LOGIC;                     
                  SIGNAL ENABLE_PORT            : STD_LOGIC_VECTOR (1 DOWNTO 0);  
                  SIGNAL SEL_BUS                : STD_LOGIC_VECTOR (4 DOWNTO 0) := (others => '0');
                  SIGNAL SEL_REGISTER_BANK      : STD_LOGIC_VECTOR (3 DOWNTO 0) := (others => '0');
                  SIGNAL LOAD_EN_REGISTER_BANK  : STD_LOGIC := '0';                   
 
begin


RegisterBank_F : RegisterBank
port map(
            clk            => clk,
            data_in        => BUS_OUT,
            sel            => SEL_REGISTER_BANK,
            load_en        => LOAD_EN_REGISTER_BANK,
            data_out       => REG_BANK_OUT
         );


uInst_F : uInst
port map(   
                  Phase                =>    PHASE,      
                  Inst                 =>    INST_PM,
                  DATA_PM              =>    DATA_PM (1 DOWNTO 0),      -- Datos de PM Solo 2 ultimos bits
                  PSW                  =>    SPW_OUT(1),                  --Checar si el subindice corresponde a Igualdad
                  Load_Instr           =>    Load_Instr,      
                  ReadMem              =>    ReadMem,         -->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>FALTA RETROALIMENTAR ESTA SALIDA A LA MISMA uInst
                  
                  PC_SRC_MUX           =>    PC_SRC_MUX ,      -->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Falta
                  LOAD_PC              =>    LOAD_PC,         
                  WR_RAM               =>    WR_RAM,         
                  LOAD_MS_MUX          =>    LOAD_MS_MUX,      
                  LOAD_CJNE            =>    LOAD_CJNE,
                  MBR_MUX              =>    MBR_MUX,         
                  MAR_MUX              =>    MAR_MUX,         
                  SPTR_DEC             =>    SPTR_DEC,        
                  SPTR_INC             =>    SPTR_INC,         
                  PM_BUS               =>    PM_BUS,         
                  B_BUS                =>    B_BUS,            
                  LOAD_B               =>    LOAD_B,         
                  LOAD_SPW             =>    LOAD_SPW,
                  PC_INC               =>    PC_INC,         
                  ALU_SIGNAL           =>    ALU_SIGNAL,      
                  ALU_BUS              =>    ALU_BUS,         
                  A_SRC_MUX            =>    A_SRC_MUX ,      
                  A_BUS                =>    A_BUS,            
                  LOAD_A               =>    LOAD_A,         
                  PORT_SELECT          =>    PORT_SELECT,      -->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Falta
                  PORT_BUS             =>    PORT_BUS,         
                  WR_PORT              =>    WR_PORT,         -->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>Falta
                  ENABLE_PORT          =>    ENABLE_PORT,            -- Activacion de puerto en especifico
                  SEL_BUS              =>    SEL_BUS,                 -- Salida para el multiplexor del BUS
                  SEL_PORT_OR_BUS      =>    SEL_PORT_OR_BUS
         );

SPW_F : SPW
port map(
                  in_SPW         =>    SPW_IN,
                  out_SPW        =>    SPW_OUT,
                  load_SPW       =>    LOAD_SPW,         -- Se uso la señal de activacion de regA para cargar el SPW
                  load_CJNE      =>    LOAD_CJNE,         --HACE FALTA ESTA SEÑAL
                  clk            =>    clk
         );

Phase_gen_F : phase_gen
port map(
               clear_phase       =>    '1',      -- Tambien hace falta definir esta
               clk               =>    clk,
               out_phase         =>    PHASE
         );

Port_A : port_4
port map(
               bus_in            =>    BUS_OUT( 7 DOWNTO 0),
               port_in           =>    PORT_A_IN,
               clk               =>    clk,
               sel               =>    SEL_PORT_OR_BUS,         
               bus_out           =>    PORT_A_OUT1,
               enable_port       =>    ENABLE_PORT,      
               port_out          =>    PORT_A_OUT
         );

Port_B : portb_4
port map(
               bus_in            =>    BUS_OUT (7 DOWNTO 0),
               port_in           =>    PORT_B_IN,
               clk               =>    clk,
               sel               =>    SEL_PORT_OR_BUS,         
               bus_out           =>    PORT_B_OUT1,
               enable_port       =>    ENABLE_PORT,         
               port_out          =>    PORT_B_OUT
         );

         
Port_C : port_8
port map(
               bus_in            =>    BUS_OUT(7 DOWNTO 0),
               port_in           =>    PORT_C_IN,
               sel               =>    SEL_PORT_OR_BUS,               
               clk               =>    clk,
               enable_port       =>    ENABLE_PORT,
               bus_out           =>    PORT_C_OUT1, 
               port_out          =>    PORT_C_OUT
         );
         
PC_F : PC_MODULE
port map(
               ram_in            =>    RAM_OUT(6 downto 0), --this is required to be 7 bits long
               pm_in             =>    ADDR_PM,
               clk               =>    clk,
               sel               =>    PC_SRC_MUX,
               load_pc           =>    LOAD_PC,
               inc_pc            =>    PC_INC,
               pc_out            =>    PC_OUT(6 DOWNTO 0)
         );

RAM_Memory_F : RAM_Memory
port map(
               out_data          =>    RAM_OUT(7 DOWNTO 0),
               clk               =>    clk,
               PC                =>    PC_OUT(6 DOWNTO 0),
               regA              =>    A_OUT(7 DOWNTO 0), 
               PM                =>    ADDR_PM (4 DOWNTO 0),
               SPTR              =>    ADDR_SPTR,
               sel_mbr           =>    MBR_MUX,
               sel_mar           =>    MAR_MUX,
               CE                =>    LOAD_MS_MUX,
               WE                =>    WR_RAM
         );

STKPTR_F : stkptr
port map(
            clk                  =>    clk,
            dec_stack            =>    SPTR_DEC,
            inc_stack            =>    SPTR_INC,
            out_dir              =>    ADDR_SPTR
         );

PM_F : Program_Memory
port map(
            in_addr_pc           =>    PC_OUT(6 DOWNTO 0),
            out_uinst            =>    INST_PM,
            out_addr             =>    ADDR_PM,
            out_data             =>    DATA_PM,
            clk                  =>    clk,
            load                 =>    ReadMem
         );

ALU_F: alu       
port map(
            A_F                  =>    A_OUT(7 DOWNTO 0),
            B_F                  =>    B_OUT(7 DOWNTO 0),
         --   spw => (SPW_IN,SPW_OUT),
            spw_in               =>    SPW_OUT,
            spw_out              =>    SPW_IN,
            q                    =>    ALU_OUT,
            sel                  =>    ALU_SIGNAL
         );

reg_a_F : reg_a
port map(
            in_bus               =>    BUS_OUT,
            in_ram               =>    RAM_OUT,
            load_a               =>    LOAD_A,
            sel                  =>    A_SRC_MUX,
            a_out                =>    A_OUT,
            clk                  =>    clk
);

reg_b_F : reg_b
port map(
            in_bus               =>    BUS_OUT ,
            out_bus              =>    B_OUT,
            load_b               =>    LOAD_B,
            clk                  =>    clk
);

BUS_F : data_bus
port map(
            pm                   =>    DATA_PM,
            alu                  =>    ALU_OUT,
            a                    =>    A_OUT,
            b                    =>    B_OUT,
            RegBank              =>    REG_BANK_OUT,
            port_a               =>    PORT_A_OUT1,
            port_b               =>    PORT_B_OUT1,
            port_c               =>    PORT_C_OUT1,
            sel                  =>    SEL_BUS,                  
            q                    =>    BUS_OUT                                                                                                     
            
         );

end Behavioral;

