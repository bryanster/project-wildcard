#configure router 
echo 'net.inet.ip.forwarding=1' >> /etc/sysctl.conf
cp ./config/pf.conf /etc/pf.conf
