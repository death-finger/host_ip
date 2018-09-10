#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin


cd /root/zabbix_ip
curl ipinfo.io/ip > ./address.txt

git commit -a -m "Updated"
git push origin master
