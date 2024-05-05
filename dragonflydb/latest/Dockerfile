FROM        busybox:1.35.0-uclibc as busybox
FROM        docker.dragonflydb.io/dragonflydb/dragonfly

LABEL       author="zGumeloBr" maintainer="yan.mf@outlook.com"
    
LABEL       org.opencontainers.image.source="https://github.com/zGumeloBr/pterodactyl-images"
LABEL       org.opencontainers.image.licenses=MIT

COPY        COPY --from=busybox /bin/bash /bin/bash
    
RUN         apt -y install iproute2

RUN         useradd -m -d /home/container -s /bin/bash container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container
    
COPY        ./entrypoint.sh /entrypoint.sh
    
CMD         ["/bin/bash", "/entrypoint.sh"]