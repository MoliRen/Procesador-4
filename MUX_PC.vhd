library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_PC is
    Port ( entrada1 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada2 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada3 : in  STD_LOGIC_VECTOR (31 downto 0);
           entrada4 : in  STD_LOGIC_VECTOR (31 downto 0);
           MUXPC_out : out  STD_LOGIC_VECTOR (31 downto 0);
           i : in  STD_LOGIC_VECTOR (1 downto 0));
end MUX_PC;

architecture Behavioral of MUX_PC is

begin

	process (entrada1, entrada2, entrada3, entrada4, i)
	begin
	
		if (i = "00") then
			MUXPC_out <= entrada1;
		elsif (i = "01") then 
			MUXPC_out <= entrada2;
		elsif (i = "10") then 
			MUXPC_out <= entrada3;
		elsif (i = "11") then 
			MUXPC_out <= entrada4;
		end if;
	
	end process;
	
end Behavioral;
