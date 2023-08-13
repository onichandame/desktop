FROM alpine:3.18

# Desktop Environment
RUN apk add plasma xrdp xorgxrdp kde-applications-base 

# CLI Environment
RUN apk add sudo openssl
RUN echo "%wheel    ALL=(ALL) ALL" > /etc/sudoers.d/wheel

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
