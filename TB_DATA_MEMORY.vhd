--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:10:32 05/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Carlos Andres/Desktop/projects/TB_DATA_MEMORY.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DATA_MEMORY
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_DATA_MEMORY IS
END TB_DATA_MEMORY;
 
ARCHITECTURE behavior OF TB_DATA_MEMORY IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DATA_MEMORY
    PORT(
         reset : IN  std_logic;
         WEnable : IN  std_logic;
         Address : IN  std_logic_vector(31 downto 0);
         Data : IN  std_logic_vector(31 downto 0);
         DMout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal WEnable : std_logic := '0';
   signal Address : std_logic_vector(31 downto 0) := (others => '0');
   signal Data : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal DMout : std_logic_vector(31 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DATA_MEMORY PORT MAP (
          reset => reset,
          WEnable => WEnable,
          Address => Address,
          Data => Data,
          DMout => DMout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      reset <= '1';
		WEnable <= '1';
		Address <= x"00001000";
		Data <= x"00001000";
      wait for 100 ns;	
		reset <= '0'; 
		WEnable <= '1';
		Address <= x"00000005";
		Data <= x"00000007";
		wait for 100 ns;	
		reset <= '0'; 
		WEnable <= '0';
		Address <= x"00000005";
		Data <= x"0000000F";
		wait for 100 ns;	
		reset <= '0'; 
		WEnable <= '1';
		Address <= x"00000005";
		Data <= x"0000000A";
      wait;

      wait;
   end process;

END;
