FROM onichandame/ide:latest

# Desktop Environment
RUN apk add plasma xrdp xorgxrdp kde-applications-base 

# CLI Environment
RUN apk add sudo openssl
## Terminal Multiplexer
RUN apk add --update --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ zellij

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
