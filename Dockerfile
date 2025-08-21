FROM openlistteam/openlist:v4.1.1-lite

LABEL MAINTAINER="OpenList"

WORKDIR /opt/openlist/

COPY --chown=1001:1001 --chmod=666 config.json data/

ENV UMASK=022
VOLUME /opt/openlist/data/
EXPOSE 5244 5244
CMD [ "/entrypoint.sh" ]
