FROM        azul/prime-debian:17

LABEL       author="zGumeloBr"

RUN apt-get update -y \
 && apt-get install -y curl ca-certificates openssl git tar sqlite3 fontconfig libfreetype6 tzdata iproute2 libstdc++6 \
 && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen \
 && useradd -d /home/container -m container
 
USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
