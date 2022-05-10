#!/bin/bash
cd~
mkdir logs-ironfish
touch /root/logs-ironfish/logfile.log
1 * * * * /root/autodeposit.sh | tee -a /root/logs-ironfish/logfile.log
