----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 05:35:15 PM
-- Design Name: 
-- Module Name: tb_Bai_1 - Behavioral
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

entity tb_Bai_1 is
--  Port ( );
end tb_Bai_1;

architecture Behavioral of tb_Bai_1 is
component Bai_1 is
Port ( A : in std_logic;
        B : in std_logic;
        C : in std_logic;
        F : out std_logic);
end component;
signal A :  std_logic :='0';
signal   B : std_logic:='0';
signal  C : std_logic:='0';
 signal  F :std_logic;
begin
bai1: Bai_1 port map(A => A, B => B, C => C, F => F);
tb: process
begin
wait for 10ns;
A <= '0';B <='0'; C<='1';
wait for 10ns;
A <= '0';B <='1'; C<='0';
wait for 10ns;
A <= '0';B <='1'; C<='1';
wait for 10ns;
A <= '1';B <='0'; C<='0';
wait for 10ns;
A <= '1';B <='0'; C<='1';
wait for 10ns;
A <= '1';B <='1'; C<='0';
wait for 10ns;
A <= '1';B <='1'; C<='1';
wait;
end process;

end Behavioral;
