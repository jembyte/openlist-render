FROM openlistteam/openlist:latest-lite

LABEL MAINTAINER="OpenList"

WORKDIR /opt/openlist/

COPY --chmod=644 config.json data/

ENV PUID=0 PGID=0 UMASK=022
VOLUME /opt/openlist/data/
EXPOSE 5244 5244
CMD [ "/entrypoint.sh" ]
