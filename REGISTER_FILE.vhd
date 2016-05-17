library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity REGISTER_FILE is
    Port ( rs1 : in  STD_LOGIC_VECTOR (5 downto 0);
           rs2 : in  STD_LOGIC_VECTOR (5 downto 0);
           rd : in  STD_LOGIC_VECTOR (5 downto 0);
           reset : in  STD_LOGIC;
           datawrite : in  STD_LOGIC_VECTOR (31 downto 0);
			  writeEnable : in  STD_LOGIC;
           CRs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           CRs2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  CRD : out STD_LOGIC_VECTOR (31 downto 0));
end REGISTER_FILE;

architecture Behavioral of REGISTER_FILE is

	type ram is array (0 to 39) of std_logic_vector (31 downto 0);
	signal registro : ram :=(others => x"00000000");

begin

	process(reset,rs1,rs2,rd,datawrite)
	begin
	
			registro(0) <= x"00000000";
			if(reset = '1')then
				CRs1 <= (others=>'0');
				CRs2 <= (others=>'0');
				registro <= (others => x"00000000");
				
			else
				CRs1 <= registro(conv_integer(rs1));
				CRs2 <= registro(conv_integer(rs2));
				CRD <= registro(conv_integer(rd));
				if(writeEnable = '1' and rd /= "000000")then  
					registro(conv_integer(rd)) <= datawrite;
				end if;
			end if;
			
	end process;

end Behavioral;