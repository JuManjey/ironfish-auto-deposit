#!/bin/bash
cd~
mkdir logs-ironfish
touch /root/logs-ironfish/logfile.log
* * * * * /root/autodeposit.sh | tee -a /root/logs-ironfish/logfile.log
