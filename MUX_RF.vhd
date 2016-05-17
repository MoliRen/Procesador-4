library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_RF is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (5 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (5 downto 0);
           MUXRF_out : out  STD_LOGIC_VECTOR (5 downto 0);
           i : in  STD_LOGIC);
end MUX_RF;

architecture Behavioral of MUX_RF is

begin

	process (entrada1, entrada2, i)
	begin
	
		if (i = '0') then
			MUXRF_out <= entrada1;
		else
			MUXRF_out <= entrada2;
		end if;
	
	end process;

end Behavioral;
