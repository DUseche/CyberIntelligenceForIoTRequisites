#!/bin/sh

ethtool -K wlan0 tso off
ethtool -K wlan0 gro off
ethtool -K wlan0 lro off
ethtool -K wlan0 gso off
ethtool -K wlan0 rx off
ethtool -K wlan0 tx off
ethtool -K wlan0 sg off
ethtool -K wlan0 rxvlan off
ethtool -K wlan0 txvlan off

suricata -c /etc/suricata/suricata.yaml -i wlan0 --init-errors-fatal
