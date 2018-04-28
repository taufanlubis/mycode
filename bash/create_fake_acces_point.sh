#!/bin/bash

#-------------------------------
# Taufan Lubis
# www.taufanlubis.wordpress.com
#-------------------------------

echo "Create fake acccess point"
echo ""
echo "Enter your wireless card: "
read card
echo "Enter your fake access point name"
read name

#check virtual card status
var=/sys/class/net/mon0/carrier
if [ "$var=1" ]; then
   #it's already exist, run airbase.
   xterm -hold -e "sudo airbase-ng -c 11 -e $name mon0"
else
   #it's not exist, create virtual wireless card
   xterm -hold -e "sudo airmon-ng start wlan0" &
fi
