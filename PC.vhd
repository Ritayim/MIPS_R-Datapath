----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2020 06:52:38 PM
-- Design Name: 
-- Module Name: PC - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( reset : in STD_LOGIC;
           clock : in STD_LOGIC;
           inst_in : in STD_LOGIC_VECTOR(31 downto 0);
           inst_out: out STD_LOGIC_VECTOR(31 downto 0));
end PC;

architecture Behavioral of PC is

begin
process(reset,clock)
begin
    if(clock'event and clock='1') then
        if(reset = '1') then
            inst_out <= (others => '0');
        else
            inst_out <= inst_in;
        end if;
    end if;
end process;
end Behavioral;
