FROM nextcloud:34.0.4-fpm-alpine

RUN apk add --no-cache supervisor imagemagick ffmpeg

COPY supervisord.conf /
COPY cron.sh /cron.sh
COPY config/* /usr/src/nextcloud/config/
# FIXME see https://github.com/nextcloud/docker/issues/763
RUN touch /usr/local/etc/php/conf.d/redis-session.ini \
  && chown www-data:www-data /usr/local/etc/php/conf.d/redis-session.ini

ENV NEXTCLOUD_UPDATE=1

USER www-data

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
