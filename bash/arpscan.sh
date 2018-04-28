#!/bin/bash

# -----------------------------
# Taufan Lubis
# www.taufanlubis.wordpress.com
# -----------------------------

echo "ARP scan"
echo ""

echo "Enter the wireless card name: "
read card

xterm -hold -e "sudo arp-scan --interface=$card --localnet"
