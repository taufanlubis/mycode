#!/usr/bin/env python
from scapy.all import *
def PacketHandler(pkt) :
	if pkt.haslayer(Dot11) :
		if pkt.type == 0 and pkt.subtype == 4 :
			print "Client with MAC: %s probing for SSID: %s" % (pkt.addr2, pkt.info)
sniff(iface="mon0", prn = PacketHandler)
