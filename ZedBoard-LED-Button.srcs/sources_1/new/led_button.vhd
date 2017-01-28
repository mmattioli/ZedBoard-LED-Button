--
-- Written by Michael Mattioli
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity button_led is
    Port ( button_0 : in STD_LOGIC;
           button_1 : in STD_LOGIC;
           LED_0 : out STD_LOGIC;
           LED_1 : out STD_LOGIC);
end button_led;

architecture Behavioral of button_led is
    
begin
LED_0 <= button_0; -- turn on LED_0 when button_0 is pressed
LED_1 <= button_1; -- turn on LED_1 when button_1 is pressed
end Behavioral;