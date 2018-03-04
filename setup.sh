#!/bin/sh

apt-get update && apt-get upgrade -y
apt-get install -y automake libtool make gcc libssl-dev libjansson-dev python3 python3-pip ethtool unzip
cd  ..
git clone https://github.com/radare/radare2
cd radare2
sys/install.sh
cd ..
cd CyberIntelligenceForIoTRequisites/yara
./bootstrap.sh
./configure --enable-cuckoo
make
make install
cd ..
add-apt-repository ppa:oisf/suricata-stable
apt-get update
apt-get install -y suricata 
mkdir /var/log/suricata
mkdir /etc/suricata
cd ..
git clone https://gitlab.com/Useche/PGRCyberintelligence
pip3 install pymisp
