FROM onichandame/ide:latest

RUN apk add plasma xrdp xorgxrdp kde-applications-base

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
