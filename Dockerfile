FROM openlistteam/openlist:v4.1.3-lite

LABEL MAINTAINER="OpenList"

WORKDIR /opt/openlist/

COPY --chmod=644 config.json data/

USER root
RUN chown -R openlist:openlist /opt/openlist

USER openlist

ENV UMASK=022
VOLUME /opt/openlist/data/
EXPOSE 5244 5244
CMD [ "/entrypoint.sh" ]
