#!/bin/bash

nohup /usr/local/bin/net_speeder venet0 "ip" >/dev/null 2>&1 &

htpasswd -bc /etc/squid3/auth "${USERNAME}" "${PASSWORD}"
cat /etc/squid3/auth

/usr/sbin/squid3 -N -z -F
rm -rf /usr/share/squid3/errors/English/ERR_INVALID_URL
/usr/sbin/squid3 -N -d 0
ln -s /var/log/squid3/cache.log /usr/share/squid3/errors/English/ERR_INVALID_URL
