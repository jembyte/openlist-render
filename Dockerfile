FROM openlistteam/openlist:latest-lite

LABEL MAINTAINER="OpenList"

WORKDIR /opt/openlist/

ENV PUID=0 PGID=0 UMASK=022
VOLUME /opt/openlist/data/
EXPOSE 5244 5245
CMD [ "/entrypoint.sh" ]
