#configure router 
echo 'net.inet.ip.forwarding=1' >> /etc/sysctl.conf
echo "what is your wan interface"
read wanint
echo "what is your lan interface"
read lanint
rcctl enable dhcpd
rcctl set dhpd flags $lanint
echo "inet 192.168.1.254 255.255.255.0 NONE" > /etc/hostname.$lanint
echo "wan = $wanint" > /etc/pf.conf
echo "lan = $lanint" >> /etc/pf.conf
cat ./config/pf.conf >> /etc/pf.conf
