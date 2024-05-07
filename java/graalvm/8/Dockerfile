FROM        ghcr.io/graalvm/jdk:java8

LABEL       author="zGumeloBr" maintainer="yan.mf@outlook.com"
    
LABEL       org.opencontainers.image.source="https://github.com/zGumeloBr/pterodactyl-images"
LABEL       org.opencontainers.image.licenses=MIT
    
RUN         microdnf update \
            && microdnf install -y curl ca-certificates openssl git tar sqlite fontconfig tzdata iproute gcc gcc-c++ freetype libstdc++ lsof \
            && microdnf clean all \
            && adduser --home-dir /home/container container
     
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container
    
COPY        ./entrypoint.sh /entrypoint.sh
    
CMD         ["/bin/bash", "/entrypoint.sh"]