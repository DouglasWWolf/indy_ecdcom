
# ---------------------------------------------------------------------------
# Pin definitions
# ---------------------------------------------------------------------------


#===============================================================================
#                            Clocks & system signals
#===============================================================================

#
# Presume the clocks have 300ps of jitter to force place&route to allow more margin on timing
#
set_system_jitter 0.300

#
# 200 Mhz init clock
#
set_property -dict {PACKAGE_PIN G16  IOSTANDARD LVDS}   [get_ports init_clk_clk_n]
set_property -dict {PACKAGE_PIN G17  IOSTANDARD LVDS}   [get_ports init_clk_clk_p]


#
# PCIe endpoint refclk
#
set_property -dict {PACKAGE_PIN U29}          [get_ports pcie_refclk_clk_p]
set_property -dict {PACKAGE_PIN U30}          [get_ports pcie_refclk_clk_n]  
create_clock -period 10.000 -name pcie_sysclk [get_ports pcie_refclk_clk_p]
#set_clock_groups -name group_pcie_sysclk -asynchronous -group [get_clocks pcie_sysclk]


#
# LEDs
#
#set_property -dict {PACKAGE_PIN AW26  IOSTANDARD LVCMOS18} [ get_ports LED[0] ]
#set_property -dict {PACKAGE_PIN AW23  IOSTANDARD LVCMOS18} [ get_ports LED[1] ]
#set_property -dict {PACKAGE_PIN AW25  IOSTANDARD LVCMOS18} [ get_ports LED[2] ]
#set_property -dict {PACKAGE_PIN AU23  IOSTANDARD LVCMOS18} [ get_ports LED[3] ]
#set_property -dict {PACKAGE_PIN AU25  IOSTANDARD LVCMOS18} [ get_ports LED[4] ]
#set_property -dict {PACKAGE_PIN AV23  IOSTANDARD LVCMOS18} [ get_ports LED[5] ]
#set_property -dict {PACKAGE_PIN AW24  IOSTANDARD LVCMOS18} [ get_ports LED[6] ]
#set_property -dict {PACKAGE_PIN AV25  IOSTANDARD LVCMOS18} [ get_ports LED[7] ]



#
# Clock inputs for QSFP 0
#
#set_property PACKAGE_PIN AE29 [get_ports qsfp0_clk_clk_p]
#set_property PACKAGE_PIN AE30 [get_ports qsfp0_clk_clk_n]


#
# Clock inputs for QSFP 1
#
#set_property PACKAGE_PIN AB27 [get_ports qsfp1_clk_clk_p]
#set_property PACKAGE_PIN AB28 [get_ports qsfp1_clk_clk_n]

#
# QSFP control and status
#
#set_property -dict {PACKAGE_PIN AW13  IOSTANDARD LVCMOS18} [ get_ports qsfp_present_l[0] ]
#set_property -dict {PACKAGE_PIN AV12  IOSTANDARD LVCMOS18} [ get_ports qsfp_present_l[1] ]

#set_property -dict {PACKAGE_PIN AM12  IOSTANDARD LVCMOS18} [ get_ports qsfp_rst_l[0] ]
#set_property -dict {PACKAGE_PIN AR11  IOSTANDARD LVCMOS18} [ get_ports qsfp_rst_l[1] ]

#set_property -dict {PACKAGE_PIN AN12  IOSTANDARD LVCMOS18} [ get_ports qsfp_lp[0] ]
#set_property -dict {PACKAGE_PIN AM13  IOSTANDARD LVCMOS18} [ get_ports qsfp_lp[1] ]


#
#  Sensor chip power rail enables
#
#set_property -dict {PACKAGE_PIN AW10  IOSTANDARD LVCMOS18           } [get_ports CHIP_RESET_N];  # IO Bank 65
#set_property -dict {PACKAGE_PIN B9    IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports CHIP_VDDIO  ];  # IO Bank 91
#set_property -dict {PACKAGE_PIN B10   IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports CHIP_VDDA   ];  # IO Bank 91 
#set_property -dict {PACKAGE_PIN B11   IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports CHIP_VDDLVDS];  # IO Bank 91 
#set_property -dict {PACKAGE_PIN A18   IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports CHIP_VDD    ];  # IO Bank 71
#set_property -dict {PACKAGE_PIN B30   IOSTANDARD LVCMOS18           } [get_ports CHIP_DETECT_8M];  # IO Bank 71



