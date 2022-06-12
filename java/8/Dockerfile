FROM       azul/zulu-openjdk-debian:8

LABEL       author="zGumeloBr" maintainer="yan.mf@outlook.com"

LABEL       org.opencontainers.image.source="https://github.com/zGumeloBr/pterodactyl-images"
LABEL       org.opencontainers.image.licenses=MIT

RUN apt-get update -y \
 && apt-get install -y curl ca-certificates openssl git tar sqlite3 fontconfig libfreetype6 tzdata iproute2 libstdc++6 \
 && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen \
 && useradd -d /home/container -m container
 
USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
