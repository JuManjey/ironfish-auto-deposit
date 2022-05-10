#!/bin/bash
cd~
touch /root/autodeposit.sh
chmod +x /root/autodeposit.sh
echo "#!/bin/bash" | tee -a /root/autodeposit.sh
echo "yarn --cwd ~/ironfish/ironfish-cli/ start:once deposit" | tee -a /root/logs-ironfish/logfile.log
echo "yarn --cwd ~/ironfish/ironfish-cli/ start:once config:get blockGraffiti" | tee -a /root/autodeposit.sh
echo "yarn --cwd ~/ironfish/ironfish-cli/ start:once deposit" | tee -a /root/autodeposit.sh
mkdir /root/logs-ironfish
touch /root/logs-ironfish/logfile.log
echo "* * * * * root /root/autodeposit.sh | tee -a /root/logs-ironfish/logfile.log" | tee -a /etc/crontab
systemctl restart cron
# tail -F /root/logs-ironfish/logfile.log
