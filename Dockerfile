FROM nextcloud:21.0.0-fpm-alpine

RUN apk add --no-cache supervisor

COPY supervisord.conf /
COPY config/* /usr/src/nextcloud/config/

ENV NEXTCLOUD_UPDATE=1

USER www-data

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
