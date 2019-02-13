#!/bin/sh

set -e

[ -z "$DEBUG" ] || set -x

# -----------------------------------------------------------------------------
# Installs a (PHP) tool
#
# Arguments:
#   URL of tool (e.g. http://static.pdepend.org/php/2.5.0/pdepend.phar)
#   path to local binary file (e.g. /usr/local/bin/pdepend)
# Returns:
#   None
# -----------------------------------------------------------------------------
install_tools__install() {
    URL="$1"
    BIN="$2"

    curl --location --show-error ${URL} -o ${BIN}
    chmod +x ${BIN}
}

# PHP QA tools
install_tools__install   http://static.pdepend.org/php/2.5.0/pdepend.phar \
                            /usr/local/bin/pdepend
install_tools__install   https://phar.phpunit.de/phploc-4.0.1.phar \
                            /usr/local/bin/phploc
install_tools__install   https://phar.phpunit.de/phpcpd-4.1.0.phar \
                            /usr/local/bin/phpcpd
install_tools__install   http://static.phpmd.org/php/2.6.0/phpmd.phar \
                            /usr/local/bin/phpmd
install_tools__install   https://github.com/squizlabs/PHP_CodeSniffer/releases/download/3.4.0/phpcs.phar \
                            /usr/local/bin/phpcs
install_tools__install   https://github.com/squizlabs/PHP_CodeSniffer/releases/download/3.4.0/phpcbf.phar \
                            /usr/local/bin/phpcbf
install_tools__install   https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v2.14.1/php-cs-fixer.phar \
                            /usr/local/bin/php-cs-fixer

# A nice REPL, @see http://psysh.org/
install_tools__install   https://github.com/bobthecow/psysh/releases/download/v0.9.9/psysh-v0.9.9.tar.gz \
                            /usr/local/bin/psysh.tar.gz
{
    cd /usr/local/bin;
    tar xzf psysh.tar.gz;
    rm -f psysh.tar.gz;
    chmod +x /usr/local/bin/psysh;
}
