FROM golang:1.15-alpine

LABEL author="zGumeloBr"

WORKDIR /home/container

RUN         apk add --update --no-cache ca-certificates curl wget ffmpeg git openssl sqlite unzip tar tzdata \
				&& adduser --disabled-password --home /home/container container

COPY ./../entrypoint.sh /entrypoint.sh

CMD ["/bin/ash", "/entrypoint.sh"]
