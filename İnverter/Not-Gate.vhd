library ieee;
use ieee.std_logic_1164.all;

entity notgate is
    port(
        i_in  : in std_logic;
        o_out : out std_logic
    );
end notgate;

architecture behavioral of notgate is
begin
    o_out <= not i_in;
end behavioral;