#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin


cd /root/zabbix_ip
w3m -dump http://submit.apnic.net/templates/yourip.html | grep -P -o '(\d+\.){3}\d+' > ~/zabbix_ip/address.txt

git commit -a -m "Updated"
git push origin master
