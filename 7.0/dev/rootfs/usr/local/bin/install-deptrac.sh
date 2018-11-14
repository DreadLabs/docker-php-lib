#!/bin/sh

curl --location --show-error https://github.com/sensiolabs-de/deptrac/releases/download/0.3.0/deptrac.phar -o /usr/local/bin/deptrac

chmod +x /usr/local/bin/deptrac
