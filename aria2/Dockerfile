FROM alpine:3.14
LABEL maintainer="zhang.yaowei@live.com"

ENV ARIANG_VERSION 1.2.2

RUN apk update \
	&& apk add --no-cache --update bash curl \
	&& mkdir -p /config \
	&& mkdir -p /files \
	&& mkdir -p /downloads \
	&& apk add --no-cache --update aria2 \
	&& mkdir -p /aria2ng \
	&& cd /aria2ng \
	&& apk add --no-cache --update wget \
	&& wget -N --no-check-certificate https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VERSION}/AriaNg-${ARIANG_VERSION}.zip && unzip AriaNg-${ARIANG_VERSION}.zip && rm -rf AriaNg-${ARIANG_VERSION}.zip \
	&& apk del wget \
	&& apk add --update darkhttpd

COPY /files/* /files/

RUN chmod +x /files/*.sh

WORKDIR /
VOLUME ["/downloads"]
VOLUME ["/config"]

ENV RPC_SECRET=""

EXPOSE 6800
EXPOSE 6888
EXPOSE 6888/udp
EXPOSE 80

CMD ["/files/start.sh"]
