library ieee;
use ieee.std_logic_1164.all;

entity tb_norgate_v2 is
end entity;

architecture sim of tb_norgate_v2 is
    signal tb_i_in1 : STD_LOGIC := '1';
    signal tb_i_in2 : STD_LOGIC := '1';
    signal tb_o_out : STD_LOGIC ;
begin
    UUT: entity work.norgate_v1
        port map (
            i_in1 => tb_i_in1,
            i_in2 => tb_i_in2,
            o_out => tb_o_out
        );

    process
    begin
        while TRUE loop
            tb_i_in1 <= not tb_i_in1;
            wait for 20 ns;
        end loop;
    end process;

    process
    begin
        while TRUE loop
            tb_i_in2 <= not tb_i_in2;
            wait for 10 ns;
        end loop;
    end process;

    end_sim: process
    begin
        wait for 600 ns;
        assert FALSE report "Simulation finished" severity FAILURE;
    end process;

    text_sim: process (tb_i_in1, tb_i_in2, tb_o_out)
    begin
        report "Time=" & integer'image(now/1 ns) &
            "ns | in1=" & std_logic'image(tb_i_in1) &
            " | in2= "  & std_logic'image(tb_i_in2) &
            " | out="   & std_logic'image(tb_o_out);
    end process;

end sim;