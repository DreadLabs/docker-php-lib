FROM dreadlabs/php-lib:7.0-base

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

ENV COMPOSER_VERSION=1.5.2 \
    COMPOSER_INSTALL_DIR=/usr/local/bin \
    COMPOSER_FILENAME=composer \
    COMPOSER_CACHE_DIR=/var/cache/composer

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y git graphviz php7.0-phpdbg php7.0-zip php-xdebug unzip \
    && rm -rf /var/lib/apt/lists/*

ADD rootfs/ /

RUN /usr/local/bin/install-composer.sh \
    && rm /usr/local/bin/install-composer.sh \
    && /usr/local/bin/install-deptrac.sh \
    && rm /usr/local/bin/install-deptrac.sh

CMD ["composer", "--version"]
