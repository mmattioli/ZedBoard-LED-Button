set_property PACKAGE_PIN R18 [get_ports {button_0}];  # "BTNR"
set_property PACKAGE_PIN T18 [get_ports {button_1}];  # "BTNU"

set_property PACKAGE_PIN T22 [get_ports {LED_0}];  # "LD0"
set_property PACKAGE_PIN T21 [get_ports {LED_1}];  # "LD1"

# Bank voltage for IO Bank 33 is fixed to 3.3V on ZedBoard. 
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 33]];

# Set the bank voltage for IO Bank 34 to 1.8V by default.
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];