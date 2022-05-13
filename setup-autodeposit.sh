#!/bin/bash
touch /root/logfile.log
echo "*/10 * * * * root yarn --cwd ~/ironfish/ironfish-cli/ start deposit --confirm" | tee -a /etc/crontab
systemctl restart cron
# tail -F /root/logfile.log
