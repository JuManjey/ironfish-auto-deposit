#!/bin/bash
touch /root/logfile.log
STR="*/10 * * * * root yarn --cwd ~/ironfish/ironfish-cli/ start deposit --confirm"
echo "$STR | tee -a /root/logfile.log" | tee -a /etc/crontab
systemctl restart cron
# tail -F /root/logfile.log
