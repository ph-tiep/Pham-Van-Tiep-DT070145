library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_bai7 is
end tb_bai7;

architecture tb of tb_bai7 is
    component bai_7
        port (
            CLK : in  std_logic;
         
            Q   : out std_logic_vector(2 downto 0)
        );
    end component;

    signal CLK_tb : std_logic := '0';
    
    signal Q_tb   : std_logic_vector(2 downto 0);

    constant clk_period : time := 20 ns;
begin
    uut : bai_7
        port map (
            CLK => CLK_tb,
          
            Q   => Q_tb
        );

    clk_gen : process
    begin
        wait for clk_period/2;
        loop
            CLK_tb <= not CLK_tb;
            wait for clk_period/2;
        end loop;
    end process;

    rst_gen : process
    begin
        wait for 40 ns;
       
        wait;
    end process;


end tb;
