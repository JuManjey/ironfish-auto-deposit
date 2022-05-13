#!/bin/bash
touch /root/logfile.log
STR="*/10 * * * * root yarn --cwd ~/ironfish/ironfish-cli/ start deposit --confirm | tee -a /root/logfile.log"
echo $STR | tee -a /etc/crontab
systemctl restart cron
# tail -F /root/logfile.log
