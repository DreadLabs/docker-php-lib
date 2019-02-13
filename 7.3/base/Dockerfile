FROM dreadlabs/php-base:7.3-cli

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y php7.3-bcmath php7.3-gd php7.3-gmp php7.3-soap php7.3-xml php7.3-zip php-ast php-curl php-gmagick \
    && rm -rf /var/lib/apt/lists/*

ADD rootfs/ /

CMD ["php", "--version"]
