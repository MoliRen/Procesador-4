--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:40:51 05/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Carlos Andres/Desktop/projects/TB_SEU.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SEU
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
 
ENTITY TB_SEU IS
END TB_SEU;
 
ARCHITECTURE behavior OF TB_SEU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SEU
    PORT(
         imm : IN  std_logic_vector(12 downto 0);
         SEU_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal imm : std_logic_vector(12 downto 0) := (others => '0');

 	--Outputs
   signal SEU_out : std_logic_vector(31 downto 0); 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SEU PORT MAP (
          imm => imm,
          SEU_out => SEU_out
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		imm <= "0100000000000";
      wait for 100 ns;	
		imm <= "1011111111111";

      wait;
   end process;

END;
