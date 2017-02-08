#!/bin/bash

nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &

# Please Set Squid Proxy Username and Password in ENV
sed -i "s/USER_LIST_PLACEHOLDER/${USERNAME}/g" /etc/squid3/squid.conf
cat /etc/squid3/squid.conf
htpasswd -bcd /etc/squid3/auth "${USERNAME}" "${PASSWORD}"

/usr/sbin/squid3 -N -z -F
/usr/sbin/squid3 -N -d 0
