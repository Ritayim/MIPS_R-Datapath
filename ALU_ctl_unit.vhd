----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/02/2020 05:16:15 PM
-- Design Name: 
-- Module Name: ALU_ctl_unit - Behavioral
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

entity ALU_ctl_unit is
    Port ( ALU_Funct : in STD_LOGIC_VECTOR (5 downto 0);
           ALU_cntl : out STD_LOGIC_VECTOR (3 downto 0));
end ALU_ctl_unit;

architecture Behavioral of ALU_ctl_unit is

begin
process(ALU_Funct)
begin
case ALU_Funct is
when "100000" => ALU_cntl <= "0010"; --add
when "100001" => ALU_cntl <= "0010"; --add unisgned
when "100010" => ALU_cntl <= "0110"; --sub
when "100011" => ALU_cntl <= "0110"; --sub unsigned
when "100100" => ALU_cntl <= "0000"; --and
when "100101" => ALU_cntl <= "0001"; --or
when "100110" => ALU_cntl <= "0011"; --xor
when "100111" => ALU_cntl <= "1100"; --nor
when "101010" => ALU_cntl <= "0111"; --set less than
when "101011" => ALU_cntl <= "0111"; --set less than unsigned
when others => ALU_cntl <= "1111";

end case;
end process;
end Behavioral;
