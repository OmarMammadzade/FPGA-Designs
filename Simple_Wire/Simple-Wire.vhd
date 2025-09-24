library ieee;
use ieee.std_logic_1164.all;

entity SimpleWire is
    port(
        i_in    : in    std_logic;
        o_out   : out   std_logic
    );
end SimpleWire;

architecture behavioral of SimpleWire is
begin
    o_out <= i_in;
end behavioral; 