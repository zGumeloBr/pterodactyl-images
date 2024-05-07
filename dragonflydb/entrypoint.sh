#!/bin/bash
cd /home/container

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo -e "\033[0;36mSTARTUP: ${MODIFIED_STARTUP}\033[0m"

${MODIFIED_STARTUP}
