FROM lsiobase/alpine:3.12

LABEL maintainer="FaintGhost"

ENV WEBUI_VERSION=v1.6.1-update1

RUN apk add --no-cache \
    curl \
    transmission-cli \
    transmission-daemon && \
    curl -fSL https://github.com/ronggang/transmission-web-control/archive/${WEBUI_VERSION}.zip -o twc.zip && \
    unzip twc.zip -d /tmp && \
    cp -rf /usr/share/transmission/web/index.html /usr/share/transmission/web/index.original.html && \
    cp -rf /tmp/transmission-web-control-1.6.1-update1/src/* /usr/share/transmission/web/ && \
    rm -rf /tmp/* && \
    apk del curl

ENV TZ=Europe/Berlin
ENV GUID=0
ENV PUID=0

COPY /root/ /

EXPOSE 9091 45555
VOLUME /config /downloads /watch
