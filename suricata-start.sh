#!/bin/sh

ethtool -K enp0s3 tso off
ethtool -K enp0s3 gro off
ethtool -K enp0s3 lro off
ethtool -K enp0s3 gso off
ethtool -K enp0s3 rx off
ethtool -K enp0s3 tx off
ethtool -K enp0s3 sg off
ethtool -K enp0s3 rxvlan off
ethtool -K enp0s3 txvlan off

suricata -c /etc/suricata/suricata.yaml -i enp0s3 --init-errors-fatal