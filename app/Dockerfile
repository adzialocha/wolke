FROM nextcloud:fpm-alpine

RUN set -ex; \
    \
    apk add --no-cache \
        supervisor \
    ;

RUN mkdir -p \
    /var/log/supervisord \
    /var/run/supervisord \
    ;

COPY supervisord.conf /etc/supervisor/supervisord.conf

COPY redis.config.php /usr/src/nextcloud/config/redis.config.php

ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
