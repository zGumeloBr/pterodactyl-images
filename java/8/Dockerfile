FROM       azul/zulu-openjdk-alpine:8

LABEL       author="zGumeloBr" maintainer="yan.mf@outlook.com"

LABEL       org.opencontainers.image.source="https://github.com/zGumeloBr/pterodactyl-images"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache curl ca-certificates openssl git tar sqlite fontconfig freetype tzdata iproute2 libstdc++6 ttf-dejavu
RUN         adduser -D -h /home/container container
 
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/ash", "/entrypoint.sh"]
