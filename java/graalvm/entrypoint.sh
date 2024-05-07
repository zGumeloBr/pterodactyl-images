#!/bin/bash
cd /home/container

export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`

java -version
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo -e "\033[0;36mSTARTUP: ${MODIFIED_STARTUP}\033[0m"

eval ${MODIFIED_STARTUP}
