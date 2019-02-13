FROM dreadlabs/php-lib:7.3-base

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

ENV COMPOSER_VERSION=1.8.4 \
    COMPOSER_INSTALL_DIR=/usr/local/bin \
    COMPOSER_FILENAME=composer \
    COMPOSER_CACHE_DIR=/var/cache/composer

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y git graphviz php7.3-phpdbg php-xdebug unzip \
    && rm -rf /var/lib/apt/lists/*

ADD rootfs/ /

RUN /usr/local/bin/install-composer.sh \
    && rm /usr/local/bin/install-composer.sh \
    && /usr/local/bin/install-deptrac.sh \
    && rm /usr/local/bin/install-deptrac.sh \
    && /usr/local/bin/install-tools.sh \
    && rm /usr/local/bin/install-tools.sh

CMD ["composer", "--version"]
