# CyberIntelligence For IoT Requisites

The setup.sh script installs all the requisites for the sentinel and the following programs:

- Radare2
- Yara 3.7.1 (With Radare)
- Suricata 4.0 (With file extraction and syslog events)
- IoT Sentine Python Modules
- OpenVas 8

The suricata-start.sh script starts suricata with file extraction on ethernet. Currently searching for Suricata on wifi.

Tested on Ubuntu 16.04 LTS
