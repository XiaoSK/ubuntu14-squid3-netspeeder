#!/bin/bash

nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &

htpasswd -bcd /etc/squid3/auth "${USERNAME}" "${PASSWORD}"
cat /etc/squid3/auth

/usr/sbin/squid3 -N -z -F
/usr/sbin/squid3 -N -d 0

tail -f /var/log/squid3/cache.log
