#!/bin/sh

if [ -z "$SUEXEC_USER" ]; then
    echo "[!!!] Please set the SUEXEC_USER environment variable."
    exit 0
fi

mkdir -p -m 0770 /var/cache/composer && chown "$SUEXEC_USER":"$SUEXEC_USER" /var/cache/composer
