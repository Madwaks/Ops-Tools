FROM alpine:3.11

ARG CADDY_OS="linux"
ARG CADDY_ARCH="amd64"
ARG CADDY_LICENCE="personal"
ARG CADDY_TELEMETRY="off"

RUN apk update \
 && apk add --update bash \
 && apk add --no-cache --virtual dl_deps curl ca-certificates \
 && update-ca-certificates \
 && rm -rf /var/cache/apk/*

RUN mkdir -p /app/config \
 && mkdir -p /app/logs/caddy \
 && mkdir -p /app

RUN curl -L \
  "https://caddyserver.com/api/download?os=${CADDY_OS}&arch=${CADDY_ARCH}&license=${CADDY_LICENCE}&telemetry=${CADDY_TELEMETRY}" \
  -o /app/caddy

COPY scripts/docker-run.sh /app/.

RUN chmod 755 /app/caddy /app/docker-run.sh

ENTRYPOINT ["/app/docker-run.sh"]
CMD []
