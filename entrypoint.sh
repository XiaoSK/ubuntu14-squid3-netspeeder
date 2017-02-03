#!/bin/bash

nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &

htpasswd -bc /etc/squid3/auth "${USERNAME}" "${PASSWORD}"

/usr/sbin/squid3 -N -z -F
nohup /usr/sbin/squid3 -d 0 &
tail -f /var/log/squid3/cache.log
