library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_DM is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada3 : in  STD_LOGIC_VECTOR (31 downto 0);
           MUXDM_out : out  STD_LOGIC_VECTOR (31 downto 0);
           i : in  STD_LOGIC_vector (1 downto 0));
end MUX_DM;

architecture Behavioral of MUX_DM is

begin

	process (entrada1, entrada2, entrada3, i)
	begin
	
		if (i = "00") then
			MUXDM_out <= entrada1;
		elsif (i = "01") then 
			MUXDM_out <= entrada2;
		elsif (i = "10") then 
			MUXDM_out <= entrada3;
		end if;
	
	end process;

end Behavioral;
