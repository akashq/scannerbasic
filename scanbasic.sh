#!/bin/bash
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
WHITE='\033[0;37m'

toilet scan

rnot=$(whoami)
printf "${BLUE}This script needs a browser to open the details\n"
printf "${WHITE}> dns-lookup\n> net-craft\n> domaintools\n\n"
printf "${GREEN}Enter url(without http/https): "
read url

x-www-browser https://www.robtex.com/dns-lookup/$url &
x-www-browser http://toolbar.netcraft.com/site_report?url=$url &
x-www-browser http://whois.domaintools.com/$url &


sleep 2
clear
printf "${RED}Do not close this window till you need the info!\n"
