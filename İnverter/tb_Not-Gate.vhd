library ieee;
use ieee.std_logic_1164.all;


entity tb_notgate is
end tb_notgate;

architecture sim of tb_notgate is
    signal tb_in_sig  : STD_LOGIC := '0';
    signal tb_out_sig : STD_LOGIC;
begin
    
    uut : entity work.notgate
        port map (
            i_in  => tb_in_sig,
            o_out => tb_out_sig
        );

    process
    begin
        for i in 1 to 13 loop
            tb_in_sig <= not tb_in_sig;
            wait for 10 ns;
        end loop;
        assert false report "Simulation finished" severity FAILURE;
    end process;
end sim;