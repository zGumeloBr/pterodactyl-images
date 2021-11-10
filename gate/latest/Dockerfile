FROM golang:1.15-alpine

LABEL author="zGumeloBr"

WORKDIR /home/container

RUN         apk add --update --no-cache ca-certificates curl ffmpeg git openssl sqlite tar tzdata \
				&& adduser --disabled-password --home /home/container container \
                && wget -qO/bin/grpc_health_probe https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/0.3.2/grpc_health_probe-linux-amd64 \
                && chmod +x /bin/grpc_health_probe

COPY go.mod go.mod
COPY go.sum go.sum
COPY cmd cmd/
COPY pkg pkg/
COPY gate.go ./
COPY entrypoint.sh ./

RUN go build -a -o gate gate.go

CMD ["/bin/ash", "/entrypoint.sh"]
