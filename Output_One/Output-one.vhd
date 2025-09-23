library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_module is
  Port ( 
    one : out std_logic
   );
end top_module;

architecture Behavioral of top_module is

begin
    
    one <= '1';

end Behavioral;
