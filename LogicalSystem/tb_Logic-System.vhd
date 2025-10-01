library ieee;
use ieee.std_logic_1164.all;

entity logicsystem_v2 is
end entity;

architecture sim of logicsystem_v2 is
    signal tb_i_in1 : STD_LOGIC := '0';
    signal tb_i_in2 : STD_LOGIC := '0';
    signal tb_i_in3 : STD_LOGIC := '0'; 
    signal tb_i_in4 : STD_LOGIC := '0'; 
    signal tb_o_out : STD_LOGIC;
    signal tb_o_out_n : STD_LOGIC;
begin

    UUT : entity work.logicsystem_v1
        port map(
            i_in1 => tb_i_in1,
            i_in2 => tb_i_in2,
            i_in3 => tb_i_in3,
            i_in4 => tb_i_in4,
            o_out => tb_o_out,
            o_out_n => tb_o_out_n
        );

        simule : process
            variable i : integer := 0;
        begin
            while i < 16 loop
                
                if (i mod 2) = 1 then
                    tb_i_in1 <= '1';
                else
                    tb_i_in1 <= '0';
                end if;

                if (i/2 mod 2) = 1 then
                    tb_i_in2 <= '1';
                else
                    tb_i_in2 <= '0';
                end if;

                if (i/4 mod 2) = 1 then
                    tb_i_in3 <= '1';
                else
                    tb_i_in3 <= '0';
                end if;

                if (i/8 mod 2) = 1 then
                    tb_i_in4 <= '1';
                else
                    tb_i_in4 <= '0';
                end if;

            wait for 10 ns;
            i := i + 1;

            end loop;
        end process simule;

        endsim : process
        begin
            wait for 160 ns;
            assert FALSE
                report "Simulating Stopped"
                severity FAILURE;
        end process endsim;

        monitor_proc: process(tb_i_in1, tb_i_in2, tb_i_in3, tb_i_in4, tb_o_out, tb_o_out_n)
        begin
        report "Time=" & time'image(now) &
           " | tb_i_in1=" & std_logic'image(tb_i_in1) &
           " | tb_i_in2=" & std_logic'image(tb_i_in2) &
           " | tb_i_in3=" & std_logic'image(tb_i_in3) &
           " | tb_i_in4=" & std_logic'image(tb_i_in4) &
           " | tb_o_out=" & std_logic'image(tb_o_out) &
           " | tb_o_out_n=" & std_logic'image(tb_o_out_n);
        end process monitor_proc;
end architecture;