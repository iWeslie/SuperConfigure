# Test Download Speed
wget -qO- bench.sh | bash

# Test Download Speed in China
wget https://raw.githubusercontent.com/oooldking/script/master/superbench.sh
chmod +x superbench.sh
./superbench.sh

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
systemctl restart sshd.service


# Deploy SS
wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks.sh
chmod +x shadowsocks.sh
./shadowsocks.sh 2>&1 | tee shadowsocks.log


# Add script to files
echo "echo 3 > /proc/sys/net/ipv4/tcp_fastopen" >> /etc/rc.local
echo "net.ipv4.tcp_fastopen = 3" >> /etc/sysctl.conf


# Deploy serverspeeder
wget --no-check-certificate -O rskernel.sh https://raw.githubusercontent.com/uxh/shadowsocks_bash/master/rskernel.sh && bash rskernel.sh
yum install net-tools -y && wget --no-check-certificate -O appex.sh https://raw.githubusercontent.com/0oVicero0/serverSpeeder_Install/master/appex.sh && bash appex.sh install

# BBR Accelerate
wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh
chmod +x bbr.sh
./bbr.sh

echo "net.core.default_qdisc=fq" >> /etc/sysctl.conf
echo "net.ipv4.tcp_congestion_control=bbr" >> /etc/sysctl.conf
sysctl -p
sysctl net.ipv4.tcp_available_congestion_control

# Add user for Shadowsocks
vi /etc/shadowsocks.json
firewall-cmd --add-port 9993/tcp --permanent
firewall-cmd --add-port 9993/tcp
/etc/init.d/shadowsocks restart
