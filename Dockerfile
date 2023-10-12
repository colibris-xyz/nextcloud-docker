FROM nextcloud:27.1.2-fpm-alpine

RUN apk add --no-cache supervisor imagemagick ffmpeg

COPY supervisord.conf /
COPY cron.sh /cron.sh
COPY config/* /usr/src/nextcloud/config/

ENV NEXTCLOUD_UPDATE=1

USER www-data

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
