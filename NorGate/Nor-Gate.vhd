library ieee;
use ieee.std_logic_1164.all;

entity norgate_v1 is
    port (
        i_in1    : in std_logic;
        i_in2    : in std_logic;
        o_out    : out std_logic
    );
end entity;

architecture rtl of norgate_v1 is

begin

    o_out <= i_in1 nor i_in2;

end architecture;