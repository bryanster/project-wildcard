#configure router 
echo 'net.inet.ip.forwarding=1' >> /etc/sysctl.conf
echo "what is your wan interface"
read wanint
echo "what is your lan interface"
read lanint
echo "wan = $wanint" > /etc/pf.conf
echo "lan = $lanint" >> /etc/pf.conf
cat./config/pf.conf >> /etc/pf.conf
