library ieee;
use ieee.std_logic_1164.all;

entity fourwires_v1 is
    port(
        i_in_a : in std_logic;
        i_in_b : in std_logic;
        i_in_c : in std_logic;

        o_out_w : out std_logic;
        o_out_x : out std_logic;
        o_out_y : out std_logic;
        o_out_z : out std_logic
    );
end fourwires_v1;

architecture structural of fourwires_v1 is
begin
    o_out_w <= i_in_a;
    o_out_x <= i_in_b;
    o_out_y <= i_in_b;
    o_out_z <= i_in_c;
end structural;