
#===============================================================================
#  FPGA Pins for the ecdcom BDC
#===============================================================================


#
# LEDs
#
set_property -dict {PACKAGE_PIN AW24  IOSTANDARD LVCMOS18} [ get_ports qsfp1_up ]
set_property -dict {PACKAGE_PIN AV25  IOSTANDARD LVCMOS18} [ get_ports qsfp0_up ]


#
# Clock inputs for QSFP 0
#
set_property PACKAGE_PIN AE29 [get_ports qsfp0_clk_clk_p]
set_property PACKAGE_PIN AE30 [get_ports qsfp0_clk_clk_n]


#
# Clock inputs for QSFP 1
#
set_property PACKAGE_PIN AB27 [get_ports qsfp1_clk_clk_p]
set_property PACKAGE_PIN AB28 [get_ports qsfp1_clk_clk_n]


#
# QSFP related control pins
#
set_property -dict {PACKAGE_PIN AM12  IOSTANDARD LVCMOS18} [ get_ports qsfp_rst_l[0] ]
set_property -dict {PACKAGE_PIN AR11  IOSTANDARD LVCMOS18} [ get_ports qsfp_rst_l[1] ]

set_property -dict {PACKAGE_PIN AN12  IOSTANDARD LVCMOS18} [ get_ports qsfp_lp[0] ]
set_property -dict {PACKAGE_PIN AM13  IOSTANDARD LVCMOS18} [ get_ports qsfp_lp[1] ]

