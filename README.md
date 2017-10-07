# php-lib

## Description

PHP **commandline-only** images with some pre-installed extensions for PHP library programming.

### Available extensions

  * ast
  * bcmath
  * cli
  * curl
  * gd
  * gmagick
  * gmp
  * intl
  * json
  * mbstring
  * mcrypt
  * soap
  * sqlite3
  * xml
  * xsl
  * zip

### Flavours

  - `base`: base image for general usage
  - `dev`: development image with `composer`, `xdebug`/`phpdbg` and `php-dbg`, a custom
    command line wrapper for debugging in PhpStorm

## Makefile

Tested with GNU Make 3.81. `VERSION` environment variable defaults to `latest`.
`BASE` environment variable defaults to `base`.

### Build

    make build [-e CONTEXT=base|dev VERSION=x.y]

### Release

    make release [-e CONTEXT=base|dev VERSION=x.y]

## License

[MIT](LICENSE)

