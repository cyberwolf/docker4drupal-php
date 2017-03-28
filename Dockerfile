FROM wodby/drupal-php:7.1-2.0.0

RUN apk -U add nodejs-lts && \
    apk del --purge \
            *-dev \
            autoconf \
            build-base \
            cmake \
            libtool && \

        rm -rf \
            /var/cache/apk/* \
            /tmp/*

RUN npm install -g eslint@3.5.0

RUN npm install -g less
