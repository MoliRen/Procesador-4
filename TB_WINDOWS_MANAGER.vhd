--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:50:51 05/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Carlos Andres/Desktop/projects/TB_WINDOWS_MANAGER.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: WINDOWS_MANAGER
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
 
ENTITY TB_WINDOWS_MANAGER IS
END TB_WINDOWS_MANAGER;
 
ARCHITECTURE behavior OF TB_WINDOWS_MANAGER IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT WINDOWS_MANAGER
    PORT(
         Op : IN  std_logic_vector(1 downto 0);
         Op3 : IN  std_logic_vector(5 downto 0);
         rs1 : IN  std_logic_vector(4 downto 0);
         rs2 : IN  std_logic_vector(4 downto 0);
         rd : IN  std_logic_vector(4 downto 0);
         cwp : IN  std_logic;
         nrs1 : OUT  std_logic_vector(5 downto 0);
         nrs2 : OUT  std_logic_vector(5 downto 0);
         nrd : OUT  std_logic_vector(5 downto 0);
         ncwp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Op : std_logic_vector(1 downto 0) := (others => '0');
   signal Op3 : std_logic_vector(5 downto 0) := (others => '0');
   signal rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal rd : std_logic_vector(4 downto 0) := (others => '0');
   signal cwp : std_logic := '0';

 	--Outputs
   signal nrs1 : std_logic_vector(5 downto 0);
   signal nrs2 : std_logic_vector(5 downto 0);
   signal nrd : std_logic_vector(5 downto 0);
   signal ncwp : std_logic;
   
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WINDOWS_MANAGER PORT MAP (
          Op => Op,
          Op3 => Op3,
          rs1 => rs1,
          rs2 => rs2,
          rd => rd,
          cwp => cwp,
          nrs1 => nrs1,
          nrs2 => nrs2,
          nrd => nrd,
          ncwp => ncwp
        );
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
			cwp <= '0';
			Op <= "10";
			Op3 <= "111101";
			rs1 <= "00100";
			rs2 <= "01110";
			rd <= "11100";		
			wait for 100 ns;	
			cwp <= '0';
			Op <= "10";
			Op3 <= "111100";
			rs1 <= "00100";
			rs2 <= "01110";
			rd <= "11100";
			wait for 100 ns;	
			cwp <= '1';
			Op <= "10";
			Op3 <= "111101";
			rs1 <= "00100";
			rs2 <= "01110";
			rd <= "11100";
			
      wait;
   end process;

END;
