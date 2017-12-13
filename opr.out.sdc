## Generated SDC file "opr.out.sdc"

## Copyright (C) 2017  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel MegaCore Function License Agreement, or other 
## applicable license agreement, including, without limitation, 
## that your use is for the sole purpose of programming logic 
## devices manufactured by Intel and sold by Intel or its 
## authorized distributors.  Please refer to the applicable 
## agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

## DATE    "Wed Dec 13 21:21:04 2017"

##
## DEVICE  "5CGXFC7C7F23C8"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clock} -period 50.000 -waveform { 0.000 5.000 } [get_ports {clock}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clock}] -rise_to [get_clocks {clock}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clock}] -rise_to [get_clocks {clock}] -hold 0.060  
set_clock_uncertainty -rise_from [get_clocks {clock}] -fall_to [get_clocks {clock}] -setup 0.100  
set_clock_uncertainty -rise_from [get_clocks {clock}] -fall_to [get_clocks {clock}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {clock}] -rise_to [get_clocks {clock}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {clock}] -rise_to [get_clocks {clock}] -hold 0.060  
set_clock_uncertainty -fall_from [get_clocks {clock}] -fall_to [get_clocks {clock}] -setup 0.100  
set_clock_uncertainty -fall_from [get_clocks {clock}] -fall_to [get_clocks {clock}] -hold 0.060  


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

set_max_delay -from [get_keepers {a[0] a[1] a[2] a[3] b[0] b[1] b[2] b[3]}] -to [get_keepers {register:regi_1|Q[0] register:regi_1|Q[0]~DUPLICATE register:regi_1|Q[1] register:regi_1|Q[2] register:regi_1|Q[2]~DUPLICATE register:regi_1|Q[3] register:regi_2|Q[0] register:regi_2|Q[1] register:regi_2|Q[2] register:regi_2|Q[3] register:regi_3|Q[0] register:regi_3|Q[1] register:regi_3|Q[2] register:regi_3|Q[3] register:regi_4|Q[0] register:regi_4|Q[1] register:regi_4|Q[2] register:regi_4|Q[2]~DUPLICATE register:regi_4|Q[3] register:regi_5|Q[1] register:regi_5|Q[1]~DUPLICATE register:regi_7|Q[0] register:regi_7|Q[1] register:regi_7|Q[2] register:regi_7|Q[3]}] 8.000
set_max_delay -from [get_keepers {register:regi_7|Q[0] register:regi_7|Q[1] register:regi_7|Q[3] register:regi_7|Q[2]}] -to [get_ports {cout[0] cout[1] cout[2] cout[3]}] 10.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_keepers {a[0] a[1] a[2] b[0] a[3] b[1] b[2] b[3]}] -to [get_keepers {register:regi_2|Q[0] register:regi_2|Q[1] register:regi_2|Q[2] register:regi_2|Q[3] register:regi_3|Q[0] register:regi_3|Q[1] register:regi_3|Q[2] register:regi_3|Q[3]}] 0.000
set_min_delay -from [get_keepers {register:regi_7|Q[3] register:regi_7|Q[2] register:regi_7|Q[1] register:regi_7|Q[0]}] -to [get_ports {cout[0] cout[1] cout[2] cout[3]}] 0.000


#**************************************************************
# Set Input Transition
#**************************************************************

