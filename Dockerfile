FROM nextcloud:20.0.6-fpm-alpine

RUN apk add --no-cache supervisor

COPY supervisord.conf /

ENV NEXTCLOUD_UPDATE=1

USER www-data

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
