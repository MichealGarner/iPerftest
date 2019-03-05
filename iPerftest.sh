#!/bin/bash
#  --------------------------------------------------------------------------
#  © 2019 Micheal Garner           Version: 1.0                   Vodafone
#  --------------------------------------------------------------------------
# A script to automate iPerf bandwidth testing at 10Mb\s

# colour variables for use with echo statements
RED='\033[0;31m' # Red
NC='\033[0m' # No Color
BRed='\033[1;31m' # BOLD Red
UBlue='\033[4;34m' # Underlined Blue
BGreen='\033[1;32m' # BOLD Green
BIBlue='\033[1;94m'       # BOLD Intense Blue

# Startup banner purely intended to show off my bash skillz. :-p
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "~                                                                       ~"
echo -e "~      ${RED}A script written by ${UBlue}Micheal Garner${RED} for iPerf testing${NC}             ~"
echo "~                                                                       ~"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "
echo -e "${BRed}Please ensure you have enabled ${BGreen}'service udp-small-servers'${BRed} on your device${NC}"
echo " "
# read the IP variable value from user.
read -p "Please enter the IP address of the device: " IP

# Check if string is empty using -z.
if [[ -z "$IP" ]]; then
   printf '%s\n' "No IP address entered, Please re-run the script."
   exit 1
else
# If IP is not empty show what the user typed in and continue to run iPerf
   echo " "
   printf "You entered %s " "$IP"
   echo " -  Running iPerf on UDP port 7 at 10Mb\s"
   echo " "
   iperf -c $IP -p 7 -u -t 10 -b 10M
   echo " "
   echo -e "${BIBlue}-------------------------------------------------------------"
   echo -e "${BIBlue}-        Test complete, please check the results.           -"
   echo -e "${BIBlue}-------------------------------------------------------------"
fi
