library ieee;
use ieee.std_logic_1164.all;


entity tb_SimpleWire is
end tb_SimpleWire;

architecture behavioural of tb_SimpleWire is 
    signal tb_i_in : std_logic:='0';
    signal tb_o_out : std_logic;
begin
    UUT : entity work.SimpleWire
        port map(
            i_in => tb_i_in,
            o_out => tb_o_out
        );

    stim_proc: process
    begin
        tb_i_in <= '0'; wait for 10 ns;
        tb_i_in <= '1'; wait for 10 ns;
        tb_i_in <= '0'; wait for 10 ns;

        report "tb_i_in = " & std_logic'image(tb_i_in) & ", tb_o_out = " & std_logic'image(tb_o_out);

        wait;
    end process stim_proc;


end architecture;