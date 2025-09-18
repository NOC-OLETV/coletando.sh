#!/bin/bash
apt install zabbix-agent
sed -i 's/Server=127.0.0.1/Server=200.188.244.242/' /etc/zabbix/zabbix_agentd.conf
sed -i 's/# ListenPort=10050/ListenPort=10050/' /etc/zabbix/zabbix_agentd.conf
systemctl restart zabbix-agent.service 
chmod 777 /usr/local/src/coletando.sh
chmod 777 /usr/local/src/gera_oid.txt
