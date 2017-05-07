--
-- Written by Michael Mattioli
--

library ieee;
use ieee.std_logic_1164.ALL;

entity led_button is
    port ( buttons  : in std_logic_vector (4 downto 0); -- 5 buttons
           leds     : out std_logic_vector (7 downto 0)); -- 8 LEDs
end led_button;

architecture behavioral of led_button is

begin

    -- First 5 LEDs are directly mapped to each of the 5 buttons
    leds(7 downto 3) <= buttons(4 downto 0);

    -- Illuminate the other 3 LEDs using boolean logic
    leds(0) <= buttons(0) and buttons(1);
    leds(1) <= buttons(2) and buttons(3);
    leds(2) <= buttons(4) and buttons(0);

end behavioral;
