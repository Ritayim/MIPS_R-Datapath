----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2020 10:52:25 PM
-- Design Name: 
-- Module Name: PC_ADD - Behavioral
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC_ADD is
    Port ( PC_in: in STD_LOGIC_VECTOR (31 downto 0);
           PC_out: out STD_LOGIC_VECTOR (31 downto 0));
end PC_ADD;

architecture Behavioral of PC_ADD is
signal four: STD_LOGIC_VECTOR (31 downto 0);
begin
four <= "00000000000000000000000000000100";
PC_out <= PC_in + four;

end Behavioral;

