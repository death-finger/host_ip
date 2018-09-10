#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin


cd /root/host_ip
curl http://members.3322.org/dyndns/getip > ./address.txt

git commit -a -m "Updated"
git push origin master
