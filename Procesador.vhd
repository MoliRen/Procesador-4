
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Procesador is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador;

architecture Behavioral of Procesador is

	COMPONENT CU
	PORT(
		OP : IN std_logic_vector(1 downto 0);
		OP3 : IN std_logic_vector(5 downto 0);          
		ALU_OP : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;


		COMPONENT InstructionMemory
	PORT(
		RST : IN std_logic;
		Address : IN std_logic_vector(31 downto 0);          
		instruction_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
		COMPONENT Register_file
	PORT(
		rs1 : IN std_logic_vector(4 downto 0);
		rs2 : IN std_logic_vector(4 downto 0);
		rd : IN std_logic_vector(4 downto 0);
		RST : IN std_logic;
		DataToWrite : IN std_logic_vector(31 downto 0);          
		Crs1 : OUT std_logic_vector(31 downto 0);
		Crs2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT PC
	PORT(
		PC_IN : IN std_logic_vector(31 downto 0);
		CLK : IN std_logic;
		RST : IN std_logic;          
		PC_OUT : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	COMPONENT ADD
	PORT(
		PC_OUT : IN std_logic_vector(31 downto 0);          
		SUM : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT ALU
	PORT(
		ALU_OP : IN std_logic_vector(5 downto 0);
		CRs1 : IN std_logic_vector(31 downto 0);
		CRs2 : IN std_logic_vector(31 downto 0);          
		ALU_Result : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;


begin

	Inst_ALU: ALU PORT MAP(
		ALU_OP => ,
		CRs1 => ,
		CRs2 => ,
		ALU_Result => 
	);

	Inst_ADD: ADD PORT MAP(
		PC_OUT => ,
		SUM => 
	);
	

	
	Inst_CU: CU PORT MAP(
		OP => ,
		OP3 => ,
		ALU_OP => 
	);

	
	Inst_InstructionMemory: InstructionMemory PORT MAP(
		RST => ,
		Address => ,
		instruction_out => 
	);
	


	Inst_Register_file: Register_file PORT MAP(
		rs1 => ,
		rs2 => ,
		rd => ,
		RST => ,
		DataToWrite => ,
		Crs1 => ,
		Crs2 => 
	);
	
	Inst_PC: PC PORT MAP(
		PC_IN => ,
		CLK => ,
		RST => ,
		PC_OUT => 
	);
	
	Inst_PC2: PC PORT MAP(
		PC_IN => ,
		CLK => ,
		RST => ,
		PC_OUT => 
	);


end Behavioral;

