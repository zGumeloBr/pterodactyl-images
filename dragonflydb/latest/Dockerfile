FROM        ubuntu:22.04

LABEL       author="zGumeloBr" maintainer="yan.mf@outlook.com"

ENV         DEBIAN_FRONTEND noninteractive

RUN     apt update && apt upgrade -y \
		&& apt install -y gcc g++ libgcc1 libc++-dev gdb libc6 git wget curl tar zip unzip binutils liblzo2-2 iproute2 net-tools netcat telnet\
    	gnupg2 apt-transport-https software-properties-common ca-certificates tzdata gcc-multilib

RUN 		useradd -d /home/container -m container
	
USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]