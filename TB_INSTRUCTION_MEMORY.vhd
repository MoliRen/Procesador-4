--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:12:33 05/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Carlos Andres/Desktop/projects/TB_INSTRUCTION_MEMORY.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: INSTRUCTION_MEMORY
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
 
ENTITY TB_INSTRUCTION_MEMORY IS
END TB_INSTRUCTION_MEMORY;
 
ARCHITECTURE behavior OF TB_INSTRUCTION_MEMORY IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT INSTRUCTION_MEMORY
    PORT(
         reset : IN  std_logic;
         IM_in : IN  std_logic_vector(31 downto 0);
         IM_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal IM_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal IM_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: INSTRUCTION_MEMORY PORT MAP (
          reset => reset,
          IM_in => IM_in,
          IM_out => IM_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      reset <='1';
		IM_in <= x"00000001";
      wait for 100 ns;	
		reset <='0';
		IM_in <= x"00000002";

      -- insert stimulus here 

      wait;
   end process;

END;
