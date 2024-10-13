FROM        docker.dragonflydb.io/dragonflydb/dragonfly

LABEL       author="zGumeloBr" maintainer="yan.mf@outlook.com"

ENV         DEBIAN_FRONTEND noninteractive

RUN 		useradd -d /home/container -m container
	
USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]