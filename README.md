# CyberIntelligence For IoT Requisites

These are scripts for installing and starting the tools that support the IoT sentinel. 

The requisites of executing these scripts are:

- The operating system must be [Ubuntu 16.04 TLS](https://www.ubuntu.com/download/desktop) for desktop and [Ubuntu Mate 16.04 TLS](https://ubuntu-mate.org/download/) for Raspberry pi 3
- The username must be "sentinel"
- Change the net interfaces to the interfaces of your machine in:
  - suricata-start_wifi.sh
  - suricata-start_ethernet.sh
  - kismet-start.sh
  - kismet.conf
- Change the ip in the line "\*.local5@10.10.3.198:514" in the file rsyslog.conf to the ip of your OSSIM instance.

The setup.sh script installs all the requisites for the sentinel and the following programs:

- Radare2
- Yara 3.7.1 (With Radare)
- Suricata 4.0 (With file extraction and syslog events)
- IoT Sentinel Python Modules
- OpenVas 8
- Kismet

The suricata-start_ethernet.sh script starts suricata with file extraction on ethernet interface.
The suricata-start_wifi.sh script starts suricata with file extraction on wifi interface.
The kismet-start.sh script starts kismet on the interface defined in kismet.conf.

Tested on Ubuntu 16.04 LTS and Ubuntu Mate IoT 16.04
