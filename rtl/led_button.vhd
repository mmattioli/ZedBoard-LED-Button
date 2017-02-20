--
-- Written by Michael Mattioli
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity button_led is
    Port ( buttons : in STD_LOGIC_VECTOR(4 downto 0); -- 5 buttons
           LEDs : out STD_LOGIC_VECTOR(7 downto 0)); -- 8 LEDs
end button_led;

architecture Behavioral of button_led is
    
begin
-- first 5 LEDs are directly mapped to each of the 5 buttons
LEDs(7 downto 3) <= buttons(4 downto 0);
-- illuminate the other 3 LEDs using boolean logic
LEDs(0) <= buttons(0) AND buttons(1);
LEDs(1) <= buttons(2) AND buttons(3);
LEDs(2) <= buttons(4) AND buttons(0);
end Behavioral;