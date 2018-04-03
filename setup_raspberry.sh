#!/bin/sh

#Update and upgrade
apt-get update && apt-get upgrade -y
#Dependencies install
apt-get install -y automake libtool make gcc libssl-dev libjansson-dev python3 python3-pip ethtool unzip sqlite3 software-properties-common
#Radare2
cd  ..
git clone https://github.com/radare/radare2
cd radare2
sys/install.sh
cd ..
#Yara
chmod 777 -R CyberIntelligenceForIoTRequisites
cd CyberIntelligenceForIoTRequisites
wget https://github.com/VirusTotal/yara/archive/v3.7.1.zip
unzip v3.7.1.zip
chmod 777 -R yara-3.7.1
rm yara-3.7.1/Makefile.am yara-3.7.1/libyara/Makefile.am yara-3.7.1/configure.ac yara-3.7.1/libyara/modules/module_list
cp YaraFiles/Makefile.am yara-3.7.1 
cp YaraFiles/configure.ac yara-3.7.1 
cp YaraFiles/libyara/Makefile.am yara-3.7.1/libyara/Makefile.am 
cp YaraFiles/libyara/modules/module_list yara-3.7.1/libyara/modules/ 
cp YaraFiles/libyara/modules/r2.c yara-3.7.1/libyara/modules/
cd yara-3.7.1
./bootstrap.sh
./configure --enable-cuckoo
make
make install
#Suricata
cd ..
add-apt-repository -y ppa:oisf/suricata-stable
apt-get update
apt-get install -y suricata 
mkdir /var/log/suricata
mkdir /etc/suricata
rm /etc/suricata/suricata.yaml
rm /etc/rsyslog.conf
cp rsyslog.conf /etc
cp suricata.yaml /etc/suricata
cp file-extract.rules /etc/suricata/rules
#Sentinel
cd ..
git clone https://gitlab.com/Useche/PGRCyberintelligence
chmod 777 -R PGRCyberintelligence
pip3 install pymisp
#Openvas host: localhost:443
apt update && sudo apt upgrade -y
add-apt-repository -y ppa:mrazavi/openvas
apt update
#apt install openvas -y
#openvas-nvt-sync
#openvas-scapdata-sync
#openvas-certdata-sync
#service openvas-scanner restart
#service openvas-manager restart
#openvasmd --rebuild --progress
#Kismet
apt-get update
apt-get install -y kismet
