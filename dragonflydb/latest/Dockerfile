FROM        docker.dragonflydb.io/dragonflydb/dragonfly

LABEL       author="zGumeloBr" maintainer="yan.mf@outlook.com"
    
LABEL       org.opencontainers.image.source="https://github.com/zGumeloBr/pterodactyl-images"
LABEL       org.opencontainers.image.licenses=MIT
    
RUN         apt -y update && \
            apt -y upgrade && \
            apt -y install iproute2 && \
            useradd -d /home/container -m container -s /bin/bash
     
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container
    
COPY        ./entrypoint.sh /entrypoint.sh
    
CMD         ["/bin/bash", "/entrypoint.sh"]