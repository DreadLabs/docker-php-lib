FROM dreadlabs/debian-base:stretch

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y php7.0-bcmath php7.0-cli php7.0-gd php7.0-gmp php7.0-intl php7.0-json php7.0-mbstring php7.0-mcrypt php7.0-soap php7.0-sqlite3 php7.0-xml php7.0-xsl php7.0-zip php-ast php-curl php-gmagick \
    && rm -rf /var/lib/apt/lists/*

ADD rootfs/ /

CMD ["php", "--version"]

