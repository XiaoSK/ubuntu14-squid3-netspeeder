#!/bin/bash

nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &

/usr/sbin/squid -N -d 0