#
#  This enables a level translator for SPI pins on the sensor-chip (active low)
#
#set_property -dict {PACKAGE_PIN A4     IOSTANDARD LVCMOS18   SLEW SLOW } [get_ports LVL_TRSL_OE_N];  # IO Bank 90



#
#  UCI ADC bus - contains 3 LTC-1867L ADCs
#
#set_property -dict {PACKAGE_PIN C25   IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports UCI_ADC_CSN[0]];  # IO Bank 70
#set_property -dict {PACKAGE_PIN R15   IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports UCI_ADC_CSN[1]];  # IO Bank 93
#set_property -dict {PACKAGE_PIN K25   IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports UCI_ADC_CSN[2]];  # IO Bank 69
#set_property -dict {PACKAGE_PIN J13   IOSTANDARD LVCMOS18           } [get_ports UCI_ADC_MISO  ];  # IO Bank 94
#set_property -dict {PACKAGE_PIN C24   IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports UCI_ADC_MOSI  ];  # IO Bank 70
#set_property -dict {PACKAGE_PIN J23   IOSTANDARD LVCMOS18  SLEW SLOW} [get_ports UCI_ADC_SCK   ];  # IO Bank 70




#
# FPGA outputs to control the sensor chip GPIO inputs
#
#set_property -dict {PACKAGE_PIN H12    IOSTANDARD LVCMOS18   SLEW SLOW } [get_ports CHIP_GPIO[0]];  # IO Bank 94
#set_property -dict {PACKAGE_PIN H10    IOSTANDARD LVCMOS18   SLEW SLOW } [get_ports CHIP_GPIO[1]];  # IO Bank 94
#set_property -dict {PACKAGE_PIN G11    IOSTANDARD LVCMOS18   SLEW SLOW } [get_ports CHIP_GPIO[2]];  # IO Bank 94
#set_property -dict {PACKAGE_PIN G10    IOSTANDARD LVCMOS18   SLEW SLOW } [get_ports CHIP_GPIO[3]];  # IO Bank 94
#set_property -dict {PACKAGE_PIN G12    IOSTANDARD LVCMOS18   SLEW SLOW } [get_ports CHIP_GPIO[4]];  # IO Bank 94



# Non-LVDS sensor-chip signals
#set_property -dict {PACKAGE_PIN C12    IOSTANDARD LVCMOS18   SLEW SLOW  } [get_ports rs0          ];  # GPIO12 - IO Bank 94
#set_property -dict {PACKAGE_PIN B12    IOSTANDARD LVCMOS18   SLEW SLOW  } [get_ports GPIO13       ];  # IO Bank 94
#set_property -dict {PACKAGE_PIN A12    IOSTANDARD LVCMOS18   SLEW SLOW  } [get_ports rs256        ];  # GPIO14 - IO Bank 94
#set_property -dict {PACKAGE_PIN D13    IOSTANDARD LVCMOS18   SLEW SLOW  } [get_ports GPIO15       ];  # IO Bank 94
#set_property -dict {PACKAGE_PIN D10    IOSTANDARD LVCMOS18   SLEW SLOW  } [get_ports GPIO15_DIR   ];  # IO Bank 91
#set_property -dict {PACKAGE_PIN H13    IOSTANDARD LVCMOS18   SLEW SLOW  } [get_ports GPIO_BYTE_DIR];  # IO Bank 94
#set_property -dict {PACKAGE_PIN D12    IOSTANDARD LVCMOS18   SLEW SLOW  } [get_ports CHIP_PA_SYNC ];  # CHIP_GPIO11 - IO Bank 90







