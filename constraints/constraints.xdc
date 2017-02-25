# Buttons
set_property PACKAGE_PIN P16 [get_ports {buttons[0]}];  # "BTNC"
set_property PACKAGE_PIN R16 [get_ports {buttons[1]}];  # "BTND"
set_property PACKAGE_PIN N15 [get_ports {buttons[2]}];  # "BTNL"
set_property PACKAGE_PIN R18 [get_ports {buttons[3]}];  # "BTNR"
set_property PACKAGE_PIN T18 [get_ports {buttons[4]}];  # "BTNU"

# LEDs
set_property PACKAGE_PIN T22 [get_ports {leds[0]}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {leds[1]}];  # "LD1"
set_property PACKAGE_PIN U22 [get_ports {leds[2]}];  # "LD2"
set_property PACKAGE_PIN U21 [get_ports {leds[3]}];  # "LD3"
set_property PACKAGE_PIN V22 [get_ports {leds[4]}];  # "LD4"
set_property PACKAGE_PIN W22 [get_ports {leds[5]}];  # "LD5"
set_property PACKAGE_PIN U19 [get_ports {leds[6]}];  # "LD6"
set_property PACKAGE_PIN U14 [get_ports {leds[7]}];  # "LD7"

# Bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard.
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
