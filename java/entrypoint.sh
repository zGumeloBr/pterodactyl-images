#!/bin/bash
cd /home/container

export INTERNAL_IP=`ip route get 1 | awk '{print $NF;exit}'`

MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo -e "\033[1;32m:/home/container$ ${MODIFIED_STARTUP}\033[0m"

eval ${MODIFIED_STARTUP}
