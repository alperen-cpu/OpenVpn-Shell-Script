apt update -y
apt install wget -y
wget https://dev.mysql.com/get/mysql-apt-config_0.8.20-1_all.deb
apt install ./mysql-apt-config_*_all.deb
dpkg-reconfigure mysql-apt-config
apt update -y
apt install mysql-server -y
systemctl enable --now mysql
systemctl status mysql
mysql_secure_installation