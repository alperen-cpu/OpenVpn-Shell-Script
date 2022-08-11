#!/bin/bash
# Author: Alperen Sah
#Date 09.08.2022
clear
date
echo -e '\033[1mKurulum Başlıyor\033[0m'
apt update
apt upgrade
apt install tzdata
dpkg-reconfigure tzdata
if
apt install -y bridge-utils dmidecode iptables iproute2 libc6 libffi7 libgcc-s1 liblz4-1 liblzo2-2 libmariadb3 libpcap0.8 libssl1.1 libstdc++6 zlib1g libsasl2-2 libsqlite3-0 net-tools python3-pkg-resources python3-migrate python3-sqlalchemy python3-mysqldb python3-ldap3 sqlite3 python3-netaddr python3-arrow python3-lxml python3-openssl python3-incremental libxmlsec1 libxmlsec1-openssl
apt update && apt -y install ca-certificates wget net-tools gnupg
wget -qO - https://as-repository.openvpn.net/as-repo-public.gpg | apt-key add -
echo "deb http://as-repository.openvpn.net/as/debian bullseye main">/etc/apt/sources.list.d/openvpn-as-repo.list
apt update && apt -y install openvpn-as
then
    echo -e '\033[1mKurulum Başarılı\033[0m'
else
    echo -e '\033[1mHata!\033[0m'
fi
