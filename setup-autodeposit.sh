#!/bin/bash
cd~
touch /root/autodeposit.sh
echo "#!/bin/bash" | tee -a /root/autodeposit.sh
yarn --cwd ~/ironfish/ironfish-cli/ start:once deposit | tee -a /root/logs-ironfish/logfile.log
yarn --cwd ~/ironfish/ironfish-cli/ start:once config:get blockGraffiti | tee -a /root/autodeposit.sh
yarn --cwd ~/ironfish/ironfish-cli/ start:once deposit | tee -a /root/autodeposit.sh
mkdir logs-ironfish
touch /root/logs-ironfish/logfile.log
* * * * * root /root/autodeposit.sh | tee -a /root/logs-ironfish/logfile.log
# tail -F /root/logs-ironfish/logfile.log
