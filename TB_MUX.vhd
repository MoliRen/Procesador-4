--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:16:14 05/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Carlos Andres/Desktop/projects/TB_MUX.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
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
 
ENTITY TB_MUX IS
END TB_MUX;
 
ARCHITECTURE behavior OF TB_MUX IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         entrada1 : IN  std_logic_vector(31 downto 0);
         entrada2 : IN  std_logic_vector(31 downto 0);
         MUX_out : OUT  std_logic_vector(31 downto 0);
         i : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal entrada1 : std_logic_vector(31 downto 0) := (others => '0');
   signal entrada2 : std_logic_vector(31 downto 0) := (others => '0');
   signal i : std_logic := '0';

 	--Outputs
   signal MUX_out : std_logic_vector(31 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          entrada1 => entrada1,
          entrada2 => entrada2,
          MUX_out => MUX_out,
          i => i
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      entrada1 <= x"00031201";
		entrada2 <= x"0120020A";
		i <= '0';
      wait for 100 ns;	
		i <= '1';

      wait;
   end process;

END;