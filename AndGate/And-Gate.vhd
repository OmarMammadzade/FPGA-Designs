library ieee;
use ieee.std_logic_1164.all;

entity andgate_v1 is
    port (
        i_in1 : in std_logic;
        i_in2 : in std_logic;
        o_out : out STD_LOGIC
    );
end entity;

architecture rtl of andgate_v1 is

begin

    o_out <= i_in1 and i_in2;

end architecture;