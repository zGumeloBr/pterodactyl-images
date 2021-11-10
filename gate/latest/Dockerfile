FROM golang:1.15-alpine

LABEL author="zGumeloBr"

WORKDIR /home/container

RUN         apk add --update --no-cache ca-certificates curl wget ffmpeg git openssl sqlite unzip tar tzdata \
				&& adduser --disabled-password --home /home/container container \
                && wget https://github.com/minekube/gate/archive/refs/heads/master.zip \
                && unzip master.zip

COPY go.mod go.mod
COPY go.sum go.sum
COPY cmd cmd/
COPY pkg pkg/
COPY gate.go ./
COPY entrypoint.sh ./

RUN go build -a -o gate gate.go

CMD ["/bin/ash", "/entrypoint.sh"]
