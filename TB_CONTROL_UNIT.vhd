--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:01:20 05/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Carlos Andres/Desktop/projects/TB_CONTROL_UNIT.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CONTROL_UNIT
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
 
ENTITY TB_CONTROL_UNIT IS
END TB_CONTROL_UNIT;
 
ARCHITECTURE behavior OF TB_CONTROL_UNIT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CONTROL_UNIT
    PORT(
         Op : IN  std_logic_vector(1 downto 0);
         Op2 : IN  std_logic_vector(2 downto 0);
         Op3 : IN  std_logic_vector(5 downto 0);
         cond : IN  std_logic_vector(3 downto 0);
         icc : IN  std_logic_vector(3 downto 0);
         CU_out : OUT  std_logic_vector(5 downto 0);
         RFSOURCE : OUT  std_logic_vector(1 downto 0);
         PCSOURCE : OUT  std_logic_vector(1 downto 0);
         wrEnRF : OUT  std_logic;
         wrEnMe : OUT  std_logic;
         rfDest : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Op : std_logic_vector(1 downto 0) := (others => '0');
   signal Op2 : std_logic_vector(2 downto 0) := (others => '0');
   signal Op3 : std_logic_vector(5 downto 0) := (others => '0');
   signal cond : std_logic_vector(3 downto 0) := (others => '0');
   signal icc : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal CU_out : std_logic_vector(5 downto 0);
   signal RFSOURCE : std_logic_vector(1 downto 0);
   signal PCSOURCE : std_logic_vector(1 downto 0);
   signal wrEnRF : std_logic;
   signal wrEnMe : std_logic;
   signal rfDest : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL_UNIT PORT MAP (
          Op => Op,
          Op2 => Op2,
          Op3 => Op3,
          cond => cond,
          icc => icc,
          CU_out => CU_out,
          RFSOURCE => RFSOURCE,
          PCSOURCE => PCSOURCE,
          wrEnRF => wrEnRF,
          wrEnMe => wrEnMe,
          rfDest => rfDest
        );

   -- Clock process definitions

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      op <= "10";
		op3 <= "000000" ;
		wait for 100 ns;
		op3 <= "000100" ;
		wait for 100 ns; 
		op3 <= "000001" ;
		wait for 100 ns;
		op3 <= "000101" ;
		wait for 100 ns;
		op3 <= "000010" ;
		wait for 100 ns;
		op3 <= "000110" ;
		wait for 100 ns;
		op3 <= "000011" ;
		wait for 100 ns;
		op3 <= "000111" ;
      -- insert stimulus here 

      wait;
   end process;

END;
