library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_top_module is
end tb_top_module;

architecture sim of tb_top_module is
    signal one_sig : std_logic;
begin

    uut: entity work.top_module
        port map (
            one => one_sig
        );

    process
    begin
        report "Simulation started. Output one = " & std_logic'image(one_sig);

        wait for 10 ns;

        report "At 10 ns, output one = " & std_logic'image(one_sig);

        wait;
    end process;

end sim;
