--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:59:08 05/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Carlos Andres/Desktop/projects/TB_ALU.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY TB_ALU IS
END TB_ALU;
 
ARCHITECTURE behavior OF TB_ALU IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         c : IN  std_logic;
         ALUOp : IN  std_logic_vector(5 downto 0);
         in1 : IN  std_logic_vector(31 downto 0);
         in2 : IN  std_logic_vector(31 downto 0);
         ALUResult : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal c : std_logic := '0';
   signal ALUOp : std_logic_vector(5 downto 0) := (others => '0');
   signal in1 : std_logic_vector(31 downto 0) := (others => '0');
   signal in2 : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal ALUResult : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          c => c,
          ALUOp => ALUOp,
          in1 => in1,
          in2 => in2,
          ALUResult => ALUResult
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		in1 <= x"0000002A";
		in2 <= x"0000000F";
		c <= '1';
		
		ALUOp <= "000001";
		wait for 100 ns;
	
		ALUOp <= "000010";
		wait for 100 ns;
		
		ALUOp <= "000011";
		wait for 100 ns;
		
		ALUOp <= "000100";
		wait for 100 ns;
		
		ALUOp <= "000101";
		wait for 100 ns;
		
		ALUOp <= "000110";
		wait for 100 ns;
		
		ALUOp <= "000111";
		wait for 100 ns;
		
		ALUOp <= "001000";		
		wait for 100 ns;
		
		ALUOp <= "001101";
		wait for 100 ns;
		
		ALUOp <= "001011";

      wait;
   end process;

END;
