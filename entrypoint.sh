#!/bin/bash

nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &

# Please Set Squid Proxy Username and Password in ENV
htpasswd -bcd /etc/squid3/auth "sp" "${PASSWORD}"

/usr/sbin/squid3 -N -z -F
/usr/sbin/squid3 -N -d 0
