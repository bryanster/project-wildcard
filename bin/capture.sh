#!/bin/ksh
tcpdump -i em0 -w /scan/wan.pcap
tcpdump -i em1 -w /scan/lan.pcap
