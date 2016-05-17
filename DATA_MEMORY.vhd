library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DATA_MEMORY is
    Port ( reset : in  STD_LOGIC;
           WEnable : in  STD_LOGIC;
           Address : in  STD_LOGIC_VECTOR (31 downto 0);
           Data : in  STD_LOGIC_VECTOR (31 downto 0);
           DMout : out  STD_LOGIC_VECTOR (31 downto 0));
end DATA_MEMORY;

architecture Behavioral of DATA_MEMORY is

	type ram_type is array (0 to 31) of std_logic_vector (31 downto 0);
	signal Memor� : ram_type:=(others => x"00000000");

begin

	process(reset, WEnable, Address, Data)
	begin		
		if(reset = '1')then
			DMout <= (others => '0');
			Memor� <= (others => x"00000000");
		else
			if(WEnable = '0')then
				DMout <= Memor�(conv_integer(Address(4 downto 0)));
			else
				DMout <= Memor�(conv_integer(Address(4 downto 0)));
				Memor�(conv_integer(Address(4 downto 0))) <= Data;
			end if;
		end if;
	end process;
end Behavioral;