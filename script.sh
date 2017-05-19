#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/root/bin

sshpass -p zabbix ssh zabbix@192.168.1.1 -p 10022 "put [ip address get [/ip address find interface=GWBN] address]" > ./address.txt

git commit -a "Updated"
git push origin master
