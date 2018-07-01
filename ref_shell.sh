# Test Download Speed
wget -qO- bench.sh | bash


# Modify SS Connection Port and Restart SSserver
vi /etc/shadowsocks-python/config.json
sudo ssserver -c /etc/shadowsocks-python/config.json -drestart


# Change SSH Login Port for CentOS 7 on Vultr
vi /etc/ssh/sshd_config
# SSH Port
# Port 13825  # the port you want to change it to
firewall-cmd --add-port 13825/tcp --permanent
firewall-cmd --add-port 13825/tcp
service sshd restart


# Deploy SS
wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh
chmod +x shadowsocks.sh
./shadowsocks.sh 2>&1 | tee shadowsocks.log


# Add script to files
echo "echo 3 > /proc/sys/net/ipv4/tcp_fastopen" >> /etc/rc.local
echo "net.ipv4.tcp_fastopen = 3" >> /etc/sysctl.conf


# Deploy serverspeeder
wget -N --no-check-certificate https://github.com/91yun/serverspeeder/raw/master/serverspeeder-v.sh && bash serverspeeder-v.sh CentOS 7.2 3.10.0-327.el7.x86_64 x64 3.11.20.5 serverspeeder_72327

# BBR Accelerate
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
chmod +x bbr.sh
./bbr.sh

echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
sysctl net.ipv4.tcp_available_congestion_control