library ieee;
use ieee.std_logic_1164.all;

entity logicsystem_v1 is
    port (
        i_in1 : in std_logic;
        i_in2 : in std_logic;
        i_in3 : in std_logic;
        i_in4 : in std_logic;

        o_out : out std_logic;
        o_out_n : out std_logic
    );
end entity;

architecture rtl of logicsystem_v1 is
    signal w1, w2, w3 : STD_LOGIC;
begin

    w1 <= i_in1 and i_in2;
    w2 <= i_in3 and i_in4;
    w3 <= w1 or w2;
    o_out <= w3;
    o_out_n <= not w3;

end architecture;