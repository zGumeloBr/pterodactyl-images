FROM        azul/zulu-openjdk-debian:16

LABEL       author="zGumeloBr"

RUN apt-get update -y \
 && apt-get install -y curl ca-certificates openssl git tar sqlite3 fontconfig tzdata iproute2 libstdc++6 \
 && useradd -d /home/container -m container
 
USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
