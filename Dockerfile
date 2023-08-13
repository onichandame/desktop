FROM onichandame/ide:latest

RUN apk add plasma xrdp xorgxrdp kde-applications-base sudo openssl

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
