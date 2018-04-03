#!/bin/sh

ethtool -K enxb827ebeba6f7 tso off
ethtool -K enxb827ebeba6f7 gro off
ethtool -K enxb827ebeba6f7 lro off
ethtool -K enxb827ebeba6f7 gso off
ethtool -K enxb827ebeba6f7 rx off
ethtool -K enxb827ebeba6f7 tx off
ethtool -K enxb827ebeba6f7 sg off
ethtool -K enxb827ebeba6f7 rxvlan off
ethtool -K enxb827ebeba6f7 txvlan off

suricata -c /etc/suricata/suricata.yaml -i enxb827ebeba6f7 --init-errors-fatal
