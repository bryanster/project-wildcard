#!/bin/ksh
#configure router 
echo 'net.inet.ip.forwarding=1' >> /etc/sysctl.conf
echo "what is your wan interface"
read wanint
echo "what is your lan interface"
read lanint
rcctl enable dhcpd
rcctl set dhcpd flags $lanint
echo "inet 192.168.255.254 255.255.255.0 NONE" > /etc/hostname.$lanint
echo "wan = $wanint" > /etc/pf.conf
echo "lan = $lanint" >> /etc/pf.conf
cat ./config/pf.conf >> /etc/pf.conf
cp ./config/dhcpd.conf /etc/dhcpd.conf


#setup unbound
rcctl enable unbound
cp ./config/unbound.conf /var/unbound/etc/unbound.conf

#configure capture
mkdir /capture
chmod 777 /capture
echo "tcpdump -i $wanint -G 60 -w /capture/wan_%d-%m_%Y__%H_%M.pcap" >> ./bin/capture
echo "tcpdump -i $lanint -G 60 -w /capture/lan_%d-%m_%Y__%H_%M.pcap" >> ./bin/capture
cp ./bin/capture /bin/capture
chmod +x /bin/capture
