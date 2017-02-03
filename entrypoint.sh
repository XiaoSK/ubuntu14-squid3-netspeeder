#!/bin/bash

nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &

htpasswd -bc /usr/etc/passwd "${USERNAME}" "${PASSWORD}"

/usr/sbin/squid3 -N -z -F
/usr/sbin/squid3 -N -d 0
