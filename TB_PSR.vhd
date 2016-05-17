--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:20:29 05/16/2016
-- Design Name:   
-- Module Name:   C:/Users/Carlos Andres/Desktop/projects/TB_PSR.vhd
-- Project Name:  Procesador
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSR
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
 
ENTITY TB_PSR IS
END TB_PSR;
 
ARCHITECTURE behavior OF TB_PSR IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSR
    PORT(
         reset : IN  std_logic;
         clk : IN  std_logic;
         nzvc : IN  std_logic_vector(3 downto 0);
         ncwp : IN  std_logic;
         icc : OUT  std_logic_vector(3 downto 0);
         cwp : OUT  std_logic;
         psr_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';
   signal nzvc : std_logic_vector(3 downto 0) := (others => '0');
   signal ncwp : std_logic := '0';

 	--Outputs
   signal icc : std_logic_vector(3 downto 0);
   signal cwp : std_logic;
   signal psr_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR PORT MAP (
          reset => reset,
          clk => clk,
          nzvc => nzvc,
          ncwp => ncwp,
          icc => icc,
          cwp => cwp,
          psr_out => psr_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      reset <= '1';
		wait for 100 ns;	
		reset <= '0'; 
		nzvc <= X"1";       
		wait for 100 ns;
		nzvc <= x"0"; 

      wait;
   end process;

END;
