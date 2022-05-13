#!/bin/bash
touch /root/logfile.log
echo ""*/10 * * * * root yarn --cwd ~/ironfish/ironfish-cli/ start deposit --confirm" | tee -a /root/logfile.log" | tee -a /etc/crontab
mkdir /root/logs-ironfish
touch /root/logs-ironfish/logfile.log
systemctl restart cron
# tail -F /root/logfile.log
