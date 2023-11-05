## Generated SDC file "lab2_0.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Tue Sep 12 13:46:37 2023"

##
## DEVICE  "5CSXFC6D6F31C6"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {my_clk} -period 12.500 -waveform { 10.000 16.250 } [get_ports *]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {my_clk}] -rise_to [get_clocks {my_clk}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {my_clk}] -rise_to [get_clocks {my_clk}] -hold 0.090  
set_clock_uncertainty -rise_from [get_clocks {my_clk}] -fall_to [get_clocks {my_clk}] -setup 0.170  
set_clock_uncertainty -rise_from [get_clocks {my_clk}] -fall_to [get_clocks {my_clk}] -hold 0.090  
set_clock_uncertainty -fall_from [get_clocks {my_clk}] -rise_to [get_clocks {my_clk}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {my_clk}] -rise_to [get_clocks {my_clk}] -hold 0.090  
set_clock_uncertainty -fall_from [get_clocks {my_clk}] -fall_to [get_clocks {my_clk}] -setup 0.170  
set_clock_uncertainty -fall_from [get_clocks {my_clk}] -fall_to [get_clocks {my_clk}] -hold 0.090  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

