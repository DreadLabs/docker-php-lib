#!/bin/sh

set -e

[ -z "$DEBUG" ] || set -x

# -----------------------------------------------------------------------------
# Installs a QA tool
#
# Arguments:
#   URL of tool (e.g. http://static.pdepend.org/php/2.5.0/pdepend.phar)
#   path to local binary file (e.g. /usr/local/bin/pdepend)
# Returns:
#   None
# -----------------------------------------------------------------------------
install_qa_tools__install() {
    URL="$1"
    BIN="$2"

    curl --location --show-error ${URL} -o ${BIN}
    chmod +x ${BIN}
}

install_qa_tools__install   http://static.pdepend.org/php/2.5.0/pdepend.phar \
                            /usr/local/bin/pdepend
install_qa_tools__install   https://phar.phpunit.de/phploc-4.0.1.phar \
                            /usr/local/bin/phploc
install_qa_tools__install   https://phar.phpunit.de/phpcpd-3.0.1.phar \
                            /usr/local/bin/phpcpd
install_qa_tools__install   http://static.phpmd.org/php/2.6.0/phpmd.phar \
                            /usr/local/bin/phpmd
install_qa_tools__install   https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar \
                            /usr/local/bin/phpcs
install_qa_tools__install   https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar \
                            /usr/local/bin/phpcbf
install_qa_tools__install   https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v2.8.3/php-cs-fixer.phar \
                            /usr/local/bin/php-cs-fixer
