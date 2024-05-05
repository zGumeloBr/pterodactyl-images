FROM        ubuntu:22.04

LABEL       author="zGumeloBr" maintainer="yan.mf@outlook.com"

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'

RUN     apt update && apt upgrade -y \
	&& apt install -y gcc g++ libgcc1 libc++-dev gdb libc6 git wget curl tar zip unzip binutils xz-utils liblzo2-2 cabextract iproute2 net-tools netcat telnet\
    	libfontconfig locales ffmpeg gnupg2 apt-transport-https software-properties-common ca-certificates tzdata gcc-multilib\
	&& update-locale lang=en_US.UTF-8 \
	&& dpkg-reconfigure --frontend noninteractive locales \
	&& useradd -m -d /home/container -s /bin/bash container
	
USER        container
ENV         USER=container HOME=/home/container
ENV         DEBIAN_FRONTEND noninteractive

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]