FROM --platform=$TARGETOS/$TARGETARCH golang:1.15-slim

LABEL author="zGumeloBr"

RUN     apt update -y \
	&& apt install -y ca-certificates curl wget ffmpeg git openssl sqlite unzip tar tzdata
	&& adduser --disabled-password --home /home/container container
	
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY ./../entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]
