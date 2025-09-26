library ieee;
use ieee.std_logic_1164.all;

entity tb_fourwires_v2 is
end entity;

architecture Sim_1 of tb_fourwires_v2 is
    signal tb_i_in_a :  STD_LOGIC := '0';
    signal tb_i_in_b :  STD_LOGIC := '0';
    signal tb_i_in_c :  STD_LOGIC := '0';

    signal tb_o_out_w :  STD_LOGIC ;
    signal tb_o_out_x :  STD_LOGIC ;
    signal tb_o_out_y :  STD_LOGIC ;
    signal tb_o_out_z :  STD_LOGIC ;
begin
    UUT : entity work.fourwires_v1
        port map (
            i_in_a => tb_i_in_a,
            i_in_b => tb_i_in_b,
            i_in_c => tb_i_in_c,
            o_out_w => tb_o_out_w,
            o_out_x => tb_o_out_x,
            o_out_y => tb_o_out_y,
            o_out_z => tb_o_out_z
        );
    process
    begin
        tb_i_in_a <= '0'; tb_i_in_b <= '0'; tb_i_in_c <= '0'; wait for 10 ns;
        tb_i_in_a <= '1'; tb_i_in_b <= '0'; tb_i_in_c <= '0'; wait for 10 ns;
        tb_i_in_a <= '0'; tb_i_in_b <= '1'; tb_i_in_c <= '0'; wait for 10 ns;
        tb_i_in_a <= '1'; tb_i_in_b <= '1'; tb_i_in_c <= '0'; wait for 10 ns;
        tb_i_in_a <= '0'; tb_i_in_b <= '0'; tb_i_in_c <= '1'; wait for 10 ns;
        tb_i_in_a <= '1'; tb_i_in_b <= '0'; tb_i_in_c <= '1'; wait for 10 ns;
        tb_i_in_a <= '0'; tb_i_in_b <= '1'; tb_i_in_c <= '1'; wait for 10 ns;
        tb_i_in_a <= '1'; tb_i_in_b <= '1'; tb_i_in_c <= '1'; wait for 10 ns;

        report "Simulation finished. Last Inputs = " &
            std_logic'image(tb_i_in_a) &
            std_logic'image(tb_i_in_b) &
            std_logic'image(tb_i_in_c) &
            " | Last Outputs = " &
            std_logic'image(tb_o_out_w) &
            std_logic'image(tb_o_out_x) &
            std_logic'image(tb_o_out_y) &
            std_logic'image(tb_o_out_z);

        assert false report "Simulation finished" severity failure;


    end process;
end architecture Sim_1;